#!/usr/bin/env bash
# 仓库验证入口。任一检查失败即非零退出。
set -uo pipefail
cd "$(dirname "$0")/.."
fail=0
overlap_skipped=0
ok()   { echo "  PASS $*"; }
bad()  { echo "  FAIL $*"; fail=1; }

echo "[1] 无 PDF / sources 被 git 跟踪"
if git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  tracked=$(git ls-files | grep -Ei '(\.pdf$|^sources/)' || true)
  [ -z "$tracked" ] && ok "干净" || bad "被跟踪: $tracked"
  staged=$(git diff --cached --name-only | grep -Ei '(\.pdf$|^sources/)' || true)
  [ -z "$staged" ] && ok "暂存区干净" || bad "暂存区含: $staged"
else
  ok "(非 git 仓库,跳过)"
fi

SKILL=skills/sci-writing/SKILL.md
REFS=skills/sci-writing/references
echo "[2] SKILL.md frontmatter"
if [ -f "$SKILL" ]; then
  head -n 5 "$SKILL" | grep -q '^name: sci-writing$' && ok "name" || bad "缺 name: sci-writing"
  head -n 5 "$SKILL" | grep -q '^description: .\+' && ok "description" || bad "缺 description"
else
  bad "缺 $SKILL"
fi

echo "[3] references 与 SKILL.md 互相引用"
if [ -d "$REFS" ] && [ -n "$(ls "$REFS"/*.md 2>/dev/null)" ]; then
  for f in "$REFS"/*.md; do
    b=$(basename "$f")
    grep -q "$b" "$SKILL" && ok "SKILL.md 引用 $b" || bad "SKILL.md 未引用 $b"
  done
  for b in $(grep -o 'references/[0-9A-Za-z_-]*\.md' "$SKILL" | sed 's#references/##' | sort -u); do
    [ -f "$REFS/$b" ] && ok "存在 $b" || bad "SKILL.md 引用了不存在的 $b"
  done
else
  ok "(references 尚未创建,跳过)"
fi

echo "[4] README 本地链接"
if python3 scripts/check_readme_links.py README.md README.en.md; then
  ok "README 本地链接"
else
  bad "README 本地链接"
fi

echo "[5] 阅读笔记来源标注"
found=0
for f in notes/*/*.md; do
  [ -f "$f" ] || continue
  found=1
  head -n 5 "$f" | grep -q '^> 来源' && ok "$f" || bad "$f 缺 '> 来源:' 标注"
done
[ $found = 1 ] || ok "(暂无 notes,跳过)"

echo "[6] 与原书文本重合检查"
if overlap_output=$(python3 scripts/check_overlap.py notes skills); then
  printf '%s\n' "$overlap_output"
  if printf '%s\n' "$overlap_output" | grep -q '^SKIPPED:'; then
    overlap_skipped=1
    echo "  SKIPPED 重合检查未执行（缺少 sources/text/）"
  else
    ok "overlap"
  fi
else
  printf '%s\n' "$overlap_output"
  bad "overlap"
fi

echo "[7] 公开隐私扫描"
# 扫描会随仓库公开发布的说明、技能及回归输出；tests/scripts 的 fixture 与
# 扫描器规则本身含刻意风险样例，不属于发布面。扫描器内部仍会排除 .git 与 sources。
public_paths=()
for path in README.md README.en.md AGENTS.md CHANGELOG.md docs notes skills tests/regression; do
  [ -e "$path" ] && public_paths+=("$path")
done
if [ ${#public_paths[@]} -eq 0 ]; then
  ok "(无公开文本可扫描,跳过)"
elif python3 scripts/check_public_privacy.py "${public_paths[@]}"; then
  ok "公开文本无隐私风险"
else
  bad "发现公开隐私风险"
fi

echo
if [ "$fail" = 0 ]; then
  [ "$overlap_skipped" = 1 ] && echo "verify: PASS (overlap skipped)" || echo "verify: PASS"
else
  echo "verify: FAIL"
  exit 1
fi
