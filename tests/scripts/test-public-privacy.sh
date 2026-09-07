#!/usr/bin/env bash
# 公开文本隐私扫描器的回归测试。
set -euo pipefail

repo_root="$(cd "$(dirname "$0")/../.." && pwd)"
checker="$repo_root/scripts/check_public_privacy.py"
tmp="$(mktemp -d "$repo_root/tests/.public-privacy.XXXXXX")"
verify_fixture="$repo_root/tests/regression/.public-privacy-verify-fixture.md"
trap 'rm -rf "$tmp" "$verify_fixture"' EXIT

mkdir -p "$tmp/nested" "$tmp/.git" "$tmp/sources"

printf '%s\n' '文档位于 /Users/example/private/report.md' > "$tmp/unix.md"
printf '%s\n' '文档位于 /home/example/private/report.md' > "$tmp/home.sh"
printf '%s\n' '文档位于 C:\\Users\\Example\\private\\report.md' > "$tmp/windows.md"
printf '%s\n' '文档位于 \\server\\share\\private\\report.md' > "$tmp/unc.yaml"
printf '%s\n' '文档位于 `\\server\\share\\private\\report.md`' > "$tmp/unc-backtick.md"
printf '%s\n' '文档位于 (\\server\\share\\private\\report.md)' > "$tmp/unc-parentheses.md"
printf '%s\n' 'key: sk-abcdefghijklmnopqrstuvwxyz123456' > "$tmp/openai.yml"
printf '%s\n' 'token: ghp_abcdefghijklmnopqrstuvwxyz123456' > "$tmp/github.json"
printf '%s\n' 'token: github_pat_abcdefghijklmnopqrstuvwxyz123456' > "$tmp/github-pat.json"
printf '%s%s\n' 'token: xoxb-' '123456789012-123456789012-abcdefghijklmnopqrstuvwx' > "$tmp/slack.py"
printf '%s\n' 'access_key: AKIA1234567890ABCDEF' > "$tmp/aws.yml"
printf '%s%s\n' 'secret_key: sk_live_' 'abcdefghijklmnopqrstuvwxyz123456' > "$tmp/stripe.yml"
printf '%s\n' '-----BEGIN PRIVATE KEY-----' > "$tmp/private-key.md"
printf '%s\n' 'skills/sci-writing/references/02-methods.md' > "$tmp/relative.md"
printf '%s\n' 'p = 0.05; n = 120; 95% CI = 1.2-2.3' > "$tmp/statistics.md"
printf '%s\n' 'ignored /Users/example/private/ignored.md' > "$tmp/.git/ignored.md"
printf '%s\n' 'ignored sk-abcdefghijklmnopqrstuvwxyz123456' > "$tmp/sources/ignored.md"

output="$tmp/output"
if python3 "$checker" "$tmp" >"$output" 2>&1; then
  printf '失败：含隐私风险的 fixture 应使扫描器返回非零\n' >&2
  exit 1
fi

grep -Fqx "$tmp/unix.md:1: 发现公开隐私风险: Unix 本机绝对路径" "$output" >/dev/null
grep -Fqx "$tmp/home.sh:1: 发现公开隐私风险: Unix 本机绝对路径" "$output" >/dev/null
grep -Fqx "$tmp/windows.md:1: 发现公开隐私风险: Windows 本机绝对路径" "$output" >/dev/null
grep -Fqx "$tmp/unc.yaml:1: 发现公开隐私风险: UNC 网络路径" "$output" >/dev/null
grep -Fqx "$tmp/unc-backtick.md:1: 发现公开隐私风险: UNC 网络路径" "$output" >/dev/null
grep -Fqx "$tmp/unc-parentheses.md:1: 发现公开隐私风险: UNC 网络路径" "$output" >/dev/null
grep -Fqx "$tmp/openai.yml:1: 发现公开隐私风险: OpenAI API 密钥" "$output" >/dev/null
grep -Fqx "$tmp/github.json:1: 发现公开隐私风险: GitHub 访问令牌" "$output" >/dev/null
grep -Fqx "$tmp/github-pat.json:1: 发现公开隐私风险: GitHub 访问令牌" "$output" >/dev/null
grep -Fqx "$tmp/slack.py:1: 发现公开隐私风险: Slack 访问令牌" "$output" >/dev/null
grep -Fqx "$tmp/aws.yml:1: 发现公开隐私风险: AWS 访问密钥 ID" "$output" >/dev/null
grep -Fqx "$tmp/stripe.yml:1: 发现公开隐私风险: Stripe 密钥" "$output" >/dev/null
grep -Fqx "$tmp/private-key.md:1: 发现公开隐私风险: 私钥标记" "$output" >/dev/null

if grep -Eq 'relative\.md|statistics\.md|ignored\.md|sk-[a-z]|ghp_[a-z]|github_pat_|xoxb-|AKIA[0-9A-Z]|sk_live_' "$output"; then
  printf '失败：扫描器输出不应回显风险原文，且不应报告合法或排除 fixture\n' >&2
  exit 1
fi

printf '%s\n' '临时回归输出 /Users/example/private/report.md' > "$verify_fixture"
verify_output="$tmp/verify-output"
if bash "$repo_root/scripts/verify.sh" >"$verify_output" 2>&1; then
  printf '失败：tests/regression 中的隐私风险应使 verify 非零退出\n' >&2
  exit 1
fi
grep -Fqx 'tests/regression/.public-privacy-verify-fixture.md:1: 发现公开隐私风险: Unix 本机绝对路径' "$verify_output" >/dev/null
grep -Fqx 'verify: FAIL' "$verify_output" >/dev/null

printf '%s\n' '公开文本隐私扫描回归测试通过'
