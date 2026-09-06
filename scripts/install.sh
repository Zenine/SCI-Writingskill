#!/usr/bin/env bash
# 一行安装:把 skills/sci-writing 装到本机 agent 的 skills 目录。
#   curl -fsSL https://raw.githubusercontent.com/Zenine/SCI-Writingskill/main/scripts/install.sh | bash
# 可选环境变量 / 参数:
#   TARGET=claude|codex|all(默认 all:装到已存在的 ~/.claude 与 ~/.codex)
#   DEST=<目录>          自定义安装目录(此时忽略 TARGET)
#   REF=<分支或 tag>     默认 main
#   --link               不拷贝,改为 git clone 到 ~/.local/share/sci-writing 并软链接(便于 git pull 更新)
set -euo pipefail
REPO="Zenine/SCI-Writingskill"
REF="${REF:-main}"
TARGET="${TARGET:-all}"
DEST="${DEST:-}"
MODE="copy"
for a in "$@"; do case "$a" in --link) MODE="link";; --help|-h) sed -n '2,9p' "$0"; exit 0;; esac; done

dests=()
if [ -n "$DEST" ]; then dests+=("$DEST"); else
  [[ "$TARGET" =~ ^(all|claude)$ ]] && [ -d "$HOME/.claude" ] && dests+=("$HOME/.claude/skills/sci-writing")
  [[ "$TARGET" =~ ^(all|codex)$ ]]  && [ -d "$HOME/.codex" ]  && dests+=("$HOME/.codex/skills/sci-writing")
fi
[ ${#dests[@]} -gt 0 ] || { echo "未找到 ~/.claude 或 ~/.codex,请用 DEST=<目录> 指定安装位置"; exit 1; }

if [ "$MODE" = "link" ]; then
  src_root="${XDG_DATA_HOME:-$HOME/.local/share}/sci-writing"
  if [ -d "$src_root/.git" ]; then git -C "$src_root" pull -q --ff-only; else git clone -q --depth 1 -b "$REF" "https://github.com/$REPO.git" "$src_root"; fi
  src="$src_root/skills/sci-writing"
else
  tmp="$(mktemp -d)"; trap 'rm -rf "$tmp"' EXIT
  curl -fsSL "https://github.com/$REPO/archive/refs/heads/$REF.tar.gz" | tar -xz -C "$tmp"
  src="$(find "$tmp" -maxdepth 1 -mindepth 1 -type d | head -1)/skills/sci-writing"
fi
[ -f "$src/SKILL.md" ] || { echo "源里没有 SKILL.md:$src"; exit 1; }

for d in "${dests[@]}"; do
  mkdir -p "$(dirname "$d")"
  if [ -e "$d" ] || [ -L "$d" ]; then rm -rf "$d"; fi
  if [ "$MODE" = "link" ]; then ln -s "$src" "$d"; echo "已软链接 → $d"; else cp -r "$src" "$d"; echo "已安装 → $d"; fi
done
echo "完成。新开会话后说“帮我把这段中文方法改成英文 Methods”即可触发 sci-writing。"
