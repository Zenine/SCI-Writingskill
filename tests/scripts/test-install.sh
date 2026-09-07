#!/usr/bin/env bash
# install.sh 的离线回归：不访问网络，也不写入真实的 agent 目录。
set -euo pipefail

repo_root="$(cd "$(dirname "$0")/../.." && pwd)"
installer="$repo_root/scripts/install.sh"
base_path="$PATH"
tar_bin="$(command -v tar)"
tmp="$(mktemp -d)"
trap 'rm -rf "$tmp"' EXIT

archive_root="$tmp/archive-root/SCI-Writingskill-fixture"
mkdir -p "$archive_root/skills/sci-writing"
printf '新版 skill\n' > "$archive_root/skills/sci-writing/SKILL.md"
"$tar_bin" -czf "$tmp/skill.tar.gz" -C "$tmp/archive-root" SCI-Writingskill-fixture

stub_dir="$tmp/stubs"
mkdir -p "$stub_dir"
cat > "$stub_dir/curl" <<'EOF'
#!/usr/bin/env bash
set -euo pipefail
url=""
for arg in "$@"; do url="$arg"; done
printf '%s\n' "$url" >> "$URL_LOG"
[ "${FAIL_MODE:-}" != "download" ] || exit 22
case "$url" in
  */refs/tags/v0.1.0.tar.gz) cat "$ARCHIVE" ;;
  */refs/tags/main.tar.gz) exit 22 ;;
  */refs/heads/main.tar.gz) cat "$ARCHIVE" ;;
  *) exit 22 ;;
esac
EOF
cat > "$stub_dir/tar" <<'EOF'
#!/usr/bin/env bash
if [ "${FAIL_MODE:-}" = "extract" ]; then exit 1; fi
exec "$REAL_TAR" "$@"
EOF
cat > "$stub_dir/cp" <<'EOF'
#!/usr/bin/env bash
[ "${FAIL_MODE:-}" != "copy" ] || exit 1
if [ "${FAIL_MODE:-}" = "copy-second" ]; then
  count=$(cat "$OP_COUNT_FILE" 2>/dev/null || printf 0)
  count=$((count + 1))
  printf '%s\n' "$count" > "$OP_COUNT_FILE"
  [ "$count" -ne 2 ] || exit 1
fi
exec "$REAL_CP" "$@"
EOF
cat > "$stub_dir/ln" <<'EOF'
#!/usr/bin/env bash
[ "${FAIL_MODE:-}" != "link" ] || exit 1
if [ "${FAIL_MODE:-}" = "link-second" ]; then
  count=$(cat "$OP_COUNT_FILE" 2>/dev/null || printf 0)
  count=$((count + 1))
  printf '%s\n' "$count" > "$OP_COUNT_FILE"
  [ "$count" -ne 2 ] || exit 1
fi
exec "$REAL_LN" "$@"
EOF
cat > "$stub_dir/git" <<'EOF'
#!/usr/bin/env bash
printf '%s\n' "$*" >> "$GIT_LOG"
exit 0
EOF
chmod +x "$stub_dir/curl" "$stub_dir/tar" "$stub_dir/cp" "$stub_dir/ln" "$stub_dir/git"

fail() { printf '失败: %s\n' "$*" >&2; exit 1; }
assert_old() { [ "$(cat "$1/SKILL.md")" = '旧版 skill' ] || fail "旧 skill 未被保留"; }
make_old() { mkdir -p "$1"; printf '旧版 skill\n' > "$1/SKILL.md"; }
assert_no_backups() {
  if find "$tmp" -name '.sci-writing-backup.*' -print -quit | grep -q .; then
    fail '遗留了安装备份目录'
  fi
}
run_install() {
  local dest="$1" ref="$2" fail_mode="$3" path="$4" mode="${5:-}"
  local args=()
  [ -z "$mode" ] || args+=("$mode")
  HOME="$tmp/home" DEST="$dest" REF="$ref" ARCHIVE="$tmp/skill.tar.gz" URL_LOG="$tmp/urls.log" \
    XDG_DATA_HOME="$tmp/xdg" REAL_TAR="$tar_bin" REAL_CP="$(command -v cp)" REAL_LN="$(command -v ln)" \
    FAIL_MODE="$fail_mode" OP_COUNT_FILE="$tmp/op-count" GIT_LOG="$tmp/git.log" PATH="$path" bash "$installer" "${args[@]}"
}
run_all_targets() {
  local home="$1" ref="$2" fail_mode="$3" path="$4" mode="${5:-}"
  local args=()
  [ -z "$mode" ] || args+=("$mode")
  HOME="$home" TARGET=all DEST='' REF="$ref" ARCHIVE="$tmp/skill.tar.gz" URL_LOG="$tmp/urls.log" \
    XDG_DATA_HOME="$tmp/xdg" REAL_TAR="$tar_bin" REAL_CP="$(command -v cp)" REAL_LN="$(command -v ln)" \
    FAIL_MODE="$fail_mode" OP_COUNT_FILE="$tmp/op-count" GIT_LOG="$tmp/git.log" PATH="$path" bash "$installer" "${args[@]}"
}

# 标签只在 tags URL 可下载：旧实现固定 heads URL，因此这里必须先失败。
tag_dest="$tmp/tag/skill"
make_old "$tag_dest"
: > "$tmp/urls.log"
run_install "$tag_dest" v0.1.0 '' "$stub_dir:$base_path"
[ "$(cat "$tag_dest/SKILL.md")" = '新版 skill' ] || fail '标签安装没有替换旧 skill'
grep -q '/refs/tags/v0.1.0.tar.gz$' "$tmp/urls.log" || fail '没有请求标签 archive URL'
assert_no_backups

# main 标签请求应失败、随后使用分支 archive 成功。
main_dest="$tmp/main/skill"
make_old "$main_dest"
: > "$tmp/urls.log"
run_install "$main_dest" main '' "$stub_dir:$base_path"
[ "$(cat "$main_dest/SKILL.md")" = '新版 skill' ] || fail 'main 安装失败'
grep -q '/refs/heads/main.tar.gz$' "$tmp/urls.log" || fail '没有回退到分支 archive URL'
assert_no_backups

# 非法 ref 必须在联网前被拒绝，且不能影响既有安装。
invalid_dest="$tmp/invalid-ref/skill"
make_old "$invalid_dest"
: > "$tmp/urls.log"
if run_install "$invalid_dest" '../main' '' "$stub_dir:$base_path"; then
  fail '非法 REF 场景意外成功'
fi
assert_old "$invalid_dest"
[ ! -s "$tmp/urls.log" ] || fail '非法 REF 不应调用 curl'
assert_no_backups

# 下载或解包失败均不可动原目录。
for failure in download extract; do
  dest="$tmp/$failure/skill"
  make_old "$dest"
  if run_install "$dest" main "$failure" "$stub_dir:$base_path"; then
    fail "$failure 失败场景意外成功"
  fi
  assert_old "$dest"
  assert_no_backups
done

# 最终复制失败时也必须回滚；这覆盖安装成功前删除旧目录的回归。
copy_dest="$tmp/copy-failure/skill"
make_old "$copy_dest"
if run_install "$copy_dest" main copy "$stub_dir:$base_path"; then
  fail '复制失败场景意外成功'
fi
assert_old "$copy_dest"
assert_no_backups

# --link 建立软链接失败时同样回滚原目录。
link_source="$tmp/xdg/sci-writing"
mkdir -p "$link_source/.git" "$link_source/skills/sci-writing"
printf '链接源 skill\n' > "$link_source/skills/sci-writing/SKILL.md"
link_dest="$tmp/link-failure/skill"
make_old "$link_dest"
if run_install "$link_dest" main link "$stub_dir:$base_path" --link; then
  fail '软链接失败场景意外成功'
fi
assert_old "$link_dest"
assert_no_backups

# TARGET=all 中第二个复制失败时，两个目标都要回滚。
all_copy_home="$tmp/all-copy-home"
all_copy_claude="$all_copy_home/.claude/skills/sci-writing"
all_copy_codex="$all_copy_home/.codex/skills/sci-writing"
make_old "$all_copy_claude"
make_old "$all_copy_codex"
: > "$tmp/op-count"
if run_all_targets "$all_copy_home" main copy-second "$stub_dir:$base_path"; then
  fail '双目标复制失败场景意外成功'
fi
assert_old "$all_copy_claude"
assert_old "$all_copy_codex"
assert_no_backups

# 预备第二个目标失败时，也必须恢复第一个已搬走的旧 skill。
prepare_home="$tmp/prepare-failure-home"
prepare_claude="$prepare_home/.claude/skills/sci-writing"
prepare_codex_parent="$prepare_home/.codex/skills"
make_old "$prepare_claude"
mkdir -p "$(dirname "$prepare_codex_parent")"
printf '原有父路径文件\n' > "$prepare_codex_parent"
if run_all_targets "$prepare_home" main '' "$stub_dir:$base_path"; then
  fail '预备第二个目标失败场景意外成功'
fi
assert_old "$prepare_claude"
[ "$(cat "$prepare_codex_parent")" = '原有父路径文件' ] || fail '第二个目标的原有父路径未保留'
assert_no_backups

# TARGET=all 的 --link 也必须整体回滚。
all_link_home="$tmp/all-link-home"
all_link_claude="$all_link_home/.claude/skills/sci-writing"
all_link_codex="$all_link_home/.codex/skills/sci-writing"
make_old "$all_link_claude"
make_old "$all_link_codex"
: > "$tmp/op-count"
if run_all_targets "$all_link_home" main link-second "$stub_dir:$base_path" --link; then
  fail '双目标软链接失败场景意外成功'
fi
assert_old "$all_link_claude"
assert_old "$all_link_codex"
assert_no_backups

# 既有 clone 必须切换到本次 REF，而不是只 pull 当前分支。
ref_dest="$tmp/existing-ref/skill"
: > "$tmp/git.log"
run_install "$ref_dest" v0.1.0 '' "$stub_dir:$base_path" --link
[ -L "$ref_dest" ] || fail '既有 clone 的链接安装失败'
grep -q 'fetch.*v0.1.0' "$tmp/git.log" || fail '既有 clone 没有抓取指定 REF'
grep -q 'checkout' "$tmp/git.log" || fail '既有 clone 没有切换到指定 REF'
assert_no_backups

printf 'install.sh 回归测试通过\n'
