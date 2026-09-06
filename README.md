# SCI-Writingskill

英文 SCI 论文写作的 agent skill(可被 Claude Code、Codex 等加载的可复用指令包)。覆盖标题、摘要、引言、方法、结果、讨论、结论的结构模板,学术英语的时态/语态/动词规范,段落逻辑模型,中国作者常见错误的逐句扫描清单,伦理与声明写法,以及投稿前总清单、选刊、投稿信与审稿回复。

内容来自两本写作教材的读书笔记式二次创作(见文末「参考书目与版权口径」),经 4 批审阅与 4 份样例回归测试(Methods、Introduction、Abstract、Response to reviewers)校验。

## 安装

skill 本体是 `skills/sci-writing/` 目录(`SKILL.md` + `references/` + `samples/`)。下面任选一行,复制给 agent 或在终端执行即可。

### 一行安装

**npx(推荐,自动装到本机所有已识别的 agent,如 Claude Code、Codex、Cursor 等)**

```bash
npx skills add Zenine/SCI-Writingskill -g -y
```

用的是开源的 `skills` CLI(skills.sh)。去掉 `-g` 则只装到当前项目;`--copy` 拷贝而不软链接;以后 `npx skills update` 跟新。本机已验证该命令能从本仓库发现 `sci-writing`。

**curl(无 Node 环境;装到已存在的 `~/.claude` 与 `~/.codex`)**

```bash
curl -fsSL https://raw.githubusercontent.com/Zenine/SCI-Writingskill/main/scripts/install.sh | bash
```

想先看脚本再执行:

```bash
curl -fsSL https://raw.githubusercontent.com/Zenine/SCI-Writingskill/main/scripts/install.sh -o install.sh
less install.sh && bash install.sh
```

脚本参数:`bash install.sh --link` 改为 clone 到 `~/.local/share/sci-writing` 并软链接,以后 `git pull` 即更新;`TARGET=claude` 或 `TARGET=codex` 只装其一;`DEST=<目录>` 自定义位置;`REF=<tag>` 装指定版本。脚本只做下载、拷贝或软链接,不改任何配置文件,本机已在临时目录实测拷贝与软链接两种模式。

**Claude Code 插件(marketplace)**

```bash
claude plugin marketplace add Zenine/SCI-Writingskill && claude plugin install sci-writing@sci-writingskill
```

以后 `claude plugin marketplace update sci-writingskill` 跟新。本机已验证 `marketplace add` 能识别该仓库。

**直接对 agent 说一句**

> 把 https://github.com/Zenine/SCI-Writingskill 里的 `skills/sci-writing` 目录装到我的 skills 目录(Claude Code 是 `~/.claude/skills/`,Codex 是 `~/.codex/skills/`)。

### 手动安装

```bash
git clone https://github.com/Zenine/SCI-Writingskill.git
cp -r SCI-Writingskill/skills/sci-writing ~/.claude/skills/sci-writing     # Claude Code 用户级
cp -r SCI-Writingskill/skills/sci-writing <项目>/.claude/skills/sci-writing # 只给某个项目
cp -r SCI-Writingskill/skills/sci-writing ~/.codex/skills/sci-writing      # Codex
```

其它能读文件的 agent:把 `skills/sci-writing/SKILL.md` 作为系统提示或首条指令加载,它会按路由表告诉 agent 该读哪个 `references/*.md`。

### 验证安装

新开一个会话,说"帮我把这段中文方法改成英文 Methods"或"检查这段英文有没有 Chinglish",agent 应先复述故事线、列出该节功能步,再给英文稿和自检结果。想跑完整回归,按 `skills/sci-writing/samples/README.md` 的跑法用 `samples/` 下任一中文草稿测试。

## 用法

`SKILL.md` 是入口。agent 先看「路由表」找到对应的 reference 文件,再按其中的结构、模板、常见错误和自检清单处理。所有写作输出遵循固定七段:理解确认 → 结构 → 正文 → 改动说明 → 自检结果 → 建议补充 → 衔接提示。十条硬规则任何场景生效,核心是:结构先于句子、不编造、不编引用(用 `[REF]` 占位)、所有权可辨认、每句一个避险词、术语一致、目标期刊优先、默认美式拼写、用户要直接产出时不阻塞。

| 文件 | 内容 |
|---|---|
| `references/00-workflow.md` | 从故事线到投稿的八步总流程与切入点表 |
| `references/01-introduction.md` … `04-discussion-conclusion.md` | 引言、方法、结果、讨论/结论的功能步模型与模板 |
| `references/05-abstract.md`、`06-title-keywords.md` | 摘要(一般/结构化/Nature 式、Highlights)、标题、关键词、二级标题 |
| `references/07-paragraph-logic.md` | 四种段落逻辑模型、连接词分组、句间承接 |
| `references/08-verbs-tense-voice.md` | 各节时态/语态总表(含投稿信/回复信行)、确定性阶梯、藏动作写法清理 |
| `references/09-academic-style.md` | 学术风格;全 skill 唯一的句长段长与词数计数口径 |
| `references/10-chinese-author-pitfalls.md` | 中国作者错误逐句扫描清单(error / warning 两级,带识别信号与误报表) |
| `references/11-ethics-and-readers.md` | 伦理与各类声明句式、读者意识、故事线四问 |
| `references/12-submission-checklist.md` | 投稿前总清单 104 条、选刊、投稿信、审稿回复信结构 |
| `samples/` | 回归测试集:四份中文输入 + 评审要点 + 实测输出与判定 |

## 仓库结构

- `skills/sci-writing/` 最终产品。
- `notes/` 两本参考书的中文阅读笔记(二次创作),是 references 的中间产物,保留以便追溯。
- `docs/plans/` 实施计划;`docs/reviews/` 审阅报告与统一裁决。
- `scripts/verify.sh` 验证入口:检查无 PDF 入库、SKILL.md 与 references 互相引用完整、来源标注、与原书文本的 12 词连续重合。
- `.claude-plugin/` Claude Code 插件与 marketplace 清单。

## 参考书目与版权口径

本 skill 的内容是对下列两本书的读书笔记式二次创作:方法论、结构模型、清单用自己的话重写,英文只收通用学术短语并重新归类,所有例句为自写;审阅阶段对机检抓不到的"整表沿用原书结构"也做了重组。仓库不包含原书文本,原书 PDF 不在仓库中。

1. Hilary Glasman-Deal 著,雷锦志、李晓文、武林晓译.《英语科技写作(第二版)》. 世界图书出版公司, 2023.(原著 *Science Research Writing for Native and Non-Native Speakers of English*, 2nd ed., World Scientific, 2021)
2. 范逸洲、童士敦、毛君.《英文学术写作实战》. 清华大学出版社, 2024.

请购买原书获取完整内容。
