# 回归测试输出:中文方法段 → 英文 Methods(2026-09-07,slim 读取集)

> 输入:`skills/sci-writing/samples/methods-draft-zh.md`;路由:SKILL.md 路由表「写或改 Methods」→ 02 → 08、11;逐句扫描按 10;句长口径按 09a;二级标题按 06 规则 2(02 第 12 行转引)。目标期刊未知,按 SKILL.md 硬规则 10 直接产出。

## 理解确认

假设超过 3 条,改为要点列表(均为「请确认」):

- 故事线(原稿未给,按内容推断,请确认):用入院 24 h 内可得的人口学、化验与用药数据,以 XGBoost 预测 2 型糖尿病住院患者出院后 90 天再入院,并与逻辑回归、随机森林对比;张力陈述(前人认为 X,本文表明 Y)原稿缺失,本节不需要,留待引言/讨论处理。
- 目标期刊/读者未知:按医学与数据驱动论文通行惯例处理——允许编号二级标题、单列 Statistical analysis 小节、美式拼写、ASCII 半角字符(SKILL.md 硬规则 9、10;02 前置约定)。
- 本次只处理 Methods 一节;原稿的「例」按「患者」译(原稿同时用「例」与「患者」),若一名患者有多次住院,计数单位需作者确认。
- 「某三甲医院」译为 a tertiary hospital,机构名留空待作者补;「关键化验」按原稿直译 key laboratory tests,其定义未给。
- 原稿说"回顾性研究免除知情同意",按 11 号文件写成 waived ... because of the retrospective design,不替作者补"仅用去标识数据"等依据。

## 结构

按 02 号文件「数据驱动 / 临床回顾性研究的功能步」排布,伦理紧随数据来源(02 第 52 行默认顺序);原稿缺的步骤不补造,进「建议补充」。二级标题含动作或方法名(06 二级标题规则 2)。

| 小节 | 对应功能步 | 段落功能标注 |
|---|---|---|
| 2.1 Study design and patients | 02 组件 1 总览 → 功能步 1 数据来源与时间窗 → 功能步 2 纳入/排除与最终样本量 → 功能步 9 伦理 | 首句总览(02 细则 1);再数据来源、排除、伦理 |
| 2.2 Data splitting and variable definition | 功能步 3 数据划分 → 功能步 4 变量与结局定义 | 输入句 = 划分;再预测变量、结局 |
| 2.3 Model development and evaluation | 功能步 5 模型与基线 → 6 调参 → 7 评价指标 → 8 可解释性 | 输入句 = 建模;再调参、对比、指标、SHAP |
| 2.4 Statistical analysis | 统计分析小节(02 第 90–108 行) | 软件版本、显著性阈值 |

原稿没有的功能步:缺失值处理(除 30% 排除阈值外)、随机种子/分层、阈值确定、置信区间来源、代码可用性——见「建议补充」。

## 正文

### 2. Methods

#### 2.1 Study design and patients

This retrospective study developed and evaluated a machine learning model for predicting readmission within 90 days after discharge in patients with type 2 diabetes mellitus (T2DM). We retrospectively collected electronic health records (EHRs) of 1,842 patients with T2DM who were admitted to the Department of Endocrinology of a tertiary hospital between January 2021 and December 2023. Of these 1,842 patients, we excluded those younger than 18 years, those hospitalized for less than 48 h, and those for whom more than 30% of key laboratory values were missing. The remaining 1,563 patients were included in the analysis. This study was approved by the Ethics Committee of the hospital (No. 2024-XX-001), and the committee waived the requirement for informed consent because of the retrospective design.

#### 2.2 Data splitting and variable definition

We randomly split the 1,563 included patients into a training set and a test set in a 7:3 ratio. Candidate predictors comprised demographic information, 27 laboratory indicators measured within 24 h of admission, and medication records. The outcome was defined as readmission within 90 days after discharge (90-day readmission).

#### 2.3 Model development and evaluation

We developed an extreme gradient boosting (XGBoost) model [REF] to predict 90-day readmission from these predictors. Hyperparameters were tuned by five-fold cross-validated grid search. The XGBoost model was compared against logistic regression and random forest [REF] as baseline models. Model performance was evaluated using the area under the receiver operating characteristic curve (AUC), sensitivity, specificity, and calibration curves. Feature importance was assessed using Shapley additive explanations (SHAP) [REF].

#### 2.4 Statistical analysis

All statistical analyses in this study were performed in Python version 3.10 using scikit-learn version 1.3 [REF]. A P value below 0.05 was considered statistically significant.

`[REF]` 占位说明(SKILL.md 硬规则 4;02 细则 5):
- XGBoost [REF]:引 XGBoost 原始算法论文(命名算法)。
- random forest [REF]:引随机森林原始论文(命名算法);logistic regression 为教科书级方法,不占位。
- SHAP [REF]:引 SHAP 方法原始论文(命名方法/工具)。
- scikit-learn [REF]:引 scikit-learn 软件包论文(专用软件包)。
- 五折交叉验证、网格搜索为教科书级方法,不占位。

## 改动说明

1. 首句改为总览(做了什么、对象、目的),原稿首句是数据收集细节——02 细则 1、常见错误表第 1 行。
2. 每个小节首句带所有权标记(This retrospective study / We ... / all statistical analyses in this study),小节内其它无施动被动句共享——02 细则 10、自检 6;08 语态规则 1;SKILL.md 硬规则 5。
3. 数据收集句改主动 We retrospectively collected,避免被动动词落在 20 词以上长句末尾——08 语态规则 5。
4. 排除标准改为三个平行的 those ... 结构,"关键化验缺失超过 30%" 写成 for whom more than 30% of key laboratory values were missing,避免 名词 with 名词 的模糊 with——10 E2、E15;02 细则 13。
5. T2DM、EHR、XGBoost、AUC、SHAP 首次出现给全称,此后只用缩写;"出院后 90 天内再入院" 在 2.2 定义为 90-day readmission 后全篇用同一名称——SKILL.md 硬规则 7。
6. 工具一律用 using(using scikit-learn / using SHAP / using the AUC ...),不用 with——02 细则 13、自检 13。
7. 伦理句按 11 号文件模板写机构、批号、豁免依据;原稿无数据提取日期,按 02 第 86 行括注删去 before data extraction——02 功能步 9。
8. 统计句只写原稿给的软件版本与 P 阈值;不补 two-sided、检验方法、CI(原稿未给)——SKILL.md 硬规则 3 优先于 02 统计分析小节规则 1–5。
9. 所有本研究动作用一般过去时;无标准流程/设备原理句,故全节无现在时——02 细则 9;08 总表 Methods 行。

## 自检结果

**核心五项 + 伦理项**

- 时态 ✓:全节均为一般过去时,描述本研究所做;无"我们做了"却用现在时的句子(08 自检 1、2;02 细则 9、自检 5、18 逐句核过)。
- 语态/所有权 ✓:四个小节首句分别有 This retrospective study / We / We / in this study;其余无施动被动句(Hyperparameters were tuned ... / Model performance was evaluated ...)在同一小节内共享定位(02 自检 6;08 自检 4;SKILL.md 硬规则 5)。
- 结构 ✓:首句总览;各小节输入句先概述后细节;功能步顺序 数据来源 → 伦理 → 划分 → 变量 → 模型 → 调参 → 指标 → 可解释性 → 统计(02 自检 1、2;二级标题含动作,06 规则 2)。
- 强度匹配 ✓:本节无结论句、无避险词、无因果动词(08 自检 15)。
- 术语缩写 ✓:T2DM、EHR、XGBoost、AUC、SHAP 首次给全称;90-day readmission 定义后统一使用;无同义词轮换(10 E11 无命中)。
- 伦理声明 ✗:有审批机构类别、批号、回顾性与豁免依据,但缺遵循规范(赫尔辛基宣言)与批准日期是否早于数据提取的说明(原稿未给,不补造;见「建议补充」1–2)(02 自检 19;11 自检 1)。

**本节 reference 自检清单判为 ✗ 的条目**

- 02-methods #3 ✗:7:3 划分、XGBoost、30% 缺失阈值、48 h 住院时长等非显而易见选择均无理由——原稿未给,不补造(硬规则 3),进「建议补充」5。
- 02-methods #11 ✗:XGBoost 实现所用软件包及版本未给;机构名、伦理委员会全称未给——进「建议补充」3、8。
- 02-methods #19 ✗:同上"伦理声明"项。
- 02-methods #20 ✗:统计分析小节缺检验方法与适用条件、是否双侧、效应量与 CI 计算方法、多重比较校正、样本量依据——原稿只给软件版本与 P 阈值,进「建议补充」6–7。
- 11-ethics #1 ✗:同"伦理声明"项。

**N/A(无法判定,不计 ✗)**

- 02-methods #7、#9(引用方法的相同/相似/差异类型):原稿未说明 XGBoost、随机森林、SHAP 是否照用或改动,无法标注类型;默认按"照用"写,见「建议补充」9。
- 02-methods #10(已知局限在方法节提及):原稿未提任何方法层面局限,无从判定。
- 02-methods #15(装置/流程图归属):本节无图。
- 02-methods #16(单位、缩写、符号按期刊统一):h、% 按 SI;P 是否斜体、数字千分位写法依期刊,期刊未知。
- 08 #3(引用前人发现的时态按最新文献核对):本节无引用前人发现。
- 11 #3–#7(利益冲突、资助、数据可用性、作者贡献、致谢):属稿件末尾声明段,不在本节范围且原稿未给。
- 11 #8(事后数据处理写明并给理由):30% 缺失排除已写,理由未给(并入 02 #3);排除后剩余缺失值如何处理原稿未给,见「建议补充」4。
- 09a 段长:从短草稿改写,段落均值不作硬指标;四小节正文分别为 123、49、68、26 词(按 09a 空白分隔 token 口径实际计数),2.2 与 2.4 低于 80 词区间,属信息量有限所致(09a 使用规则第 2 条)。

**10 号清单逐句扫描(并入自检口径)**

- E1–E23 无命中。
- 保留的 warning:
  - W11(comprise vs include)/ 位置 2.2 第 2 句 / Candidate predictors comprised demographic information, 27 laboratory indicators ..., and medication records. / 级别 warning / 保留理由:原稿"模型输入包括 A、B、C"读作完整列表,故用 comprised;若还有其它输入,应改 included 或补全——列入「待作者确认」。
- 09a 句长:2.1 第 3 句(Of these 1,842 patients, we excluded ...)31 词,超过 30 词触发拆句检查;该句为三项平行列举,列举式 and 不计超载,句意单一,保留不拆。其余各句 ≤ 30 词。

**待作者确认**

1. 02 #17:方法节篇幅与正文/补充材料分配需对照目标期刊近期论文。
2. 06 规则 7 / 08:是否允许编号二级标题、每小节仅一段是否需合并,按目标期刊。
3. W11:comprised 是否确实覆盖全部模型输入。
4. 10 自检 17:提交前请至少一位合著者通读。
5. 计数单位:1,842 / 1,563 是患者数还是住院次数;若一人多次住院,划分是否按患者。

## 建议补充

1. 伦理:遵循规范(如 Declaration of Helsinki)是否可写;伦理委员会全称。
2. 伦理批准日期与数据提取/分析日期的先后(批号 2024-XX-001 提示批准于 2024 年,晚于病历时段属正常,但须早于数据提取;若不满足,如实说明并咨询期刊,不得回溯改日期——02 功能步 9;11 四个检查点表)。
3. 机构名(投稿时是否匿名依期刊)、"三甲"是否需按期刊惯例写为 tertiary grade A。
4. 缺失值处理:排除 >30% 缺失患者后,剩余缺失值如何填补;"关键化验"的定义与具体项目;27 项化验指标清单(可放补充材料)。
5. 选择理由:为何 7:3 划分、为何选 XGBoost 为主模型、为何以 48 h 与 30% 为阈值;划分是否分层、随机种子。
6. 调参与评价:网格搜索的超参数范围与选模指标;五折交叉验证在训练集还是全体上做;各指标在哪个集合上计算(默认应为测试集);灵敏度/特异度的阈值如何确定;AUC 等指标的置信区间来源(如 bootstrap 次数)。
7. 统计分析:组间比较的检验方法与适用条件(连续/分类变量分开),P 值是否双侧,多重比较校正,样本量或功效依据。
8. 软件:XGBoost 实现所用软件包及版本;SHAP 实现所用软件包及版本;随机森林与逻辑回归是否均来自 scikit-learn。
9. 引用方法的关系类型:XGBoost、随机森林、SHAP 是照用(as described in)还是有改动(adapted from);有改动须说明改在哪。
10. 结局定义细节:再入院是否限本院、是否全因再入院、如何从病历判定;研究数据类型(结构化病历/化验系统)。
11. 代码可用性声明(若期刊要求)。

## 衔接提示

方法中每个可核对的步骤在结果节应有回应:排除流程对应一张患者筛选流程图与各步剔除人数;7:3 划分对应训练集/测试集基线特征表;XGBoost 与逻辑回归、随机森林的对比对应 AUC、灵敏度、特异度与校准曲线的并列报告;SHAP 对应一张特征重要性图。讨论节不得首次暴露方法层面的局限(02 链式规则),若作者要写"单中心、回顾性、缺外部验证"等局限,应先在方法节相应位置以淡化/去责/给方向措辞提及。

## 使用体验反馈

1. `SKILL.md` 第 49 行写"09 按需",但没有给出何时算"需"的判据;本次未读 09,只能自行判断草稿未触发 09 特有问题(etc./非正式/问句/缩写体例),合规性靠猜。
2. `SKILL.md` 第 37 行 Methods 路由只列 02 → 08、11,但 `references/02-methods.md` 第 12 行把二级标题写法转引到 06 规则 2,实际必须多读一个路由表外的文件,建议路由表「再读」列补 06(仅二级标题规则 2)。
3. `references/02-methods.md` 第 108 行统计模板 "All statistical analyses were performed in [software] version [x]." 无定位词,与同文件第 209 行自检 6"小节首句必须有定位词"冲突——当 Statistical analysis 单列小节时,照抄模板首句即违规;建议模板改为 "All statistical analyses in this study were performed ...".
4. `references/02-methods.md` 第 52 行默认顺序把伦理放在数据来源之后,而第 85–88 行把伦理写成功能步 9(最后),两处位置不一致,首次使用需自己裁决。
5. `references/10-chinese-author-pitfalls.md` 第 64 行 W11 只说 comprise 接全部成分、include 接部分,没有说中文"包括"完整性不明时默认译哪一个;本次只能标「待作者确认」。
6. `SKILL.md` 第 72 行"只列出本节 reference 自检清单中判为 ✗ 的条目",未说明「再读」文件(08、10、11)的自检清单是否也算"本节 reference";本次一并列出,口径需明确。
7. `references/02-methods.md` 第 86 行模板的豁免理由 "because [reason]" 与 `references/11-ethics-and-readers.md` 第 26 行"说明豁免知情同意的依据"都没有说"仅因回顾性设计"是否算合格依据;原稿只给"因为是回顾性研究",只能原样译出并进「建议补充」。
8. `references/09a-metrics-table.md` 第 19 行"摘要与方法节中三项以上的列举式 and 不计"与第 16 行"> 30 词触发拆句检查"叠加时,一个 31 词的三项列举句到底算不算需说明理由,规则没给合并判据;本次按"触发检查、句意单一保留"处理。

## 实际读取清单

| 文件 | 是否完整读完 |
|---|---|
| `skills/sci-writing/SKILL.md` | 完整(77 行) |
| `skills/sci-writing/references/02-methods.md` | 完整(227 行) |
| `skills/sci-writing/references/08-verbs-tense-voice.md` | 完整(212 行) |
| `skills/sci-writing/references/11-ethics-and-readers.md` | 完整(203 行) |
| `skills/sci-writing/references/10-chinese-author-pitfalls.md` | 完整(168 行) |
| `skills/sci-writing/references/09a-metrics-table.md` | 完整(28 行) |
| `skills/sci-writing/references/06-title-keywords.md` | 部分:grep 行号索引 + 第 61 行「二级标题规则」至文末(第 61–143 行);第 1–60 行未读 |
| `skills/sci-writing/samples/methods-draft-zh.md` | 完整(4 行) |
| `references/09-academic-style.md`、`00-workflow.md`、`12-submission-checklist.md` 及其它 | 未读(09 按需未触发;00、12 不在 Methods 路由) |
| `samples/expected-points-*`、`samples/README.md`、`tests/`、`notes/`、`docs/` | 按任务要求未读 |
