# 隐私清理实施计划

> **给执行 agent：** 按子代理逐任务执行；不提交、不推送，除非用户明确要求。

**目标：** 清除当前回归输出中的本机绝对路径，并阻止未来把本机路径或常见凭证格式加入公开仓库。

**架构：** 保留测试语义与相对文件引用，只将输出中的机器特定路径替换为稳定的仓库相对路径或占位符；`verify.sh` 作为唯一公开验证入口，调用一个无副作用的隐私扫描器。已发布 Git 历史的重写与 force-push 不在本计划执行范围内，须在清理后取得用户明确的提交和推送授权。

**技术栈：** Bash、Python 3 标准库、现有 `scripts/verify.sh`。

---

### Task 1: 当前文件隐私清理与防回归

**Files:**
- Modify: 仅 `tests/regression/test-output-*.md` 中命中本机绝对路径的文件
- Modify: `scripts/verify.sh`
- Create: `scripts/check_public_privacy.py`
- Create: `tests/scripts/test-public-privacy.sh`

- [ ] 写会失败的离线测试：临时目录含绝对 Unix/Windows 路径、常见 token、合法相对路径与普通科学数字；断言扫描器只报告违规项并退出非零。
- [ ] 运行测试，确认扫描器尚不存在而失败。
- [ ] 实现公开内容扫描：检查受检文件的绝对路径和常见凭证格式；输出文件与行号，不回显敏感匹配内容。
- [ ] 将实际回归输出中的绝对本机路径改为稳定相对路径或 `[LOCAL_PATH]`，不改变评分结论。
- [ ] 扩展 `verify.sh` 调用扫描器，检查已跟踪 Markdown、脚本、配置和当前 README；跳过 `.git` 与 `sources/`。
- [ ] 重跑隐私测试、`verify.sh` 和直接绝对路径扫描。

### Task 2: 复核与历史处理边界

**Files:** 仅审阅 Task 1 涉及文件。

- [ ] 独立审阅扫描规则的误报/漏报风险，以及实际输出是否还含绝对路径。
- [ ] 运行完整验证、语法检查与 `git diff --check`。
- [ ] 汇报当前工作区已清理情况；说明已发布 Git 历史仍可能保留旧路径，等待用户明确授权 commit、历史重写及 force-push 后才处理。
