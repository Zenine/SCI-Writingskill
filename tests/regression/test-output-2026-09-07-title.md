# 回归测试产出:标题、关键词与二级标题(2026-09-07)

输入:`samples/title-draft-zh.md`。路由:SKILL.md 路由表「定标题、关键词、二级标题」→ 先读 `06-title-keywords.md`,再读 `05-abstract.md`;总则加 `10-chinese-author-pitfalls.md`、`09a-metrics-table.md`。

## 1. 理解确认

- 故事线:用入院 24 小时内常规数据,为中国 2 型糖尿病住院患者建立可解释的 90 天再入院预测模型;XGBoost 判别力优于逻辑回归、与随机森林相当,SHAP 给出前五特征;单中心回顾性队列 1,563 例、7:3 划分、仅内部验证。
- 目标期刊未定(综合性医学信息学或糖尿病临床期刊二选一)。按 SKILL.md 硬规则 10 不阻塞:标题按 06 的兜底默认值起草(约 12 词、无缩写、名词短语、不用冒号),期刊画像各项标"默认值,请确认";检索类动作(06 规则 9–10)进「建议补充」。**请确认**。
- 本次处理:候选标题 3 个、关键词 5–6 个、Methods 与 Results 二级标题骨架。不写正文、不写摘要。
- 假设:工作标题中的"研究"不进正式标题(06 前置约定:标题表达产出而非活动);"中国患者"作为读者范围词卸到关键词(06 关键词规则 3)。**请确认**。

## 2. 结构

按 06 的三组规则依次产出:

1. 标题逆向工程六步(无样本 → 走兜底,画像记录表填默认值)→ 3 个候选标题 + 差异 + 推荐。
2. 关键词规则 1–5 → 6 个关键词,标出哪些不在标题里、走哪一路。
3. 二级标题规则 2–3 → Methods(含动作或方法名)、Results(含关系;动词式为主,附短语式备选)。

### 期刊标题画像记录表(06 步 5 固定产出;本次无样本,全部为默认值,请确认)

- 期刊与年份范围:未定 / 样本量 n = 0(数据来源:默认值)
- 词数均值与范围:约 12 词(默认值,请确认);可接受区间 6–18 词(均值 ±50%)
- 含缩写比例:默认不用缩写(请确认)
- 以 A/An 开头比例:默认不以 A/An 开头(请确认)
- 含冒号比例:默认不用冒号(请确认)
- 含方法词 / 含目的或应用词 / 含评价词 / 句子式标题比例:默认名词短语、含应用词、评价词仅限有证据者(请确认)
- 关键词偏宽还是偏专:默认按 MeSH 上位词 + 少量技术词(请确认)

## 3. 正文

### 3.1 候选英文标题

**候选 A(推荐)**

> Interpretable prediction of 90-day readmission in hospitalized patients with type 2 diabetes using routine admission data

- 16 词(09a 口径,`90-day` 计 1 词),在默认均值 12 词的 +50% 内。
- 形态:名词短语,无缩写,无冒号,无 A/An,完全落在 06 兜底默认值上;对两类候选期刊(信息学、糖尿病临床)读者都不需要查资料。
- 含贡献(interpretable prediction)与应用(90-day readmission in hospitalized patients with type 2 diabetes)两项(06 规则 1);数据来源 routine admission data 点出"入院即可用"的卖点。
- 评价词只有 interpretable,证据是结果节的 SHAP 前五特征(06 规则 4)。
- 未写入:模型名 XGBoost(卸到关键词)、"24 小时内"(留给摘要方法句)、"中国"(卸到关键词 China)。

**候选 B**

> An interpretable XGBoost model for predicting 90-day readmission in hospitalized patients with type 2 diabetes

- 15 词。以 An 开头,承诺"提出了新模型";本文确实建立并验证了一个模型,符合 06 规则 2。
- 差异:点名方法 XGBoost,利于医学信息学读者检索;代价是 XGBoost 对糖尿病临床读者是需查资料的专名(06 步 2),且丢掉了"常规入院数据"这一应用卖点。
- 适用:目标期刊落在医学信息学、且其近期标题常见算法名时选 B。

**候选 C**

> Ninety-day readmission in type 2 diabetes: development and internal validation of an interpretable gradient boosting model

- 16 词。冒号功能为"领域 : 本文贡献"(06 规则 3);"internal validation"把单中心内部验证的范围写进标题,避免夸大(06 规则 5)。
- 差异:临床预测模型类论文常见的 development and validation 结构,最贴近糖尿病临床期刊惯例;用全称 gradient boosting 替代缩写 XGBoost。代价是用了冒号(默认值不用),且以病种而非患者为对象词,失去 hospitalized 这一人群限定。
- 适用:目标期刊为糖尿病临床期刊、且其近期标题冒号比例高时选 C。

**推荐**:在期刊未定的前提下推荐 **A**——它是唯一同时满足 06 兜底默认值全部四项(约 12 词、无缩写、名词短语、不用冒号)且含贡献 + 应用两项的候选;B、C 各对应一类期刊画像,期刊确定后按画像记录表复核再切换。三者核心术语一致:90-day readmission / type 2 diabetes / interpretable。

### 3.2 关键词(6 个)

1. Type 2 diabetes mellitus(MeSH:Diabetes Mellitus, Type 2;与标题重合)
2. Patient readmission(MeSH 上位词;与标题 readmission 重合)
3. Machine learning(MeSH;**不在标题**,扩大读者面)
4. XGBoost(**不在标题**,补技术术语,吸引信息学读者;候选 B 时与标题重合)
5. Shapley additive explanations(**不在标题**,补技术术语;正文首次出现给全称后用 SHAP)
6. China(MeSH 地理词;**不在标题**,承接"中国患者"的读者范围)

- 6 个中 4 个不在推荐标题 A 里,满足 06 关键词规则 2 的"至少一半";走的是"补技术术语"为主(XGBoost、SHAP)、辅以 MeSH 上位词(Machine learning、Patient readmission)扩读者面。
- 与标题合起来覆盖研究对象(type 2 diabetes、China)、方法(XGBoost、machine learning、SHAP)、场景(hospitalized、admission data)、核心结论概念(90-day readmission、interpretable)(06 关键词规则 5)。
- 期刊要求 5 个时删去 China(其信息可由作者单位与摘要方法句承担)。

### 3.3 Methods 二级标题骨架(每条含动作或方法名,06 二级标题规则 2)

- 2.1 Study design, setting, and data source
- 2.2 Selection of participants: inclusion and exclusion criteria
- 2.3 Definition of the outcome and candidate predictors
- 2.4 Allocation of patients to training and test sets
- 2.5 Model development and hyperparameter tuning
- 2.6 Evaluation of discrimination and calibration
- 2.7 Interpretation of model predictions using SHAP
- 2.8 Statistical analysis
- 2.9 Ethics approval

对应原稿九项:数据来源与人群(2.1)、纳排(2.2)、变量与结局(2.3)、划分(2.4)、模型与调参(2.5)、评价指标(2.6)、SHAP(2.7)、统计(2.8)、伦理(2.9)。2.2 与 2.9 若各只有一段,按 06 规则 7 可分别并入 2.1(期刊允许时伦理声明也常并入 2.1 末段)。

### 3.4 Results 二级标题骨架(含关系;动词式为主,短语式备选,06 二级标题规则 3)

原稿只给了结果的主题与两条定性结论(XGBoost 优于逻辑回归、与随机森林相当;SHAP 给出前五特征),未给基线差异、校准、亚组的方向,这三处动词式标题只能给带 `[...]` 的占位,请作者按数据填入;短语式版本不依赖具体方向,可直接用。

- 3.1 动词式:Readmitted patients differed from non-readmitted patients in [age / glycemic control / comorbidity burden] / 短语式:Comparison of baseline characteristics between readmitted and non-readmitted patients
- 3.2 动词式:XGBoost outperformed logistic regression and matched random forest in discrimination / 短语式:Discrimination of XGBoost compared with logistic regression and random forest
- 3.3 动词式:[The XGBoost model] was well calibrated across the range of predicted risk / 短语式:Agreement between predicted and observed 90-day readmission risk
- 3.4 动词式:[Feature 1, feature 2, ...] contributed most to predicted readmission risk / 短语式:Contribution of individual predictors to predicted readmission risk
- 3.5 动词式:Model performance was consistent [or differed] across [age / sex / ...] subgroups / 短语式:Consistency of model performance across patient subgroups

对应原稿五项:基线特征(3.1)、三模型判别力(3.2)、校准(3.3)、特征重要性(3.4)、亚组(3.5)。方法 2.5–2.7 各在结果 3.2–3.4 有回应;2.6 的"校准"单列 3.3。

## 4. 改动说明

- 工作标题的"……预测研究"不译成 Study of / Research on,改为表达产出的 prediction / model(06 前置约定、常见错误表第 1 行)。
- 不用 with 连接方法与对象,用 using(候选 A)与 for predicting(候选 B)(06 规则 8);"patients with type 2 diabetes" 是疾病名固定医学搭配,保留(10 号清单误报表)。
- 候选 C 用全称 gradient boosting 而非 XGBoost,因默认画像"无缩写";但正文首次出现须写 extreme gradient boosting (XGBoost),并全篇只用 XGBoost 一个名字,不在 model / algorithm / approach 之间轮换(SKILL.md 硬规则 7;05 细则 9)。
- 不把 novel / robust / accurate 写进标题:原稿无对比数据支撑 novel,accurate 的证据未给数字(06 规则 4)。
- Methods 标题全部以动作名词起头(Selection / Definition / Allocation / Evaluation / Interpretation),不留 "Data" / "Variables" 一类对象名(06 常见错误表倒数第 3 行)。
- 拼写按美式(hospitalized),ASCII 半角(SKILL.md 硬规则 9)。

## 5. 自检结果

核心五项:

- 时态:✓ 标题与短语式小标题无限定动词;动词式结果标题一律一般过去时(outperformed / matched / differed / contributed / was),表本研究发现。
- 语态 / 所有权:✓ 动词式结果标题主语均为本研究的模型或队列(XGBoost / the XGBoost model / readmitted patients),读者可辨认为本研究结果;无施动被动句。
- 结构:✓ 三组产出均先给规则再给内容;Methods 九项、Results 五项与原稿一一对应。
- 强度匹配:✓ 标题评价词只有 interpretable(证据 = SHAP);候选 C 写明 internal validation;3.2 的 outperformed / matched 与原稿"优于 / 相当"同强度,未升格为 superior 或 best。
- 术语缩写:✓ 三候选与关键词共用 90-day readmission / type 2 diabetes / interpretable;XGBoost、SHAP 在正文首次出现须给全称(见「建议补充」)。候选 C 标题用 gradient boosting、正文用 XGBoost 属"全称 → 缩写"关系,不算换名,但须在摘要首句兑现。

06 自检清单判为 ✗ 或 N/A 的条目:

- 06-2(收集目标期刊 20–30 条同类标题并填画像表):N/A——期刊未定且本次离线,画像表按默认值填,已标"请确认"。
- 06-3(词数在期刊均值 ±50% 内):N/A——无期刊均值;三候选 15–16 词,均在默认 12 词 +50%(18 词)内。
- 06-15(标题与关键词在搜索引擎的检出读者群):N/A——离线;已进「建议补充」。
- 06-17(结果节二级标题说出关系):✗(部分)——3.1、3.3、3.5 的动词式标题因原稿未给数据方向,只能占位;短语式版本已含关系词(Comparison between / Agreement between / Consistency across),不是纯主题名词。作者填入数据后本条转 ✓。
- 06-18(引言、结果、讨论三组标题一一对应):N/A——本次只产出方法与结果两组,引言与讨论不在范围。
- 06-19(小节前两句出现标题关键词):N/A——无正文。
- 06-20(标题、关键词、摘要、结论同一套术语):标题与关键词已统一;摘要与结论尚无,N/A。

05 自检清单(再读文件,只报与本节直接相关的 ✗):05-20(摘要、标题、关键词、正文结论同一套术语)——无摘要可比,N/A;无 ✗ 项。

10 号清单逐句扫描(新起草文本,格式:位置 / 句子 / 条目号 / 级别 / 改法):

- 候选 A / "...hospitalized patients with type 2 diabetes using routine admission data" / E2 / error / 不报:with 接疾病名为固定医学搭配(10 号误报表白名单);using 表方法,无 with 歧义。
- 候选 A、B、C / interpretable / W3 / warning / 保留:证据为结果节 SHAP 前五特征。
- 候选 C / "interpretable gradient boosting model" / E13 / error / 不报:连续修饰 3 个,未超 4。
- 3.2 动词式 / "XGBoost outperformed logistic regression and matched random forest in discrimination" / E10 超载信号 and / 不报:单个 and 连接两个并列谓语,一个主谓结构。
- 其余条目无命中;拼写统一美式(W16 ✓)。

待作者确认(汇总):

- 06-1:标题应在结果分析完成、贡献确定后定稿——原稿给出的结果是定性描述,请确认数字已定。
- 06-5:只看标题写下的预期与论文结论一致——请作者按候选 A 做一次"兑现"核对(06 步 6)。
- 06-8 / 二级标题规则 1:二级标题提纲请与合作者确认达成共识。
- 10-17:提交前请至少一位合著者通读。

## 6. 建议补充

- 目标期刊:确定后提供该刊近 1–2 年 20–30 条同类标题(不足时 ≥ 8 条),以便重填画像记录表并在 A / B / C 间定稿;同时核对该刊是否允许二级标题、允许几级、是否编号(06 二级标题规则 8)。
- 检索核对(06 规则 9–10):请作者在 Google Scholar 分别带引号与不带引号搜索 "90-day readmission" "type 2 diabetes" "XGBoost" "SHAP",确认术语未被新命名取代;再把推荐标题与关键词丢进搜索引擎,检查检出论文的读者群是否与目标读者一致。
- 缩写全称:正文首次出现处请给 extreme gradient boosting (XGBoost)、SHapley Additive exPlanations (SHAP),并确认 SHAP 全称写法按原始文献。
- 结果方向:3.1(基线差异的具体变量)、3.3(校准是否良好、用何指标)、3.5(亚组划分依据与是否一致)三处动词式标题需要作者提供数据方向后填入。
- "24 小时内"这一数据窗口未进标题,请确认在摘要方法句与 2.3 中写明。
- 关键词数量:请核对期刊要求(5 个时删 China)。

## 7. 衔接提示

- 标题 A 承诺的 interpretable 与 routine admission data,须分别在 2.7 / 3.4(SHAP)与 2.3(变量定义写明入院 24 小时内)兑现;摘要步 4 句应重复标题核心术语 90-day readmission / type 2 diabetes / interpretable(05 自检 20)。
- Methods 2.5–2.7 与 Results 3.2–3.4 一一对应;若最终不做校准或亚组分析,2.6 / 3.3 / 3.5 同步删除,避免方法有步骤而结果无回应。
- 讨论节二级标题后续应对着 3.2–3.5 各配一条(06 二级标题规则 4–5)。

## 使用体验反馈

- SKILL.md 第 41 行:标题任务「再读 05」未限定范围,而 05 与标题直接相关的只有细则 9、11 与自检 20(术语一致、缩写);建议像第 36 行那样注明"只读细则 9、11 与自检 20",少读约 130 行。
- `references/06-title-keywords.md` 第 25 行与第 36 行:无样本时既要"按默认值起草"又要"填好画像记录表各项标默认值",12 项全填"默认值,请确认"是套话;建议允许一行声明"全部默认值"替代逐项填表。
- `references/06-title-keywords.md` 第 64 行(结果节二级标题规则 3):未说明原稿结果方向未知时怎么办(本次 3.1 / 3.3 / 3.5 只能占位);建议加一句"结果方向未给时先出含关系的短语式,动词式留占位并进建议补充,自检 17 标 N/A 而非 ✗"。
- `references/06-title-keywords.md` 第 63 行 vs 第 98 行:规则 2 说方法节标题"必须含动作或方法名",模板却列出 Study design and participants / Statistical analysis 这类无动作词的常规标题;建议在规则 2 后注明"期刊惯例标题(Study design、Statistical analysis、Ethics approval)视为方法名,不报"。
- `references/06-title-keywords.md` 第 133 行(自检 14)与第 57 行(关键词规则 4):要求关键词"走扩大读者面或补技术术语之一",而医学 AI 论文按 MeSH 选词天然是上位词 + 技术词混搭,本次只能写"以 X 为主";建议改为"以其一为主并注明"。
- `references/09a-metrics-table.md` 第 25 行:计数口径未说明紧贴标点的 token(如 `diabetes:`)是否照常计 1 词;本次按 1 词计,建议补一句。

## 读取清单

1. `[LOCAL_PATH]/skills/sci-writing/SKILL.md`(全文,77 行)
2. `[LOCAL_PATH]/skills/sci-writing/samples/title-draft-zh.md`(全文,10 行)
3. `[LOCAL_PATH]/skills/sci-writing/references/06-title-keywords.md`(全文,143 行;先读)
4. `[LOCAL_PATH]/skills/sci-writing/references/05-abstract.md`(全文,153 行;再读)
5. `[LOCAL_PATH]/skills/sci-writing/references/10-chinese-author-pitfalls.md`(全文,135 行;总则)
6. `[LOCAL_PATH]/skills/sci-writing/references/09a-metrics-table.md`(全文,30 行;总则)

未读:samples/ 下 expected-points-*、README.md,tests/、notes/、docs/ 及其它 reference;未运行 git。
