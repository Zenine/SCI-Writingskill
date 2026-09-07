# 回归测试输出:一般式英文 Abstract(abstract-draft-zh.md,第 2 轮)

日期:2026-09-07。输入:`skills/sci-writing/samples/abstract-draft-zh.md`。按 `SKILL.md` 路由表「写或压缩 Abstract」行执行:先读 `references/05-abstract.md`,再读 `references/08-verbs-tense-voice.md`;总则加读 `references/10-chinese-author-pitfalls.md` 与 `references/09a-metrics-table.md`。

## 1. 理解确认

- 故事线:2 型糖尿病患者出院后 90 天再入院率高,通用再入院评分在该人群判别力有限、针对中国人群的研究少(前人认为 X);本文用单中心 1,563 例住院数据建 XGBoost 模型,测试集 AUC 0.84 高于逻辑回归与随机森林,并给出前五个特征(本文表明 Y)。
- 目标期刊 / 读者:未知。按 SKILL.md 硬规则 10,采用通用惯例:一般式(非结构化)摘要、200-250 词、美式拼写、无引文,读者按临床医学与医疗 AI 期刊设定。**请确认**。
- 本次处理的节:仅 Abstract;正文各节视为已成稿(输入只给摘要材料),自检清单第 1 条标 N/A。

## 2. 结构(05 号文件九步序列在本稿中的落位)

| 句 | 步 | 功能 |
|---|---|---|
| S1 | 1+3 | 宏观入口(90 天再入院率高)与"已知—但未知"空白(通用评分判别力有限、中国人群研究少)按细则 13 合并 |
| S2 | 4 | 本文做了什么,带 In this study, we 归属标记 |
| S3-S5 | 5 | 方法:单中心回顾、样本量与划分、输入变量、模型与对照、特征重要性分析 |
| S6-S8 | 6 | 主要结果:AUC 带 95% CI 与对照参照;灵敏度、特异度、校准;前五特征 |
| S9 | 7+8 | 含义(indicate that)与贡献认领(diabetes-specific tool for a Chinese population) |
| S10 | 9 + 局限半句 | although 前置局限,末句落在应用价值(could help clinicians ...) |

步 2(具体背景)按细则 4 取舍省略:原稿未给独立的具体背景信息,步 1 与步 3 已足以过渡到步 4。

## 3. 正文

Patients with type 2 diabetes are readmitted at high rates within 90 days of hospital discharge, yet existing general-purpose readmission scores offer limited discrimination in this population and studies of Chinese patients remain scarce. In this study, we developed a machine learning model to predict 90-day readmission in Chinese inpatients with type 2 diabetes. We retrospectively analyzed 1,563 patients admitted to the endocrinology department of a single tertiary hospital from January 2021 to December 2023, randomly split 7:3 into training and test sets. Using demographic data, 27 laboratory tests obtained within 24 hours of admission, and medication records, we trained an XGBoost model. We compared this model with logistic regression and random forest; feature importance was ranked using Shapley additive explanations. On the test set, the XGBoost model reached an AUC of 0.84 (95% CI 0.80-0.88), higher than logistic regression (0.76) and random forest (0.81). The model reached a sensitivity of 0.79 and a specificity of 0.77; its calibration curve lay close to the diagonal. Glycated hemoglobin, length of stay, number of hospitalizations in the previous year, estimated glomerular filtration rate, and insulin use contributed most to model predictions. These results indicate that the model identified high-risk patients more accurately than either logistic regression or random forest; the model thus offers a diabetes-specific readmission tool for a Chinese population. Although derived from a single center and not yet externally validated, the model could help clinicians target pre-discharge interventions to high-risk patients.

### 词数(按 09a 口径:空白分隔 token 计一词,`0.80-0.88`、`(0.76)`、`7:3`、`90-day` 各计 1 词)

- 总词数:241(目标 200-250 ✓);句数 10(05 号文件 8-10 句上限内);平均句长 24.1 词(≤ 25 ✓);最长句 34 词(≤ 40 ✓)。
- S1:34 / S2:20 / S3:29 / S4:20 / S5:18 / S6:24 / S7:20 / S8:24 / S9:30 / S10:22。
- 计数命令:`wc -w`,逐句与全文各跑一次;ASCII 检查 `grep -P '[^\x00-\x7F]'` 无命中。

## 4. 改动说明(中文材料 → 英文稿的关键处理)

1. 原稿"能比较准确地识别高风险患者,可以帮助医生做出院前干预决策"拆成两句:含义句只留 indicate 一个避险词,应用句只留 could 一个避险词(08 阶梯规则 1;SKILL.md 硬规则 6)。
2. "校准曲线贴近对角线"译作 lay close to the diagonal,不升级为 well calibrated(05 细则 7)。
3. 灵敏度 / 特异度原稿无参照值,按 05 细则 6 原样给数字,不补限定语,进「建议补充」。
4. "SHAP 分析"只出现一次,按 05 细则 11 不用缩写,写全称 Shapley additive explanations;AUC、CI 为领域公认缩写直接用。
5. "针对中国人群的研究少"落在 S1 的 studies of Chinese patients remain scarce,并在 S9 认领为 diabetes-specific readmission tool for a Chinese population,这是原稿背景直接支撑的贡献,未加 first / novel。
6. 步 1 与步 3 合并为 S1(34 词)以把句数压回 10 句;拆开写会到 11 句,超出 05 号文件的 8-10 句上限。
7. S3 中"2021 年 1 月到 2023 年 12 月"用 from ... to 而非 between ... and,避免一句内 and > 1(09a 超载信号)。

## 5. 自检结果

### 核心五项

- 时态 ✓:背景与空白一般现在时(S1);研究动作与结果一般过去时(S2-S8);含义与贡献一般现在时(S9 indicate / offers);应用句现在时 + could(S10)。与 08 总表 Abstract 行一致。
- 语态 / 所有权 ✓:S2-S5、S6-S8 均有 we / this study / the model 或过去时标记;唯一无施动被动 feature importance was ranked(S5)共享 S2 的 In this study 定位词(SKILL.md 硬规则 5 同一小节可共享)。
- 结构 ✓:步 1、3、4、6、8 全部在位;第一句是宏观入口;末句落在价值;结果句(S6-S8)68 词占 28%,方法+结果(S3-S8)155 词占 64%——**超过 05 细则 5 的 60%,见下方 ✗ 项**。
- 强度匹配 ✓:每个结论句一个避险词;摘要主张不高于原稿结果(识别更准确 = 对照 AUC 更高;帮助医生决策 = could help)。
- 术语缩写 ✓:模型全篇 the XGBoost model / the model;readmission、test set、high-risk patients 各只用一个名称;AUC、CI 为公认缩写,无其他缩写。

### 05 号文件自检清单中判为 ✗ 的条目

- 第 7 条 ✗:方法与结果句(步 5-6)合计 155/241 = 64%,超过 60% 上限 4 个百分点。原因:原稿背景只有一句、含义只有一句,可分给步 1-3 与 7-9 的材料有限;要压到 60% 需删方法信息(如输入变量或时间范围),会削弱读者判断"是否读全文"的依据。此处保留,交作者取舍。

### N/A 项

- 第 1 条(全文定稿后重写)N/A:输入只有摘要材料,未见正文。
- 第 2 条(核对目标期刊字数与形态)N/A:目标期刊未知,已按硬规则 10 用 200-250 词一般式。
- 第 8 条(结果数字带限定语)部分 N/A:AUC 有 CI 与两个对照参照;灵敏度、特异度、校准原稿未给参照值,已进「建议补充」,不计 ✗。
- 第 20 条(与标题、关键词、正文结论用同一术语)N/A:本次只写摘要,看不到标题与正文。

### 10 号清单逐句扫描

error 级 E1-E23 无命中。warning 级保留项及理由:

- S1 / `Patients with type 2 diabetes`、S2 / `inpatients with type 2 diabetes` / E2 / warning 裁决 / 保留:patients with + 疾病名是医学固定表达,关系唯一(患有),读者无需猜。
- S4 / `Using demographic data, ..., we trained` / W8 / warning / 保留:-ing 短语的施动者与主句主语 we 一致,且是 05 号文件步 5 给定句式 Using X, we ...。
- S3 / `..., randomly split 7:3 into training and test sets` / W4 / warning / 保留:过去分词后置修饰 patients,施动者为 we(本句主语),句内可辨认。
- S9 / `either logistic regression or random forest` / E15 / 已按规则用 either ... or 表两项选择,不报。
- 09a 超载信号:各句 and ≤ 1(S4、S8 的 and 属三项以上列举,不计;S3 training and test sets 为 1 个);which 0;单句逗号最多 3(S4、S8),未触发 ≥ 4 的拆句检查。

### 待作者确认

- 05 第 6 条评价词 diabetes-specific 需在正文引言与讨论中能指到"通用评分在糖尿病人群判别力有限"的证据。
- 10 第 17 条:提交前请至少一位合著者通读。
- 目标期刊确定后核对:字数上限、是否允许 95% CI 与括号数字、是否要求结构化小标题、英式 / 美式拼写。

## 6. 建议补充

- 灵敏度 0.79、特异度 0.77 的参照对象(对照模型的对应值,或所用判定阈值),以便按 05 细则 6 加限定语。
- 校准的量化指标(如 Brier 分数或校准斜率 / 截距),"贴近对角线"目前只能定性表述。
- 结局定义:90 天再入院是否限于本院、是否限于糖尿病相关原因、是否排除计划性再入院。
- 27 项化验的选择依据与缺失值处理方式(摘要不写,但正文方法需要)。
- 若期刊要求缩写:SHAP 是否作为关键词保留;XGBoost 等命名算法在正文首次出现处需 `[REF]`(摘要按 05 细则 12 不放)。

## 7. 衔接提示

- 摘要 S6-S8 中的每个数字(AUC 与 CI、两个对照的 AUC、灵敏度、特异度、校准、前五特征)在结果节须逐一出现且数值一致;S9 的 diabetes-specific / Chinese population 两个认领点须在引言空白段与讨论贡献段各有对应句。
- 结论节强度不得高于本摘要(indicate + could 两档),不得升级为 demonstrate / can。

## 使用体验反馈

1. `references/05-abstract.md` 第 53 行:细则 13 末尾"短摘要常需合并步 1 + 3(背景直接接空白),允许"句子未写完,不知"允许"什么。
2. `references/05-abstract.md` 第 37 行 与 `references/09a-metrics-table.md` 第 20 行:前者要求总句数 8-10 句,后者规定一句 and > 1 即超载;两者一起压时几乎必然要合并出 30+ 词长句,建议写明冲突时以哪条为先(本稿选择保句数、改 between...and 为 from...to 规避)。
3. `SKILL.md` 第 59 行 与 `references/05-abstract.md` 第 51 行:硬规则 7"缩写首次出现给全称"与 05 细则 11"领域公认缩写(AUC、CI)可直接用"表述冲突,建议硬规则 7 补一句"公认缩写例外见 05 细则 11"。
4. `references/05-abstract.md` 第 51 行:"只出现一两次的不缩写"对 SHAP 这类以缩写为通行名的方法名不友好——写全称 Shapley additive explanations 反而降低可检索性;建议加"以缩写为通行名的方法名可直接用缩写"例外。
5. `SKILL.md` 第 55 行:硬规则 3"不编造"未说明"补写缩写的标准全称"(如 SHAP 展开)是否算添加原稿未给的事实;本稿按"标准全称不算编造"处理,建议明示。
6. `references/10-chinese-author-pitfalls.md` 第 56 行 与 `references/05-abstract.md` 第 31 行:W8 报所有句首 -ing,而 05 步 5 模板推荐 Using X, we ...;建议在 10 号文件「常见错误(误报)」表加一行白名单。
7. `references/05-abstract.md` 第 45 行:细则 5 的 60% 以"句"计还是以"词"计未写明;本稿按词计得 64%,按句计(6/10)也是 60% 边界,两种口径结论可能不同。
8. `references/09a-metrics-table.md` 第 20 行:and 计数的例外只写"摘要与方法节中三项以上的列举式 and 不计",两项固定搭配(training and test sets、sensitivity and specificity)是否计入未说明。

## 读取清单

按 SKILL.md 路由表与总则确定的必读范围,全部完整读取,未读其它文件:

1. `/home/zenine/github/SCI-Writingskill/skills/sci-writing/SKILL.md`(全文,77 行)
2. `/home/zenine/github/SCI-Writingskill/skills/sci-writing/references/05-abstract.md`(先读,全文,154 行)
3. `/home/zenine/github/SCI-Writingskill/skills/sci-writing/references/08-verbs-tense-voice.md`(再读,全文,154 行)
4. `/home/zenine/github/SCI-Writingskill/skills/sci-writing/references/10-chinese-author-pitfalls.md`(总则必读,全文,133 行)
5. `/home/zenine/github/SCI-Writingskill/skills/sci-writing/references/09a-metrics-table.md`(总则必读,全文,29 行)
6. `/home/zenine/github/SCI-Writingskill/skills/sci-writing/samples/abstract-draft-zh.md`(输入材料,全文,8 行)

未读:samples/expected-points-*、samples/README.md、tests/、notes/、docs/、其它 references(06、09 等路由表未列入本任务)。未运行 git。
