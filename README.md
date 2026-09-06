# SCI-Writingskill

英文 SCI 论文写作的 agent skill(可被 Claude Code、Codex 等加载的可复用指令包)。覆盖标题、摘要、引言、方法、结果、讨论、结论的结构模板,学术英语的时态/语态/动词规范,段落逻辑模型,中国作者常见错误的逐句扫描清单,伦理与声明写法,以及投稿前总清单、选刊与审稿回复。

## 安装

- 方式一:把 `skills/sci-writing/` 整个目录拷到 `~/.claude/skills/sci-writing/`(或其它 agent 的 skills 目录)。
- 方式二:作为 Claude Code 插件安装,仓库根有 `.claude-plugin/plugin.json`。

安装后,用户提到写英文论文、改某一节、去 Chinglish、写伦理声明、回复审稿意见等场景时,agent 会自动加载。

## 用法

`skills/sci-writing/SKILL.md` 是入口:先看「路由表」找到对应的 reference 文件,再按其中的结构、模板、常见错误和自检清单处理。所有输出遵循 SKILL.md 的「输出格式约定」(理解确认 → 结构 → 正文 → 改动说明 → 自检结果 → 建议补充)。

| 文件 | 内容 |
|---|---|
| `references/00-workflow.md` | 从故事线到投稿的总流程与切入点表 |
| `references/01-introduction.md` … `04-discussion-conclusion.md` | 引言、方法、结果、讨论/结论的功能步模型与模板 |
| `references/05-abstract.md`、`06-title-keywords.md` | 摘要、标题、关键词、二级标题 |
| `references/07-paragraph-logic.md` | 四种段落逻辑模型、连接词、句间承接 |
| `references/08-verbs-tense-voice.md` | 各节时态/语态总表、确定性阶梯、藏动作写法清理 |
| `references/09-academic-style.md` | 学术风格与简洁的统一口径 |
| `references/10-chinese-author-pitfalls.md` | 中国作者错误逐句扫描清单(error / warning 两级) |
| `references/11-ethics-and-readers.md` | 伦理与各类声明、读者意识、故事线四问 |
| `references/12-submission-checklist.md` | 投稿前总清单、选刊、cover letter、审稿回复 |
| `samples/` | 测试样例:中文方法段草稿、评审要点、实测输出 |

## 仓库结构

- `skills/sci-writing/` 最终产品。
- `notes/` 两本参考书的中文阅读笔记(二次创作),是 references 的中间产物,保留以便追溯。
- `scripts/verify.sh` 验证入口:检查无 PDF 入库、SKILL.md 与 references 互相引用完整、来源标注、与原书文本的 12 词连续重合。
- `docs/plans/` 实施计划。

## 参考书目与版权口径

本 skill 的内容是对下列两本书的读书笔记式二次创作:方法论、结构模型、清单用自己的话重写,英文只收通用学术短语并重新归类,所有例句为自写。仓库不包含原书文本,原书 PDF 不在仓库中。

1. Hilary Glasman-Deal 著,雷锦志、李晓文、武林晓译.《英语科技写作(第二版)》. 世界图书出版公司, 2023.(原著 *Science Research Writing for Native and Non-Native Speakers of English*, 2nd ed., World Scientific, 2021)
2. 范逸洲、童士敦、毛君.《英文学术写作实战》. 清华大学出版社, 2024.

请购买原书获取完整内容。
