#!/usr/bin/env bash
# 仓库验证入口。任一检查失败即非零退出。
set -uo pipefail
cd "$(dirname "$0")/.."
fail=0
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

echo "[4] 来源标注"
found=0
for f in notes/*/*.md "$REFS"/*.md; do
  [ -f "$f" ] || continue
  found=1
  head -n 5 "$f" | grep -q '^> 来源' && ok "$f" || bad "$f 缺 '> 来源:' 标注"
done
[ $found = 1 ] || ok "(暂无 notes/references,跳过)"

echo "[5] 与原书文本重合检查"
python3 scripts/check_overlap.py notes skills && ok "overlap" || bad "overlap"

echo
[ $fail = 0 ] && echo "verify: PASS" || { echo "verify: FAIL"; exit 1; }
