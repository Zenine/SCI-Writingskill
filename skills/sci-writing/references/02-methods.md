# Methods(方法)写法

## 何时读本文件

- 用户要写、改写或润色 Methods / Materials and Methods / Experimental / Methodology / Model 等描述"怎么做"的部分。
- 用户有中文方法草稿,需要转成能复现、能自证可靠的英文方法节。
- 审稿意见指出"细节不足以复现""为什么选这个方法""分不清哪些是作者做的、哪些是标准流程"。
- 需要判断方法细节放正文还是放补充材料。
- 本文件提到的其它 reference 只是出处指引;执行时以 SKILL.md 路由表的「先读 / 再读」为必读范围。

前置约定:方法节的名称、篇幅、正文与补充材料的分配比例,一律以目标期刊近期同类论文为准。方法节的唯一功能是让同行能复现并得到相近结果;同时它也在说服读者相信作者称职、细心、可靠。拼写与字符见 `SKILL.md` 硬规则 9;方法节二级标题必须含动作或方法名(Detection of X / Measurement of Y),不能只是对象、模块或材料名,能对应研究问题时在标题前标 RQ1、RQ2(另见 `06-title-keywords.md` 二级标题规则 2)。

## 结构与规则

方法节由 6 个组件组成,是菜单而非必选序列;组件可以交错出现,理由/谨慎/优势语言是贯穿全节的"调味",不是独立段落。

| 序号 | 组件功能 | 信息流作用 | 常用时态 |
|---|---|---|---|
| 1 | 总览或引入:概述做了什么、用了什么、目的是什么;或重述引言中的目标;或先交代材料与设备来源 | 建立顶层框架,让读者与作者共享同一张"地图" | 一般过去时;重述目标可用过去时或现在时 |
| 2 | 材料与方法细节:参数、条件、顺序、设备型号,附理由与谨慎措辞 | 主体,篇幅最大;用精确的顺序词交代步骤先后与时长 | 一般过去时(无施动者被动为主,也可主动) |
| 3 | 描述图表内容(装置图、流程图、样本表) | 把图像纳入叙述 | 一般现在时(图里显示什么) |
| 4 | 与已有方法的关系:相同 / 相似 / 有本质差异,并说明自己选择的合理性 | 把本文方法定位到文献地图上 | 描述别人已建立的方法用现在时;自己怎么改用过去时 |
| 5 | 背景事实:材料属性、设备原理、地区特征 | 填补读者可能缺失的知识,为选择辩护 | 一般现在时 |
| 6 | 指出问题或困难 | 显示作者自知之明;为文末"未来工作"埋线 | 一般过去时;解决方向用 should / will |

细则:

1. 开头三选一:列研究参数做总览;先给材料/设备的来源或背景属性;回指引言的目标。只有期刊读者面窄且都熟悉该方法时才直接从材料细节开头。
2. 自上而下:每个小节/段落以概述性"输入句"开头(In all cases / Most of the tests),再展开细节。
3. 背景给多少看两个问题:所有潜在读者都已知道这个方法吗?理解我的做法还需要知道什么?答案来自目标论文;跨学科读者多,宁多勿少。
4. 每个非显而易见的选择(材料、设备、参数、流程)至少附一个理由或优势说明;标准操作不必(已裁决:不要求每个选择都给理由)。原稿未给理由时不得替作者补造,列入输出末尾的「建议补充」(`SKILL.md` 硬规则 3 优先于本条)。
5. 引用已有方法:界线与 `SKILL.md` 硬规则 4 一致——命名算法/模型(XGBoost、U-Net)、专用软件包与工具、非标准或改自他人的方法须引用,原稿无文献时用 `[REF]` 占位并说明该引什么;教科书级通用方法(逻辑回归、t 检验、交叉验证)不引用也不占位。不能只丢一个引用就让读者自己去查,常见做法是"按 [n] 进行,简述如下"。引文位置紧贴被引方法,放错会把工作误归给别人或误归给自己。
6. 与文献的关系必须标明类型:完全相同(as described in)、相似(adapted from,可说明改动)、有本质差异(unlike / instead of,必须说明差异);差异是本文关键贡献时明确指出。
7. 已知的局限、难点或妥协在方法节首次出现处就提及,用淡化影响 / 降低责任 / 给出解决方向三种策略之一措辞;除下面链式规则所列两类外,不得留到讨论或结论才第一次暴露。
8. 材料、样品、设备、软件给出来源(供应商 / 厂家 / 型号 / 版本),并区分购得 / 获赠 / 自制 / 按标准制备。
9. 时态决定工作归属:过去时 = 本研究所做;现在时 = 标准流程、设备原理、已建立的方法(展开见 `08-verbs-tense-voice.md`)。
10. 消除归属歧义三招:改主动(we collected);加定位词(here / in this work / in their study);用指向本文的主语(The setup used here)。整篇用现在时的领域(数学模型、算法)同样要用定位词标出本文贡献。
11. 图中装置若是本文的,正文明确写为本文所用,不能只写 is shown in Fig. n。
12. 顺序语言:then / next 只表先后不表间隔;涉及时长或间隔用 prior to / until / at which point / after 10 min。
13. 介词:using + 工具、by + doing 过程;with 含义太宽,尽量替换。一句内不得出现 3 个以上互相修饰的介词短语,超出则拆句。
14. 冠词:首次提及的单数可数名词用 a/an 或作定义;关键术语首次出现不直接用 the;a cause of(多因之一)与 the cause of(唯一原因)不同。
15. 引用文献的介词:by / of 接人名或团队,in 接作品或文献条目(described in [12])。
16. 单位、缩写、符号按目标期刊或 SI 现行版本统一。
17. 结尾没有固定组件,常以最后一个流程步骤、统计方法或指出局限收束。
18. 写完逐句核查每句时态是否表达了想要的功能(本文所做 / 标准流程 / 图中所示 / 他人工作)。

局限性位置链式规则(02 / 03 / 04 三处同文):方法、结果中已知的问题在各自节首次提及;只有"需进一步工作才能下结论"与"研究期间的非正式证据"两类可在讨论首次出现;讨论中后段集中一处(医学期刊常单列 Limitations 小节);结论最多一句并与未来工作合并;讨论与结论都不以局限收尾。

### 数据驱动 / 临床回顾性研究的功能步

上表 6 组件与细则 1–18 同样适用;下面把"材料与方法细节"组件按数据驱动研究(机器学习、临床回顾性队列、真实世界数据)常见顺序拆成功能步。每步先给概述句再展开;相邻小步可合并成一段,分段粒度以目标期刊为准(另见 `06-title-keywords.md`);原稿缺哪一步,进「建议补充」而不是补造。顺序默认:数据来源 → 伦理(可紧随数据来源)→ 纳入/排除 → 划分 → 变量 → 模型 → 调参 → 指标 → 可解释性 → 统计分析(最后),以目标期刊为准。

1. **数据来源与时间窗**(机构、数据库、时段、数据类型):Data were retrospectively collected from [database/system] at [institution] between [month year] and [month year].
2. **纳入/排除与最终样本量**(逐条标准、每步剔除数、最终 n,建议配流程图):Records were excluded when [condition]; [n] records were removed for [reason], leaving [n] for analysis (Fig. [n]).
3. **数据划分**(划分单位按患者、比例、是否分层、外部验证集不参与开发):The cohort was split at the patient level into training, validation, and test sets in a [a:b:c] ratio, stratified by outcome.
4. **变量与结局定义**(预测变量来源与编码、结局操作定义与判定时点、缺失值处理):The primary outcome was defined as [definition] within [time] after [index event]; missing values were handled by [method].
5. **模型与对比基线**(模型名称与引用、输入形式、基线选择理由):We developed a [model type] to predict [outcome] from [inputs] [REF] and compared it against [baseline], which represents [current practice].
6. **调参与验证**(搜索范围与方法、交叉验证方案、早停、选模依据):Hyperparameters were tuned by [grid/random/Bayesian] search on the validation set using [metric] as the selection criterion.
7. **评价指标**(主次指标、阈值确定方法、CI 来源):The decision threshold was fixed on the validation set at the value that maximized [criterion] and was then applied unchanged to the test set.
8. **可解释性**(方法、输出形式、所用数据子集):Feature contributions were estimated using [method] [REF] on the test set.
9. **伦理与代码可用性**(位置二选一、全篇一致:紧随数据来源段,或与软件版本一起放方法节末尾;下面默认顺序句取前者):审批机构与批号;遵循的规范(赫尔辛基宣言;动物实验按 ARRIVE 报告);批准日期时点——前瞻性研究早于入组,回顾性研究早于数据提取/分析(可晚于病历产生),并写明回顾性与豁免知情同意依据(批件晚于该时点无法补办,如实说明并咨询期刊,不得回溯改日期;另见 `11-ethics-and-readers.md` 四个伦理检查点表);知情同意或豁免依据;代码可用性。软件与版本归统计分析小节。更多声明句式另见 `11-ethics-and-readers.md`。
- This retrospective study was approved by the [committee] of [institution] (No. [XXXX-XXX]) before data extraction; the committee waived the requirement for informed consent because [reason].(草稿无提取日期时删去 before data extraction 并进「建议补充」)
- The study was conducted in accordance with the Declaration of Helsinki.
- Code is available at [repository] under [license].

### 统计分析小节

医学与数据驱动论文通常单列 Statistical analysis 小节,放在方法节末尾:

1. 每项检验写明方法与适用条件(分布、配对、方差齐性),连续变量与分类变量分开说。
2. 写明显著性阈值与是否双侧。
3. 效应量与置信区间格式固定(OR、95% CI;差值与 95% CI),并说明 CI 的计算方法。
4. 多重比较写明校正方法;未校正的探索性分析明确标为探索性。
5. 样本量或功效说明:有则写依据;原稿没有的进「建议补充」,不补造。
6. 软件与版本、所用包与版本;命名软件包按细则 5 处理引用。

- Continuous variables are presented as mean (SD) or median (IQR) according to their distribution, and were compared between groups by [Student's t test / Mann-Whitney U test].(同句 are presented / were compared 合法:呈现方式是稿件现状,检验是本研究做过的动作)
- Categorical variables are reported as counts (percentages) and were compared by [chi-square test / Fisher's exact test].
- A two-sided P value below 0.05 was considered statistically significant.
- Effect sizes are reported as [odds ratios / mean differences] with 95% confidence intervals estimated by [method].
- P values from [n] pairwise comparisons were adjusted by the [Bonferroni / Benjamini-Hochberg] procedure.
- All statistical analyses in this study were performed in [software] version [x].

## 英文模板与短语

**材料 / 设备 / 样本来源**
- X was purchased from / was obtained from / was supplied by
- X is commercially available / was used as received
- X was collected from / was acquired from
- X was prepared in-house according to
- 例:Reagents were obtained from commercial suppliers and used without further purification.

**概述句与段落输入句**
- A two-step procedure was used to
- In all cases, / In most cases,
- The system consists of three components:
- An overview of the workflow is given in Fig. 1
- 例:Three sets of experiments were performed to assess the effect of X on Y.

**理由与优势**
- in order to / so as to / with the aim of
- to ensure / to prevent / to avoid / to minimize
- was chosen for its / was selected on the basis of
- which allowed / which enabled / thereby
- This approach offers the advantage of
- 例:A stratified split was used to ensure that class proportions were preserved across folds.

**谨慎态度**(只在确实反映操作差异时用)
- Care was taken to
- at least three times / independently
- immediately after / freshly prepared
- randomly assigned / blinded to

**顺序与时间关系**
- prior to / beforehand / in advance
- subsequently / followed by / after which
- immediately / as soon as / once
- until / at which point
- 例:Samples were equilibrated for 30 min prior to measurement, after which the temperature was raised.

**与已有方法的关系**
- 相同:as described in / according to / following [ref] / in accordance with
- 相似:based on / adapted from / a modified version of / with some modifications
- 差异:instead of / unlike / in contrast to the approach of [ref]
- 例:The protocol was adapted from [ref], with the incubation time reduced to 2 h.

**问题与困难(三种策略)**
- 淡化:negligible / minor / only approximate
- 去责:inevitably / unavoidable / it was not possible to / limited by
- 转向好的方面或给出方向:acceptable / reasonably robust / Future work should

## 常见错误

| 错误模式 | 修正原则 |
|---|---|
| 第一句就是具体操作细节(温度、浓度、参数) | 先给总览、目标回指或材料来源,再展开细节 |
| 段落从细节直接开始,没有输入句 | 每段首句是概述,自上而下 |
| 只写"做了什么",不写"为什么这样做" | 非显而易见的选择附理由或优势(in order to / to ensure) |
| 每一步都加 carefully / thoroughly / rigorously | 一律删除;可信度靠写出具体步骤(额外核对、重复次数、盲法),不靠副词 |
| 步骤只用 then / next 串联 | 涉及时长或间隔时用 prior to / until / after N min |
| 无施动者被动 + 现在时,读者以为是标准流程 | 本研究所做用过去时;或加 here / in this study;或改 we |
| 引用他人方法但不说明与本文方法的关系 | 标明相同 / 相似 / 差异,差异必须说清 |
| 只给一个引用让读者自己去查 | 补一句概要:performed as in [n]; briefly, |
| 引文放句尾,整句工作被误归给他人 | 引文紧贴被引的方法或材料 |
| 方法层面的局限第一次出现在讨论或结论 | 在方法节首次出现处提及;例外只有链式规则所列两类 |
| 材料、软件无来源、无版本 | 补供应商 / 厂家 / 型号 / 版本 |
| 一句话里堆四五个介词短语 | 拆句;条件、目的、防护措施分开写 |

## 自检清单

1. 第一句是总览、目标回指或材料来源之一,不是具体操作细节。✓/✗
2. 每个小节/段落以概述性输入句开头。✓/✗
3. 每个非显而易见的方法选择至少附一个理由或优势说明。✓/✗
4. 步骤顺序用能表达时间关系的词,不只用 then / next。✓/✗
5. 本研究所做用一般过去时;标准方法、设备原理、材料属性用一般现在时。✓/✗
6. 每个无施动者被动句都不会被误读为他人工作或标准流程(有定位词或改主动;定位词同一小节内可共享,小节首句必须有)。✓/✗
7. 每个引用的方法都标明了相同 / 相似 / 差异,差异已说清。✓/✗
8. 引文紧贴被引方法,没有笼统放句末。✓/✗
9. 用引用替代完整描述时仍给了一句概要。✓/✗
10. 已知局限在方法节提及,并用淡化 / 去责 / 给方向之一措辞。✓/✗
11. 材料、样品、设备、软件都有来源和型号/版本。✓/✗
12. 没有一句话含 3 个以上互相修饰的介词短语。✓/✗
13. 工具用 using、过程用 by + doing,with 已尽量替换。✓/✗
14. 首次提及的单数可数名词有 a/an 或定义;关键术语首次出现没有直接用 the。✓/✗
15. 本文的装置/流程图在正文中明确写为本文所用。✓/✗
16. 单位、缩写、符号已按目标期刊或 SI 统一。✓/✗
17. 方法节篇幅与正文/补充材料分配向目标期刊近期论文看齐(目标期刊未知时记「待作者确认」,不计 ✗)。✓/✗
18. 逐句核查过每句时态与其功能(本文所做 / 标准流程 / 图中所示 / 他人工作)一致。✓/✗
19. 涉及人或动物数据时有伦理批准声明:机构、批号、规范、批准日期先于入组或数据提取、知情同意或豁免依据(合格写法见 `11-ethics-and-readers.md` 常见错误表"豁免依据"行;要素见功能步 9;句式另见 `11-ethics-and-readers.md`)。✓/✗
20. 统计分析小节含检验方法与条件、阈值、效应量与 CI、多重比较校正、软件版本(见本文件统计分析小节;另见 `12-submission-checklist.md` 第 71–75 条)。✓/✗
