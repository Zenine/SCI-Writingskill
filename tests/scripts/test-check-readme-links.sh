#!/usr/bin/env bash
# README 本地链接检查器的回归测试。
set -euo pipefail

repo_root="$(cd "$(dirname "$0")/../.." && pwd)"
checker="$repo_root/scripts/check_readme_links.py"
tmp="$(mktemp -d "$repo_root/tests/.check-readme-links.XXXXXX")"
trap 'rm -rf "$tmp"' EXIT

mkdir -p "$tmp/docs/assets"
printf '存在\n' > "$tmp/docs/assets/existing.png"
printf '标题目标\n' > "$tmp/docs/title-target.md"
printf '括号目标\n' > "$tmp/docs/nested(name).md"
printf '嵌套括号目标\n' > "$tmp/docs/nested(plain).md"
printf '空格目标\n' > "$tmp/docs/spaced file.md"
printf '上级目标\n' > "$tmp/shared.md"
cat > "$tmp/docs/README.md" <<'EOF'
# Fixture

![存在图片](assets/existing.png)
[带标题的链接](title-target.md "说明文字")
[转义括号](nested\(name\).md)
[嵌套括号](nested(plain).md)
[百分号空格](spaced%20file.md)
[仓库内上级路径](../shared.md)
[缺失页面](missing/page.md?from=readme#section)
![缺失图片](assets/missing.png#preview)
[嵌套标签 [内层]](nested-label-missing.md)
[越界路径](../../../../outside.md)
![绝对路径](/tmp/no-such-sci-writing-file.png)
[Windows 反斜杠](C:\missing.md)
[Windows 正斜杠](C:/missing.md)
[UNC 路径](\\server\share\x.md)
[网站](https://example.com/docs)
[邮件](mailto:writer@example.com)
[本页](#fixture)

```markdown
[代码围栏中的伪链接](not-a-real-file.md)
```
EOF

output="$tmp/output"
if python3 "$checker" "$tmp/docs/README.md" >"$output" 2>&1; then
  printf '失败：缺失本地链接应使检查器非零退出\n' >&2
  exit 1
fi

grep -Fx "$tmp/docs/README.md:9: 缺失本地链接: missing/page.md?from=readme#section" "$output"
grep -Fx "$tmp/docs/README.md:10: 缺失本地链接: assets/missing.png#preview" "$output"
grep -Fx "$tmp/docs/README.md:11: 缺失本地链接: nested-label-missing.md" "$output"
[ "$(grep -Fc "$tmp/docs/README.md:12: 非法本地链接: ../../../../outside.md" "$output")" -eq 1 ]
[ "$(grep -Fc "$tmp/docs/README.md:13: 非法本地链接: /tmp/no-such-sci-writing-file.png" "$output")" -eq 1 ]
[ "$(grep -Fc "$tmp/docs/README.md:14: 非法本地链接: C:\\missing.md" "$output")" -eq 1 ]
[ "$(grep -Fc "$tmp/docs/README.md:15: 非法本地链接: C:/missing.md" "$output")" -eq 1 ]
[ "$(grep -Fc "$tmp/docs/README.md:16: 非法本地链接: \\\\server\\share\\x.md" "$output")" -eq 1 ]
[ "$(grep -c '缺失本地链接:' "$output")" -eq 3 ]
[ "$(grep -c '非法本地链接:' "$output")" -eq 5 ]

verify_output="$tmp/verify-output"
bash "$repo_root/scripts/verify.sh" >"$verify_output"
grep -Fx 'verify: PASS (overlap skipped)' "$verify_output"

printf 'README 本地链接检查回归测试通过\n'
