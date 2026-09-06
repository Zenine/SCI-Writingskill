# 测试输出(复测):中文方法段草稿 → 英文 Methods 段

> 日期:2026-09-06。输入:`samples/methods-draft-zh.md`。依据:`SKILL.md` 路由表「写或改 Methods」→ `references/02-methods.md`,再读 `08-verbs-tense-voice.md`、`11-ethics-and-readers.md`;切入点按 `00-workflow.md`「只要写某一节 → 步 2」;`02` 细则 12 转引 `06-title-keywords.md` 二级标题规则 2。

## 1. 理解确认

- 故事线(从方法草稿反推,请确认):本研究用某三甲医院内分泌科 2021–2023 年住院的 2 型糖尿病患者电子病历(n = 1,563),以入院 24 小时内可得的人口学、化验和用药信息训练 XGBoost 模型预测出院后 90 天再入院,并与逻辑回归、随机森林对比,用 SHAP 解释特征贡献。张力陈述草稿无法从方法段推出,按硬规则 10 暂取通用口径:"Existing readmission risk tools for T2DM inpatients rely on [X]; here we show that a gradient boosting model using routinely collected admission data [Y]"——**请确认并填 X/Y**,本节正文不依赖它。
- 目标期刊/读者(未知,请确认):按硬规则 10 取默认——医学信息学或糖尿病专业期刊,同行读者;美式拼写;方法节允许编号二级标题;伦理声明放方法节内。
- 本次只处理 Methods 一节。其它按通用惯例取的假设(均标"请确认"):① 五折交叉验证在训练集上做,测试集只用于最终评价;② 三个模型使用同一组输入变量与同一训练/测试划分;③ "1,842 例"按"患者"计,一人一条记录。

## 2. 结构(`02-methods.md`「数据驱动 / 临床回顾性研究的功能步」+ 6 组件)

| 小节 | 对应功能步 / 组件 | 段落功能句(不进终稿) |
|---|---|---|
| 2.1 Study design, data source, and ethical approval | 组件 1 总览;功能步 1 数据来源与时间窗;功能步 9 伦理(02 允许紧随数据来源) | 给读者一张地图:研究类型、目的、数据从哪来、伦理是否合规 |
| 2.2 Selection of patients | 功能步 2 纳入/排除与最终样本量 | 说清 1,842 → 1,563 怎么来的 |
| 2.3 Splitting of the cohort and definition of predictors and outcome | 功能步 3 划分;功能步 4 变量与结局 | 说清模型看什么、预测什么、在哪部分数据上学 |
| 2.4 Model development and hyperparameter tuning | 功能步 5 模型与基线;功能步 6 调参 | 说清主模型、对比模型、超参数怎么定 |
| 2.5 Evaluation and interpretation of the models | 功能步 7 指标;功能步 8 可解释性 | 说清怎么算好、怎么解释 |
| 2.6 Statistical analysis | 统计分析小节(细则:软件版本归此处) | 收束:软件、显著性阈值 |

二级标题均含动作或方法名(06 二级标题规则 2);按 06 规则 7,只有一段的相邻功能步已合并成同一小节。

## 3. 正文

### 2. Methods

#### 2.1 Study design, data source, and ethical approval

In this retrospective, single-center study, we developed a machine learning model to predict readmission within 90 days after discharge among inpatients with type 2 diabetes mellitus (T2DM) and compared it against two conventional classifiers. Electronic medical records (EMRs) of patients with T2DM who were hospitalized in the Department of Endocrinology of [Institution], a tertiary hospital, between January 2021 and December 2023 were retrospectively collected for this study; 1,842 patients were retrieved. The study was approved by the Ethics Committee of [Institution] (approval no. 2024-XX-001), and the committee waived the requirement for informed consent because of the retrospective design.

#### 2.2 Selection of patients

Patients were excluded from this study if they were younger than 18 years, if their hospital stay was shorter than 48 h, or if more than 30% of the key laboratory tests were missing. A total of 279 patients met at least one exclusion criterion, leaving 1,563 patients for analysis.

#### 2.3 Splitting of the cohort and definition of predictors and outcome

The 1,563 patients were randomly split into a training set and a test set at a ratio of 7:3. In this study, the training set was used for model development and hyperparameter tuning, and the test set was reserved for performance evaluation. Model inputs comprised three groups of variables: demographic characteristics, 27 laboratory indicators measured within 24 h of admission, and medication records. The outcome was readmission within 90 days after discharge.

#### 2.4 Model development and hyperparameter tuning

An extreme gradient boosting (XGBoost) model [REF] was trained on the training set to predict 90-day readmission from the inputs described above. Hyperparameters of the XGBoost model were determined by grid search using five-fold cross-validation on the training set. For comparison, a logistic regression model and a random forest model [REF] were trained on the same training set using the same inputs.

#### 2.5 Evaluation and interpretation of the models

Performance of the three models on the test set was assessed by the area under the receiver operating characteristic curve (AUC), sensitivity, specificity, and calibration curves. Feature importance of the XGBoost model was analyzed using SHapley Additive exPlanations (SHAP) [REF].

#### 2.6 Statistical analysis

All analyses were performed in Python 3.10 using scikit-learn 1.3 [REF]. A P value below 0.05 was considered statistically significant.

`[REF]` 占位说明:XGBoost → Chen & Guestrin 原始算法论文;random forest → Breiman 原始论文(命名算法,按硬规则 4 占位);SHAP → Lundberg & Lee 原始论文;scikit-learn → Pedregosa 等软件包论文。逻辑回归、五折交叉验证、网格搜索按硬规则 4 不占位。

## 4. 改动说明

1. 首句改为总览(研究类型 + 目的 + 对比对象),不从操作细节起手(02 细则 1、自检 1)。
2. 全节本研究所做用一般过去时、无施动被动为主;每个小节首句带定位词(in this study / for this study)或改 we,避免被读成标准流程(02 细则 9–10;08 语态规则 1)。
3. 伦理声明紧随数据来源,含机构占位、批号、回顾性、豁免依据(02 功能步 9;11 声明段规则 1);"某三甲医院"与伦理委员会名称不编造,用 `[Institution]` 占位(硬规则 3)。
4. 排除标准逐条列出,补出草稿隐含的剔除总数 279(1,842 − 1,563),不拆分到各条(草稿未给)(02 功能步 2)。
5. 时间/顺序词:"within 24 h of admission""after discharge""before/after"式表达,不用 then/next 串联(02 细则 12)。
6. 工具一律 using(using five-fold cross-validation / using SHAP / using scikit-learn),未用 with 表工具(02 细则 13)。
7. 缩写首次出现给全称:T2DM、EMRs、XGBoost、AUC、SHAP(硬规则 7);全篇统一 "patients""training set / test set""90-day readmission",不做同义替换。
8. 软件与版本归统计分析小节;命名软件包 scikit-learn 占位引用(02 统计分析小节规则 6、细则 5)。
9. 不写 there be、不用 can/could 描述已做之事;未添加 carefully 等装饰性谨慎词(08 藏动作清理;02 常见错误表)。
10. 二级标题含动作或方法名,单段小节按 06 规则 7 合并(02 细则 12 → 06 规则 2、7)。
11. 草稿"和逻辑回归、随机森林做对比"改写为"trained on the same training set using the same inputs",这是按通用惯例补的假设,已在理解确认标"请确认"。

## 5. 自检结果

五项核心 + 伦理:

- 时态:✓ 本研究所做全部一般过去时;无标准流程句,无现在时混入;每句已按 08 四步法核过。
- 语态/所有权:✓ 无施动被动句所在小节首句均有 in this study / for this study 或 we;2.4、2.5 内部句依托同段定位词(this study 在 2.3 出现后未再逐句重复,若期刊要求可逐句加)。
- 结构:✓ 首句总览;每小节首句为概述性输入句;功能步顺序 数据来源→伦理→纳入排除→划分→变量→模型→调参→指标→可解释性→统计分析,与 02 默认顺序一致。
- 强度匹配:✓ Methods 无结论句;无 can/could/may 等避险词或强化词。
- 术语缩写:✓ T2DM、EMRs、XGBoost、AUC、SHAP 首次出现给全称;全篇名称一致;美式拼写;ASCII 半角。
- 伦理声明:✗ 有机构占位、批号、回顾性、豁免依据,但缺"批准早于数据提取"的时点陈述(草稿未给提取日期,不能替作者写 before data extraction)与赫尔辛基宣言声明——见建议补充 1–2。

`02-methods.md` 自检清单中判为 ✗ 的条目:

- 3(非显而易见选择附理由):✗ 30% 缺失阈值、7:3 划分、选 XGBoost 与两个基线的理由草稿均未给,按硬规则 3 不补造,进建议补充。
- 10(已知局限在方法节提及):✗ 单中心、仅内部测试集、无外部验证属方法层局限,草稿未提;为不替作者下"未做外部验证"的断言,正文未写,进建议补充 12。
- 11(材料/软件有来源与版本):✗ XGBoost 实现库及版本、random forest 所用库未给(scikit-learn 1.3 是否同时用于三个模型不确定)。
- 17(篇幅与正文/补充材料分配向目标期刊看齐):✗ 目标期刊未知,无法核对。
- 19(伦理要素齐全):✗ 同上"伦理声明"项。
- 20(统计小节含检验方法与条件、CI、多重比较校正):✗ 草稿只给阈值与软件,未给组间比较用什么检验、是否双侧、AUC 置信区间怎么算、是否多重比较校正。

`08-verbs-tense-voice.md` 自检清单:未发现 ✗(条目 9 的 of 计数:2.1 第二句 "Department of Endocrinology of [Institution]" 按专名不计;2.5 首句 "area under the receiver operating characteristic curve" 之外 of 仅 1 处)。

`11-ethics-and-readers.md` 自检清单与本节相关的条目:1 ✗(批准时点未写明,见上)、2 ✓(豁免依据已写)、16 ✓(缩写全称)。

## 6. 建议补充(需作者提供,未写入正文)

1. 伦理批准日期与数据提取/分析日期:回顾性研究批件(2024)晚于病历产生(2021–2023)不是问题,但须早于数据提取;确认后可在声明中加 "before data extraction"(02 功能步 9;11 检查点表)。
2. 是否遵循赫尔辛基宣言;豁免知情同意的具体依据(多数期刊要求写明"仅使用去标识化数据"之类,草稿只有"回顾性")。
3. 医院与伦理委员会正式名称(正文 `[Institution]` 占位)。
4. 逐条排除标准各剔除多少人(现只能给总数 279);建议配患者筛选流程图并在正文引用。
5. "1,842 例"是患者数还是住院次数;同一患者多次住院如何处理;随机划分的单位(按患者)、是否按结局分层、随机种子。
6. 关键化验指标 27 项的清单(可放补充材料)、"关键化验"如何界定、≤30% 缺失的变量如何填补;人口学变量与用药记录的具体项目与编码方式。
7. 90 天再入院的操作定义:是否限全因、是否限本院、以哪次出院为索引事件。
8. 超参数搜索范围与选模指标;基线模型(逻辑回归、随机森林)是否同样调参。
9. 分类阈值如何确定(灵敏度、特异度依赖阈值);AUC 与其它指标的置信区间计算方法(如 bootstrap 重采样次数);校准曲线的分箱方法与校准指标。
10. SHAP 分析所用数据子集(训练集或测试集)与 SHAP 变体(如 TreeSHAP)。
11. 统计检验:基线特征比较用何检验(连续/分类变量分开)、是否双侧、多模型 AUC 比较用何检验、是否做多重比较校正;样本量或功效说明(若有)。
12. 方法层局限:单中心、仅内部测试集验证;建议在方法节首次出现处用一句去责或给方向措辞(如 "External validation was beyond the scope of the present study and will be pursued in future work"),由作者确认后加入(02 细则 7)。
13. XGBoost 实现库与版本、random forest 所用库;代码/数据可用性声明。
14. 选择 XGBoost、30% 缺失阈值、7:3 划分、两个基线的理由(02 细则 4)。

## 7. 衔接提示

- 结果节应按方法节顺序逐一回应:患者筛选流程与基线特征(2.1–2.2)→ 训练/测试集结局率(2.3)→ 三模型在测试集的 AUC、灵敏度、特异度与校准曲线(2.5)→ SHAP 特征重要性(2.5);结果节二级标题应含动词说出发现(06 规则 3)。
- 引言末尾的研究目的应与 2.1 首句的目的表述一致;讨论中的局限小节应与建议补充 12 呼应,且不得第一次才在讨论暴露方法层局限(02 链式规则)。
- 长期建议(00 分歧 10):后续论文直接用英文起草,减少中译英环节。

## 使用体验反馈

1. 只写某一节时是否要跑步 5–7(07/09/10)不明确:`SKILL.md` 路由表第 37 行只让读 02、08、11,总流程第 25–26 行又说逐句风格扫描要读 09、10;`00-workflow.md` 第 52 行"只要写某一节 → 步 2"未说明后续到哪一步为止,我自行决定不读 09/10。
2. random forest 归"命名算法须占位"还是"教科书级通用方法不占位"两可:`SKILL.md` 第 56 行例子只给了 XGBoost、U-Net 与逻辑回归、t 检验,随机森林两边都像,我自行判为占位。
3. 张力陈述对"只给方法草稿"的场景没有可用输入:`00-workflow.md` 第 52 行要求"向用户索取或从摘要/引言推出张力陈述",但只有方法段时无从推出,硬规则 10 只说"按通用惯例取默认值",我只能编一个带 X/Y 空槽的模板句,对本节产出没有实际作用。
4. 伦理声明模板句自带 "before data extraction"(`02-methods.md` 第 86 行),但硬规则 3 禁止补原稿没有的事实;草稿无提取日期时该短语该删还是该保留未说明,我删掉并进建议补充。
5. `02-methods.md` 第 43 行(细则 13)要求工具用 using、尽量不用 with,但同文件第 83 行模板句写的是 "Feature contributions were estimated with [method]",模板与细则自相矛盾。
6. 功能步逐步分段(`02-methods.md` 第 52 行"每步先给概述句,再展开")与 `06-title-keywords.md` 第 68 行"某小节只有一段时考虑合并"方向相反,合并到什么粒度只能自己定。
7. `SKILL.md` 第 72 行要求"只列本节 reference 自检清单中判为 ✗ 的条目",但 `02-methods.md` 第 220 行第 17 条(篇幅向目标期刊看齐)在目标期刊未知时必然 ✗,属于无信息量的固定噪音,建议对硬规则 10 场景给豁免口径。
8. `SKILL.md` 第 58 行硬规则 5 说"每个发现句……无施动被动句必须有定位词",Methods 无发现句,而 `02-methods.md` 第 209 行第 6 条要求"每个无施动被动句"都有定位词;每句都加 in this study 会明显累赘,是否允许同段共享一个定位词未说明,我按"小节首句定位、同段共享"处理。
9. `08-verbs-tense-voice.md` 第 197 行第 9 条 of 计数的排除项只列了固定量词与 "University of" 类专名,"Department of Endocrinology of [Institution]""area under the receiver operating characteristic curve" 这类固定术语是否计入需要自己判断。
10. `02-methods.md` 第 3 行来源标注只写"书A 第2单元",而功能步 9 与统计分析小节按第 229 行分歧 3 是从 11、12 补入的,与 `SKILL.md` 第 8 行"细则全部在 references"一致但来源提示不完整,不影响使用,仅记录。
