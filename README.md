# SCI-Writingskill

英文 SCI 论文写作的 agent skill(可被 Claude Code、Codex 等加载的可复用指令包)。覆盖引言、方法、结果、讨论、结论、摘要、标题的结构模板,学术英语的时态/语态/动词规范,段落逻辑模型,以及中国作者常见错误的自检清单。

## 状态

初始化阶段。实施计划见 `docs/plans/2026-09-06-sci-writing-skill-plan.md`。

## 安装

- 方式一:把 `skills/sci-writing/` 整个目录拷到 `~/.claude/skills/sci-writing/`。
- 方式二:作为插件安装(仓库根有 `.claude-plugin/plugin.json`)。

## 目录

- `skills/sci-writing/SKILL.md` 入口与路由;`references/` 分主题指南;`samples/` 测试样例。
- `notes/` 两本参考书的中文阅读笔记(二次创作)。
- `scripts/verify.sh` 验证入口。

## 参考书目与版权口径

本 skill 的内容是对下列两本书的读书笔记式二次创作,不包含原书文本,原书 PDF 不在仓库中:

1. Hilary Glasman-Deal 著,雷锦志、李晓文、武林晓译.《英语科技写作(第二版)》. 世界图书出版公司, 2023.(原著 *Science Research Writing for Native and Non-Native Speakers of English*, 2nd ed., World Scientific, 2021)
2. 范逸洲、童士敦、毛君.《英文学术写作实战》. 清华大学出版社, 2024.

请购买原书获取完整内容。
