# 英文 SCI 写作 Skill 实施计划

> **给执行代理:** 按 superpowers:subagent-driven-development 逐任务派发子代理执行;步骤用 `- [ ]` 复选框跟踪。每个子代理只做自己任务里的事,不跑 git 命令(由主会话统一处理)。

**目标:** 把两本写作教材提炼成一个可被 Claude Code / Codex 等 agent 直接加载的「英文 SCI 论文写作」skill,放进一个公开 GitHub 仓库。

**架构:** 三层:`sources/`(本地原书与抽取文本,**永不入库**)→ `notes/`(按书按章的中文阅读笔记,二次创作,入库)→ `skills/sci-writing/`(SKILL.md 路由 + `references/` 分主题指南,是最终产品)。`scripts/verify.sh` 是唯一验证入口。

**技术栈:** Markdown;`pdftotext`/`pdftoppm`(poppler,本机已有);Python 3 标准库(`scripts/check_overlap.py`);bash。**无 OCR 工具**:扫描版用 agent 多模态直接读渲染页。

**设计依据(本文即 spec):** 见下方「设计决策」。

## 设计决策(已定,执行时不要重议)

1. **仓库 = 当前文件夹** `~/github/SCI-Writingskill` 就地 `git init`,GitHub 公开库 `Zenine/SCI-Writingskill`。
2. **两本 PDF 有版权,绝不入库**:移入 `sources/`,`.gitignore` 同时写 `sources/` 与 `*.pdf`;`verify.sh` 硬检查没有任何 pdf / sources 被跟踪。
3. **内容口径 = 读书笔记式二次创作**:方法论、结构模型、自检清单用自己的话重写;英文短语库只收通用学术短语并重新归类,不整页照搬书中词表;不得连续抄录书中任何一整段原文。README 里列明参考书目并写清这一口径。
4. **语言约定**:SKILL.md、references、notes、README 的说明性文字用简体中文;英文句式模板、短语、示例保留英文原样(那是产品本身)。
5. **技能形态**:标准 agent skill 布局 `skills/sci-writing/SKILL.md` + `references/*.md`,SKILL.md 只做「用户要写/改哪一部分 → 读哪个 reference」的路由与总流程,细节全部下沉到 references。附 `.claude-plugin/plugin.json`,可 `claude plugin` 安装,也可整目录拷到 `~/.claude/skills/`。
6. **两本书的角色**:
   - 书 A《英语科技写作(第二版)》Glasman-Deal 著,雷锦志等译,506 页,**有文字层**,按论文各节(引言/方法/结果/讨论/结论/摘要/标题/清单)给结构模板+词汇+语法。→ 主要供 references 01–06、12。
   - 书 B《英文学术写作实战》范逸洲/童士敦/毛君,清华大学出版社 2024,311 页,**扫描版无文字层**,讲伦理、读者意识、故事线、骨架、段落逻辑、动词、风格、中国作者常见错误。→ 主要供 references 00、07–11。
7. **提交边界**:只有「建库初始化」这一步提交并推送(用户明确要求建库);后续 skill 内容完成后**不自动提交**,汇报 git 状态由用户决定。所有 commit 不加 AI 署名。
8. **验证入口**:`scripts/verify.sh`。检查项见 Task 2。

## 全局约束

- 不跟踪 `*.pdf`、`sources/`。
- notes/references 中任何连续 ≥ 12 个英文单词的片段不得与原书文本重合(`check_overlap.py` 在本地有 `sources/text/` 时执行;CI/无源文本时跳过并打印 SKIPPED)。
- 每个 reference 文件顶部必须有一行 `> 来源:书A 第N单元 / 书B 第N章`,便于追溯。
- 文件名日期一律 `YYYY-MM-DD`。
- SKILL.md frontmatter 必须含 `name: sci-writing` 与 `description:`(description 写触发场景,不超过 1024 字符)。

## 文件结构

```
SCI-Writingskill/
├── README.md                      用途、安装、结构、参考书目与版权口径
├── AGENTS.md                      给 agent 的仓库规则(PDF 不入库、二次创作口径、语言、验证入口)
├── TODO.md / CHANGELOG.md
├── .gitignore                     sources/  *.pdf  /tmp 等
├── .claude-plugin/plugin.json
├── scripts/
│   ├── extract_text.sh            书A→sources/text/bookA-pNNN.txt(逐页);书B→sources/pages/bookB-NNN.png(100dpi)
│   ├── check_overlap.py           12-gram 英文重合检查
│   └── verify.sh                  验证入口
├── sources/                       (gitignored) 原书 PDF、text/、pages/
├── notes/
│   ├── bookA-glasman-deal/unit-0.md … unit-8.md
│   └── bookB-fan-tong-mao/ch-01.md … ch-NN.md
├── skills/sci-writing/
│   ├── SKILL.md
│   ├── references/
│   │   ├── 00-workflow.md              总流程:故事线→骨架→分节→润色→自检
│   │   ├── 01-introduction.md          引言四步模型、时态、词汇
│   │   ├── 02-methods.md               方法结构、被动/主动、a/the
│   │   ├── 03-results.md               结果结构、确定性连续统
│   │   ├── 04-discussion-conclusion.md 讨论/结论模板、情态动词
│   │   ├── 05-abstract.md              摘要类型与模板
│   │   ├── 06-title-keywords.md        标题与关键词
│   │   ├── 07-paragraph-logic.md       G-S / Old-to-New / Problem-Solution / Process、衔接
│   │   ├── 08-verbs-tense-voice.md     动词、时态、语态、名词化、there be
│   │   ├── 09-academic-style.md        学术风格、简洁、代词、缩写
│   │   ├── 10-chinese-author-pitfalls.md 中国作者常见错误清单
│   │   ├── 11-ethics-and-readers.md    伦理声明、引用、读者意识
│   │   └── 12-submission-checklist.md  投稿前自检清单
│   └── samples/
│       ├── methods-draft-zh.md         测试输入:一段中文医疗 AI 方法描述
│       └── expected-points.md          评审要点(测试用)
└── docs/plans/2026-09-06-sci-writing-skill-plan.md
```

---

### Task 1: 建库初始化(主会话执行)

**Files:** 创建 `.gitignore`、`README.md`、`AGENTS.md`、`TODO.md`、`CHANGELOG.md`、`.claude-plugin/plugin.json`、`skills/sci-writing/SKILL.md`(占位 frontmatter)、`scripts/verify.sh`(最小版);移动 PDF 到 `sources/`。

- [x] `mkdir -p sources && mv *.pdf sources/`
- [x] 写 `.gitignore`:`sources/`、`*.pdf`、`*.png`、`__pycache__/`、`.venv/`
- [x] 写最小 `scripts/verify.sh`(见 Task 2 完整版;此处先含 pdf/sources 未跟踪检查 + SKILL.md frontmatter 检查)
- [x] 写 README/AGENTS/TODO/CHANGELOG 骨架与 plugin.json
- [x] `git init -b main && bash scripts/verify.sh` → 期望 PASS
- [x] `git add -A && git commit -m "init: SCI 写作 skill 仓库骨架"`(无 AI 署名)
- [x] `gh repo create Zenine/SCI-Writingskill --public --source=. --push`
- [x] `git ls-files | grep -i pdf` → 期望空输出

### Task 2: 文本抽取与验证脚本

**Files:** `scripts/extract_text.sh`、`scripts/check_overlap.py`、`scripts/verify.sh`(完整版)。

**Interfaces:**
- Produces: `sources/text/bookA-p{NNN}.txt`(书 A 逐页,NNN 三位 PDF 页码)、`sources/pages/bookB-{NNN}.png`(书 B 逐页 100dpi)。
- Produces: `python3 scripts/check_overlap.py <目录...>`,退出码 0=无重合,1=有重合并打印文件:行:片段;无 `sources/text/` 时打印 `SKIPPED` 退出 0。

- [x] 写 `extract_text.sh`:书 A 用 `pdftotext -f N -l N -layout` 循环 1..506;书 B 用 `pdftoppm -r 100 -png` 输出到 `sources/pages/`。
- [x] 运行,确认 `ls sources/text | wc -l` = 506,`ls sources/pages | wc -l` = 311。
- [x] 写 `check_overlap.py`:把 `sources/text/*.txt` 合并、正则抽英文单词序列、建 12-gram 集合;扫描参数目录下所有 `.md`,同法切 12-gram,命中即报。
- [x] 自测:临时建一个含书 A 原句的 md,期望退出 1;删除后期望退出 0。
- [x] 完整 `verify.sh`:① `git ls-files` 无 pdf/sources;② SKILL.md 有 `name:`/`description:`;③ SKILL.md 中引用的每个 `references/*.md` 文件存在,且 references 目录下每个文件都在 SKILL.md 被引用;④ 每个 reference 首 5 行含 `> 来源:`;⑤ 调用 `check_overlap.py notes skills`;任一失败非零退出。
- [x] 运行 `bash scripts/verify.sh` → 当前阶段 ③④ 因文件未建会失败,把 ③④ 写成「references 目录不存在时跳过」以保持骨架可过;记录到 TODO。

### Task 3: 读书笔记 —— 书 A(有文字层,4 个并行子代理)

**Files:** `notes/bookA-glasman-deal/unit-{0..8}.md`。

分工(PDF 页码按目录换算,正文页码 = 目录页码 + 约 22,子代理先用 `sources/text/` grep 单元标题校准):
- A1:前言+引言+第一单元(怎么写引言)→ `unit-0.md`、`unit-1.md`
- A2:第二、三单元(方法、结果)→ `unit-2.md`、`unit-3.md`
- A3:第四、五、六单元(讨论、结论、摘要)→ `unit-4.md`、`unit-5.md`、`unit-6.md`
- A4:第七、八单元(标题、清单和提示)→ `unit-7.md`、`unit-8.md`

每份笔记固定结构:
```
# 书A 第N单元 <标题>
> 来源:书A 第N单元(PDF 页 x–y)
## 核心主张(3–7 条,自己的话)
## 结构模型 / 模板(用自己的话描述各步骤的功能与顺序,不抄例文)
## 语法与语言要点
## 高频通用短语(英文,按功能分组,每组 ≤ 8 条,只收通用学术短语)
## 可直接转化为 skill 规则的条目(每条一句,可检查)
## 疑问 / 与书B可能冲突处
```
- [x] 各子代理读对应 `sources/text/` 页,写笔记。
- [x] 每个笔记完成后跑 `python3 scripts/check_overlap.py notes` → 期望 0。

### Task 4: 读书笔记 —— 书 B(扫描版,4 个并行子代理,多模态读图)

**Files:** `notes/bookB-fan-tong-mao/ch-{01..NN}.md`。

分工:
- B1:第 1、2 章(伦理、读者)
- B2:第 3、4 章(故事线、骨架含摘要模板)
- B3:第 5、6 章(逻辑之桥、动词)
- B4:第 7、8 章(风格、中国作者错误)
- B5:第 9 章(实用写作工具,短)、第 10 章(学术发表的成功秘籍,书页 234–297)及可能的附录

已校准:**书页号 + 14 = PNG 编号**(书页 1 = bookB-015.png);书 B 共 10 章。

每次 Read 不超过 20 页;笔记结构同 Task 3。
- [x] 各子代理读图写笔记。
- [x] 跑 `check_overlap.py notes` → 0(书 B 无文字层,重合检查对其不生效,子代理需自律:不抄整段)。

### Task 5: 合成 references(3 个并行子代理,按主题簇)

**Files:** `skills/sci-writing/references/*.md`。

**Interfaces:** 每个文件首行 H1,第二行 `> 来源:…`,正文段落顺序固定为:何时读本文件 → 结构/规则 → 英文模板与短语 → 常见错误 → 自检清单。

- S1:`01-introduction.md`、`02-methods.md`、`03-results.md`、`04-discussion-conclusion.md`(输入:notes A1–A5)
- S2:`05-abstract.md`、`06-title-keywords.md`、`12-submission-checklist.md`、`11-ethics-and-readers.md`(输入:A6–A8、B ch1–2、B 4.3)
- S3:`00-workflow.md`、`07-paragraph-logic.md`、`08-verbs-tense-voice.md`、`09-academic-style.md`、`10-chinese-author-pitfalls.md`(输入:B ch3–8 + A 各单元语法节)

- [x] 各子代理写文件;书 A 与书 B 冲突处以「更可检查的规则」为准并在文中注明两说。
- [x] 跑 `check_overlap.py skills` → 0。

### Task 6: SKILL.md 路由 + 样例

**Files:** `skills/sci-writing/SKILL.md`、`skills/sci-writing/samples/methods-draft-zh.md`、`samples/expected-points.md`。

- [x] SKILL.md:frontmatter(name/description 含触发词:SCI、英文论文、introduction、methods、abstract、审稿回复、润色、Chinglish);正文 ≤ 150 行:① 适用场景;② 总流程(引用 00);③ 「用户要做什么 → 读哪个文件」路由表;④ 硬规则(先定故事线再写句子、每节先给结构再填内容、输出附自检结果、不得编造引用);⑤ 输出格式约定。
- [x] 样例输入:一段 200 字中文医疗 AI 方法描述;expected-points 列出合格输出必须体现的 6–8 个要点(如时态一致、被动/主动选择、步骤顺序、样本描述、伦理声明位置)。
- [x] `bash scripts/verify.sh` → PASS。

### Task 7: 技能实测(1 个子代理)

- [x] 子代理只读 `skills/sci-writing/`,按 SKILL.md 把 `samples/methods-draft-zh.md` 改写为英文 Methods 段并给自检结果。
- [x] 主会话对照 `expected-points.md` 逐条判定;未覆盖的要点回写到对应 reference 或 SKILL.md 路由。
- [x] 复测一次直到全部要点覆盖。

### Task 8: 收尾

- [x] README:安装方式(拷目录 / plugin)、目录说明、参考书目、二次创作口径、本计划链接。
- [x] CHANGELOG 记录 2026-09-06 完成项;TODO 留未完成项(如:书 B 后续章节笔记、审稿回复信 reference、cover letter)。
- [x] `bash scripts/verify.sh` → PASS;`git status --short` 汇报,不提交。
