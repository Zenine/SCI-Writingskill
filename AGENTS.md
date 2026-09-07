# 仓库规则(给 agent)

本仓库是公开库,内容是「英文 SCI 论文写作」agent skill。所有 agent 会话进入本仓库先读本文件。

## 硬边界

1. **PDF 与抽取文本永不入库。** 原书放 `sources/`(已 gitignore),任何 `*.pdf`、`sources/` 下文件不得 `git add`,不得 `-f` 强加。`scripts/verify.sh` 会硬检查。
2. **二次创作口径。** `notes/` 与 `skills/` 中的内容是读书笔记式重写:方法论、结构模型、清单用自己的话;英文只收通用学术短语并重新归类;不得连续抄录原书任何一整段;不得整页照搬词表。`scripts/check_overlap.py` 用 12 词连续重合做机检,机检通过不等于合规,自律优先。
3. **语言。** 说明性文字用简体中文;英文句式模板、短语、示例保留英文。
4. **来源标注。** 每个 `notes/` 与 `references/` 文件顶部必须有 `> 来源:书A 第N单元 / 书B 第N章`。
5. **不自动提交。** 除用户当轮明确要求外不跑 `git commit`;commit message 不加任何 AI 署名。
6. **README 视觉资产。** README 使用的展示图统一放在 `assets/`，可以提交；不得把原书页、抽取图或任何 `sources/` 下文件复制到该目录。新增或替换图片时，README 与 `README.en.md` 应同步更新，并提供有意义的 alt 文本。
7. **许可边界。** `scripts/`、`.github/`、`tests/`、`.claude-plugin/` 等代码与配置适用 MIT；`skills/`、`notes/`、`docs/`、README 与 `assets/` 适用 CC BY 4.0，详见根目录 `LICENSE`。原书与 `sources/` 下任何材料均不在本仓库许可范围内且不得入库。

## 两本参考书

- 书 A:《英语科技写作(第二版)》Hilary Glasman-Deal 著,雷锦志、李晓文、武林晓译,世界图书出版公司 2023。PDF 有文字层,506 页。
- 书 B:《英文学术写作实战》范逸洲、童士敦、毛君著,清华大学出版社 2024。扫描版无文字层,311 页,靠多模态读 `sources/pages/*.png`。

## 验证入口

`bash scripts/verify.sh`。提交前必须通过。

## 目录

- `skills/sci-writing/` 最终产品:`SKILL.md` 路由 + `references/` 分主题指南 + `samples/` 测试样例。
- `notes/` 按书按章的中文阅读笔记,是 references 的中间产物。
- `scripts/` 抽取与验证脚本。
- `docs/plans/` 实施计划。
- `assets/` README 使用的 HERO 图、结构图与流程图。
