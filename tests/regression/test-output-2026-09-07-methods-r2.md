# 测试输出:中文方法段草稿 → 英文 Methods 段(r2)

> 输入:`skills/sci-writing/samples/methods-draft-zh.md`;执行依据:`SKILL.md` 路由表「写或改 Methods」行 + 总则;目标期刊未知,按硬规则 10 直接产出。

## 1. 理解确认

- 故事线(由方法段反推,请确认):前人对 2 型糖尿病住院患者出院后 90 天再入院的预测多依赖传统统计模型;本文用入院 24 小时内常规 EHR 数据训练 XGBoost 模型,并与逻辑回归、随机森林对比,验证其判别力与校准度并用 SHAP 解释。
- 目标期刊 / 读者:未知,按医学与数据驱动论文通行惯例处理(单列 Statistical analysis 小节、伦理声明紧随数据来源段、美式拼写、二级标题不编号);请确认。
- 本次处理的节:Methods 全节(单次请求只涉及此一节)。
- 写作假设(请确认):(a) 五折交叉验证网格搜索在训练集内完成,测试集只用于最终评价;(b) "AUC" 展开为 area under the receiver operating characteristic curve;(c) "某三甲医院"保留为 a tertiary hospital,不补机构名;(d) 划分单位按患者(原文"把患者……随机分")。

## 2. 结构

按 `02-methods.md`「数据驱动 / 临床回顾性研究的功能步」排序:数据来源 → 伦理(紧随数据来源)→ 纳入/排除 → 划分 → 变量与结局 → 模型与对比基线 → 调参 → 指标 → 可解释性 → 统计分析。每个二级标题含动作或方法名(`06-title-keywords.md` 二级标题规则 2)。

| 段 | 功能步 | 二级标题 |
|---|---|---|
| P1 | 组件 1 总览 + 功能步 1 数据来源与时间窗 | Study design and data collection |
| P2 | 功能步 9 伦理 | Ethics approval |
| P3 | 功能步 2 纳入/排除与最终样本量 | Selection of patients |
| P4 | 功能步 3 数据划分 | Splitting of the dataset |
| P5 | 功能步 4 变量与结局定义 | Definition of predictors and outcome |
| P6 | 功能步 5–6 模型、对比基线、调参 | Model development and comparison |
| P7 | 功能步 7–8 评价指标、可解释性 | Evaluation and interpretation of the models |
| P8 | 统计分析小节(软件版本、阈值) | Statistical analysis |

## 3. 正文

### Methods

**Study design and data collection**

This retrospective study developed and evaluated a machine learning model for predicting 90-day readmission in patients with type 2 diabetes mellitus (T2DM). Electronic health records (EHRs) of patients with T2DM who were hospitalized in the Department of Endocrinology of a tertiary hospital between January 2021 and December 2023 were retrospectively collected. A total of 1,842 patients were identified.

**Ethics approval**

This retrospective study was approved by the Ethics Committee of the hospital (No. 2024-XX-001). The committee waived the requirement for informed consent because the study was retrospective.

**Selection of patients**

Patients were excluded from this study if they were younger than 18 years, had been hospitalized for less than 48 hours, or had more than 30% of key laboratory values missing. After these exclusions, 1,563 patients remained for analysis.

**Splitting of the dataset**

The 1,563 patients included here were randomly split into a training set and a test set at a ratio of 7:3. Model development was performed on the training set, and model performance was evaluated on the test set.

**Definition of predictors and outcome**

The model inputs in this study comprised demographic characteristics, 27 laboratory indicators measured within 24 hours of admission, and medication records. The prediction target was readmission within 90 days after discharge.

**Model development and comparison**

We developed an XGBoost model [REF] to predict 90-day readmission from these inputs. Hyperparameters were determined by grid search using five-fold cross-validation within the training set. Logistic regression and random forest [REF] models were trained on the same inputs as comparators.

**Evaluation and interpretation of the models**

Model performance in this study was evaluated using the area under the receiver operating characteristic curve (AUC), sensitivity, specificity, and calibration curves. Feature importance was assessed using SHapley Additive exPlanations (SHAP) [REF].

**Statistical analysis**

All analyses in this study were performed in Python version 3.10 using scikit-learn version 1.3 [REF]. A P value below 0.05 was considered statistically significant.

`[REF]` 占位说明:XGBoost → Chen & Guestrin 原始算法论文;random forest → Breiman 原始论文;SHAP → Lundberg & Lee 原始论文;scikit-learn → 该软件包的官方引用文献。逻辑回归、五折交叉验证、网格搜索为教科书级通用方法,不占位(硬规则 4;`02-methods.md` 细则 5)。

## 4. 改动说明

1. 首句改为总览句(做了什么、预测什么、对象是谁),不再以"收集病历"的操作细节开头(`02-methods.md` 细则 1、自检 1)。
2. 伦理声明从段末前移到紧随数据来源段,取功能步 9 的"二选一"第一项;原稿无数据提取日期,模板中的 before data extraction 删去并进「建议补充」(`02-methods.md` 第 63–64 行)。
3. 全节本研究所做用一般过去时;无施动被动句每小节首句均带定位词(this study / here / in this study),归属易混处(建模)改 we(`08-verbs-tense-voice.md` 语态规则 1;`SKILL.md` 硬规则 5)。
4. 排除标准由中文名词串改为三个并列的 if 从句,避免 `名词 with 名词` 与 of 串(`10-chinese-author-pitfalls.md` E2、E9)。
5. "用 XGBoost 建模……和逻辑回归、随机森林做对比"拆成三句:模型 → 调参 → 基线,避免一句多想法(`09a-metrics-table.md` 超载信号)。
6. "统计分析用 Python……完成"改为 performed in Python ... using scikit-learn,工具用 using(`02-methods.md` 细则 13)。
7. 全篇统一用 patients 指样本单位、model inputs 指输入、90-day readmission 指结局,不做同义词替换(硬规则 7;E11)。
8. 缩写 T2DM、EHR、AUC、SHAP 首次出现给全称(硬规则 7);AUC 的 ROC 展开为默认惯例,已在理解确认标"请确认"。
9. 未替作者补造任何选择理由(为何 7:3、为何 30%、为何 XGBoost),按硬规则 3 全部进「建议补充」。

## 5. 自检结果

### 核心六项(五项 + Methods 节伦理声明)

- 时态 ✓:本研究所做全部一般过去时;无"标准流程 / 设备原理"句,故无现在时切换。
- 语态 / 所有权 ✓:8 个小节首句均含 this study / here / we;无施动被动句均可判定为本研究所做。
- 结构 ✓:第一句为总览;每段首句为概述性输入句;功能步顺序与 `02-methods.md` 默认顺序一致;二级标题均含动作或方法名。
- 强度匹配 ✓:方法节无结论句、无情态动词、无避险词,不存在强度问题。
- 术语缩写 ✓:T2DM、EHR、AUC、SHAP 首次出现给全称;同一对象全篇一个名称。
- 伦理声明 ✓(部分要素缺):有审批机构类型、批号、回顾性说明、豁免知情同意依据;缺遵循规范与批准时点(见下 02-19)。

### `02-methods.md` 自检清单中判为 ✗ 的条目

- 02-3 ✗:每个非显而易见的选择(7:3 划分、30% 缺失阈值、48 小时住院阈值、选 XGBoost 及两个基线)原稿均未给理由;按硬规则 3 不补造,已进「建议补充」。
- 02-11 ✗:scikit-learn 有版本,但 XGBoost 与 SHAP 软件包版本缺失;数据来源未给系统名称(HIS/EMR 系统);机构名缺失(原稿"某三甲医院")。
- 02-19 ✗:缺遵循规范(赫尔辛基宣言)与批准日期是否早于数据提取/分析的说明;批号 2024 年晚于病历产生(2021–2023)在回顾性研究中合法,但是否早于提取无法判定。
- 02-20 ✗:统计分析小节只有软件版本与 P 阈值;缺具体检验方法与适用条件、是否双侧、效应量与 CI 计算方法、多重比较处理。

### `08-verbs-tense-voice.md` 与 `10-chinese-author-pitfalls.md` 扫描

- 08 清单:1、2、4、7、8、9、10、11、13、14、18 ✓;3 N/A(离线、无具体前人发现句);5、6、12、15、16、17、19 不适用于本节内容(无 Results/Discussion 句、无汇报动词、无结论句、无 can/could)。
- 10 号清单逐句扫描(位置 / 句子 / 条目号 / 级别 / 改法):E1–E23 无命中;W7 命中 "in this study" 类开头 3 处,均在白名单(定位词)保留;W13 "the Ethics Committee of the hospital" 中 the hospital 回指前段已提及的 tertiary hospital,合法保留。其余无命中。
- 句长(`09a-metrics-table.md`):正文 18 句,平均约 16 词;仅排除标准句 31 词(>30 触发检查;三项列举式并列,句意单一,不拆),其余均 ≤ 29 词;无一句 >40 词;单句 and 超过 1 处的仅为三项以上列举(不计)。数据来源句原为 32 词,已拆为两句。

### N/A(无法判定,不计 ✗)

- 02-7 / 02-9:原稿未说明 XGBoost、随机森林、SHAP 是否按原始实现使用还是有改动,无法标注相同/相似/差异。
- 02-10:原稿未提任何方法层面局限;不能替作者补造。
- 02-15:原稿无流程图 / 装置图。
- 02-16:目标期刊未知,单位与缩写按 SI 与通行惯例。
- 06-19(小节前两句出现标题关键词):已尽量做到,但短草稿改写下部分小节只一两句,判定意义有限。

### 待作者确认

- 02-17:方法节篇幅与正文/补充材料分配、二级标题是否编号、是否允许三级标题,需对照目标期刊近期同类论文。
- 10-17:提交前请至少一位合著者通读。
- 理解确认中的四条写作假设(a)–(d)。

## 6. 建议补充

按功能步顺序列出,均为原稿缺失、需作者提供的信息:

1. 数据来源:机构名称(匿名评审时可保留 a tertiary hospital)、EHR 系统名称、数据提取日期。
2. 伦理:伦理委员会全称;是否遵循赫尔辛基宣言;批准日期是否早于数据提取/分析(批号 2024,病历 2021–2023,需说明提取在批准之后)。
3. 纳入标准:如何认定 2 型糖尿病(诊断编码 / 出院诊断);同一患者多次住院时的处理(按患者还是按住院次;1,842 是患者数还是住院次数);"关键化验"具体指哪些指标;每条排除标准各剔除多少例(建议配流程图)。
4. 划分:是否按结局分层;随机种子;是否有独立验证集或外部验证。
5. 变量与结局:27 项化验指标清单;人口学变量清单;用药记录的编码方式;剩余缺失值的处理方法;再入院的操作定义(全因 / 糖尿病相关;本院 / 任何医院;计划内是否排除)。
6. 模型:超参数搜索范围与选模指标;基线模型的超参数设置;选择 XGBoost 及两个基线的理由;三个模型是否用相同输入与预处理;类别不平衡处理。
7. 评价:决策阈值如何确定;AUC 与灵敏度/特异度的置信区间计算方法;校准评价的量化指标(如 Brier score、校准斜率);模型间 AUC 比较的检验方法(P<0.05 对应哪项检验)。
8. 可解释性:SHAP 值在哪个数据集上计算;输出形式(全局重要性 / 个体解释)。
9. 软件:XGBoost 与 SHAP 软件包版本;是否双侧检验;代码可用性声明;样本量或功效说明。
10. 选择理由:7:3 划分比例、30% 缺失阈值、48 小时住院阈值。

## 7. 衔接提示

- 方法中的每个步骤在结果节应有回应:排除流程 → 流程图与基线特征表;7:3 划分 → 训练/测试集样本量与基线特征对比;三个模型 → 测试集上 AUC、灵敏度、特异度与校准曲线的逐模型报告;SHAP → 特征重要性图。
- 引言末的研究目的句应与本节首句总览一致(预测 90 天再入院、对象为 T2DM 住院患者);讨论中的局限应回应本节的单中心、回顾性、无外部验证等设计特点(本节未提局限,讨论中首次出现时属链式规则允许的"需进一步工作"类)。
- 摘要与结论中对模型性能的表述强度不得高于结果节。

## 使用体验反馈

1. `SKILL.md` 第 37 行把 Methods 路由到 06 的"二级标题规则段",但 06 没有锚点,按总则须整文件读完,标题逆向工程六步(`06-title-keywords.md` 第 21–36 行)与本任务无关,建议在路由表给出小节名或行号范围。
2. `06-title-keywords.md` 第 98 行的方法节模板标题 "Study design and participants" 不含动作或方法名,与同文件第 63 行"必须含动作或方法名"的规则不一致,执行时不知该照模板还是照规则。
3. `02-methods.md` 第 57、60 行的模板句假设有独立验证集(stratified / on the validation set),对"只有训练/测试 + 训练集内交叉验证"这种常见设计没有模板,只能自写并标假设。
4. `02-methods.md` 第 63 行要求功能步 9 含"批准日期早于数据提取",但草稿只给批号年份不给提取日期是常态,建议在自检 19 注明"提取日期缺失时标 N/A 还是 ✗",本次按 ✗ 处理但不确定。
5. `SKILL.md` 第 59 行硬规则 7 对"通用缩写默认展开"(如 AUC 默认展开为 ROC 曲线下面积)是否算编造没有口径,本次按"默认展开 + 请确认"处理。
6. `02-methods.md` 统计分析小节第 72–77 行的条目 1–4 默认稿件含假设检验,纯预测模型论文常只写 P 阈值不写检验,建议加一句"原稿只给阈值不给检验时,把'对应哪项检验'进建议补充"。
7. `08-verbs-tense-voice.md` 自检第 3 条(引用前人发现的时态)对 Methods 节几乎恒为 N/A,总则要求每次都过 08 清单时,可注明"仅在含他人发现句时判定"。
8. `10-chinese-author-pitfalls.md` 第 128 行报告格式要求"位置 / 句子 / 条目号 / 级别 / 改法",全绿时只写"无命中"一句,但 W 级白名单保留项(如 in this study)是否必须逐条列出没有说明,本次列出了。

## 读取清单

按读取顺序,均为完整读取:

1. `/home/zenine/github/SCI-Writingskill/skills/sci-writing/SKILL.md`
2. `/home/zenine/github/SCI-Writingskill/skills/sci-writing/samples/methods-draft-zh.md`
3. `/home/zenine/github/SCI-Writingskill/skills/sci-writing/references/02-methods.md`(先读)
4. `/home/zenine/github/SCI-Writingskill/skills/sci-writing/references/08-verbs-tense-voice.md`(再读)
5. `/home/zenine/github/SCI-Writingskill/skills/sci-writing/references/11-ethics-and-readers.md`(再读)
6. `/home/zenine/github/SCI-Writingskill/skills/sci-writing/references/06-title-keywords.md`(再读)
7. `/home/zenine/github/SCI-Writingskill/skills/sci-writing/references/10-chinese-author-pitfalls.md`(总则必读)
8. `/home/zenine/github/SCI-Writingskill/skills/sci-writing/references/09a-metrics-table.md`(总则必读)

未读:samples/expected-points-*、samples/README.md、tests/、notes/、docs/、其它 references(00、01、03、04、05、07、09、12)。未运行 git。
