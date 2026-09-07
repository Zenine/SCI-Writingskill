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

if [[ ! "$REF" =~ ^[A-Za-z0-9][A-Za-z0-9._/-]*$ ]] || [[ "$REF" == *..* ]] || [[ "$REF" == */ ]] || [[ "$REF" == /* ]]; then
  echo "REF 只能是安全的分支或 tag 名称"
  exit 1
fi

dests=()
if [ -n "$DEST" ]; then dests+=("$DEST"); else
  [[ "$TARGET" =~ ^(all|claude)$ ]] && [ -d "$HOME/.claude" ] && dests+=("$HOME/.claude/skills/sci-writing")
  [[ "$TARGET" =~ ^(all|codex)$ ]]  && [ -d "$HOME/.codex" ]  && dests+=("$HOME/.codex/skills/sci-writing")
fi
[ ${#dests[@]} -gt 0 ] || { echo "未找到 ~/.claude 或 ~/.codex,请用 DEST=<目录> 指定安装位置"; exit 1; }

if [ "$MODE" = "link" ]; then
  src_root="${XDG_DATA_HOME:-$HOME/.local/share}/sci-writing"
  if [ -d "$src_root/.git" ]; then
    git -C "$src_root" fetch -q --depth 1 origin "$REF"
    git -C "$src_root" checkout -q --detach FETCH_HEAD
  else
    git clone -q --depth 1 -b "$REF" "https://github.com/$REPO.git" "$src_root"
  fi
  src="$src_root/skills/sci-writing"
else
  tmp="$(mktemp -d)"; trap 'rm -rf "$tmp"' EXIT
  src=""
  for kind in tags heads; do
    archive_dir="$tmp/$kind"
    mkdir "$archive_dir"
    if curl -fsSL "https://github.com/$REPO/archive/refs/$kind/$REF.tar.gz" | tar -xz -C "$archive_dir"; then
      candidate="$(find "$archive_dir" -maxdepth 1 -mindepth 1 -type d | head -1)/skills/sci-writing"
      if [ -f "$candidate/SKILL.md" ]; then
        src="$candidate"
        break
      fi
    fi
  done
fi
[ -f "$src/SKILL.md" ] || { echo "源里没有 SKILL.md:$src"; exit 1; }

backups=()
restore_all() {
  local i d backup
  for ((i = 0; i < ${#backups[@]}; i++)); do
    d="${dests[$i]}"
    backup="${backups[$i]}"
    if [ -e "$d" ] || [ -L "$d" ]; then rm -rf "$d"; fi
    [ -z "$backup" ] || mv "$backup" "$d"
  done
}
prepare_failed() {
  local d="$1" partial_backup="${2:-}"
  [ -z "$partial_backup" ] || rm -rf "$partial_backup" || true
  restore_all
  echo "安装失败,已保留原有 skill:$d" >&2
  exit 1
}

for d in "${dests[@]}"; do
  parent="$(dirname "$d")"
  if ! mkdir -p "$parent"; then prepare_failed "$d"; fi
  backup=""
  if [ -e "$d" ] || [ -L "$d" ]; then
    if ! backup="$(mktemp -d "$parent/.sci-writing-backup.XXXXXX")"; then prepare_failed "$d"; fi
    if ! rmdir "$backup"; then prepare_failed "$d" "$backup"; fi
    if ! mv "$d" "$backup"; then
      prepare_failed "$d" "$backup"
    fi
  fi
  backups+=("$backup")
done

for i in "${!dests[@]}"; do
  d="${dests[$i]}"
  if [ "$MODE" = "link" ]; then
    if ln -s "$src" "$d"; then continue; fi
  else
    if cp -r "$src" "$d"; then continue; fi
  fi
  restore_all
  echo "安装失败,已保留原有 skill:$d" >&2
  exit 1
done

for backup in "${backups[@]}"; do
  [ -z "$backup" ] || rm -rf "$backup"
done
for d in "${dests[@]}"; do
  if [ "$MODE" = "link" ]; then echo "已软链接 → $d"; else echo "已安装 → $d"; fi
done
echo "完成。新开会话后说“帮我把这段中文方法改成英文 Methods”即可触发 sci-writing。"
