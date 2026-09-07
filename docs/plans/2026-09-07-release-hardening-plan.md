# 发布加固实施计划

> **给执行 agent：** 按子代理逐任务执行；每步用复选框追踪。不得提交，除非用户当轮明确要求。

**目标：** 修复指定版本安装与覆盖安装风险，并让仓库在无原书文本的公开环境中仍能自动验证安装脚本、文档链接和基础结构。

**架构：** 安装脚本采用下载到临时位置、校验、备份替换的流程；Bash 回归脚本用本地伪造的 GitHub archive 验证分支与标签 URL、失败保留旧版本和成功安装。结构验证继续由 `scripts/verify.sh` 统一入口调用，新检查只验证可公开运行的事实，不宣称能完成原书重合比对。

**技术栈：** Bash、Python 3 标准库、GitHub Actions。

---

### Task 1: 安全且可指定版本的安装器

**Files:**
- Modify: `scripts/install.sh`
- Create: `tests/scripts/test-install.sh`

- [x] 写会失败的 Bash 回归测试：构造临时 `HOME`、伪造 `curl`/`tar` 和包含 `SKILL.md` 的 archive；断言 `REF=v0.1.0` 走标签 URL、成功时替换旧 skill、下载失败时旧 skill 保留。
- [x] 运行 `bash tests/scripts/test-install.sh`，确认当前实现因 `refs/heads/v0.1.0` 和先删除目标而失败。
- [x] 最小改动 `scripts/install.sh`：接受安全的 ref；复制模式尝试标签与分支 archive；在临时目录完成下载与 `SKILL.md` 校验；为每个目标先备份，再安装，失败时恢复备份。
- [x] 重跑 `bash tests/scripts/test-install.sh`，确认所有断言通过；执行 `bash -n scripts/install.sh`。

### Task 2: 可公开运行的自动验证

**Files:**
- Modify: `scripts/verify.sh`
- Create: `scripts/check_readme_links.py`
- Create: `tests/scripts/test-check-readme-links.sh`
- Create: `.github/workflows/verify.yml`

- [x] 写会失败的链接检查测试：在临时 Markdown 文件中放一个存在和一个不存在的相对本地目标，断言检查器只报告不存在目标并返回非零。
- [x] 运行测试，确认检查器尚不存在而失败。
- [x] 实现 `check_readme_links.py`：检查 README 中的本地 Markdown 图片与链接目标；跳过锚点、HTTP(S)、邮件链接和代码块；输出文件、行号和缺失目标。
- [x] 扩展 `verify.sh` 调用链接检查器，并在 `sources/text/` 缺失时将重合结果明确打印为 `SKIPPED`，不把它描述为已完成的版权验证。
- [x] 新建 GitHub Actions 工作流，在 push 与 pull request 上运行 `bash scripts/verify.sh`、`bash -n scripts/*.sh`、`python3 -m py_compile scripts/*.py`、插件 JSON 解析。
- [x] 重跑新测试与 `bash scripts/verify.sh`。

### Task 3: 发布许可与透明度（需用户决策）

**Files:**
- Create: `LICENSE` 或 `LICENSES/`
- Modify: `README.md`
- Modify: `README.en.md`

- [ ] 等待用户明确选择许可证：单一许可或“代码与文档/图像分开许可”。
- [ ] 根据选择添加许可证正文，并在双语 README 简要说明适用范围。
- [ ] 在双语安装说明中告知 `skills` CLI 默认匿名遥测，并给出 `DISABLE_TELEMETRY=1` 退出方式。

### Task 4: 最终复核

**Files:** 仅审阅本计划涉及的文件。

- [x] 审阅安装器的标签、分支、恢复和多目标失败路径。
- [x] 审阅验证工作流是否能在不含 `sources/` 的公开克隆中运行。
- [x] 运行 `bash scripts/verify.sh`、新增脚本测试、语法/JSON 检查和 `git diff --check`。
- [x] 汇报未提交的改动、版权重合检查的已知限制，以及许可证决策状态。
