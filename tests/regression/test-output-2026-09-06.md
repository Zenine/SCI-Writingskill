# 测试输出:中文方法段草稿 → 英文 Methods 段(2026-09-06)

> 输入:`samples/methods-draft-zh.md`。按 `SKILL.md` 路由表「写或改 Methods」执行:先读 `references/02-methods.md`,再读 `08-verbs-tense-voice.md`、`11-ethics-and-readers.md`;切入点按 `00-workflow.md`「切入点表」的「只要写某一节」行(从步 2 进入)。

## 1. 理解确认

- 故事线(从草稿反推,请作者确认):前人预测糖尿病再入院多依赖传统评分或逻辑回归,本文在单中心 2 型糖尿病住院队列上,用入院 24 小时内可得的常规数据训练 XGBoost 模型预测出院后 90 天再入院,并用 SHAP 解释驱动因素。草稿只有"做了什么",没有"前人立场",张力陈述是我反推的,不是原稿事实。
- 目标期刊 / 读者:未知,按通用医学 AI 期刊惯例(专业刊、同行读者,Methods 分小节、含伦理声明与统计小节)处理;若作者给出期刊,以其近 5 年同类文章为准(SKILL.md 硬规则 8)。
- 本次处理的节:仅 Methods;相邻节衔接提示见第 6 部分之后。

## 2. 结构(Methods 二级标题,含动作;每小节一句功能句)

| 小节 | 功能句 | 对应 02 组件 |
|---|---|---|
| 2.1 Study design and data source | 总览:研究类型、目标、数据来源、伦理批准与知情同意豁免 | 组件 1(总览)+ 11 声明规则 1 |
| 2.2 Study population | 纳入总数、排除标准、最终样本量 | 组件 2 |
| 2.3 Data partitioning | 训练集 / 测试集划分及各自用途 | 组件 2 |
| 2.4 Predictors and outcome | 输入变量三组与预测目标定义 | 组件 2 |
| 2.5 Model development | 主模型、超参数确定方式、对比模型 | 组件 2 + 组件 4(与已有方法关系) |
| 2.6 Model evaluation | 评价指标与校准 | 组件 2 |
| 2.7 Model interpretation | SHAP 特征重要性 | 组件 2 + 组件 4 |
| 2.8 Statistical analysis and software | 软件版本、显著性水平 | 组件 2,收束(02 细则 17) |

## 3. 正文

## 2. Methods

### 2.1 Study design and data source

This retrospective cohort study developed and evaluated machine learning models for predicting readmission within 90 days after discharge among inpatients with type 2 diabetes mellitus (T2DM). Electronic medical records (EMRs) were collected from patients with T2DM who were admitted to the Department of Endocrinology of [Hospital name], a tertiary hospital in [City], China, between January 2021 and December 2023. The study was approved by the Ethics Committee of [Hospital name] (approval no. 2024-XX-001), which waived the requirement for informed consent because of the retrospective design.

### 2.2 Study population

In total, 1,842 patients with T2DM were identified during the study period. Patients were excluded from this study if they were younger than 18 years, were hospitalized for less than 48 h, or had more than 30% of the key laboratory values missing. After these exclusions, 1,563 patients were included in the analysis.

### 2.3 Data partitioning

The included patients were randomly divided into a training set and a test set at a ratio of 7:3. In this study, the training set was used for model development and hyperparameter tuning, and the test set was reserved for final evaluation.

### 2.4 Predictors and outcome

Model inputs comprised three groups of variables: demographic characteristics, 27 laboratory indices measured within 24 h of admission, and medication records. The prediction target was readmission within 90 days after discharge, hereafter referred to as 90-day readmission.

### 2.5 Model development

XGBoost [REF] was used as the primary model in this study. Hyperparameters were determined by grid search combined with five-fold cross-validation on the training set. For comparison, logistic regression and random forest [REF] models were trained on the same training set.

### 2.6 Model evaluation

Model performance was assessed using the area under the receiver operating characteristic curve (AUC), sensitivity, and specificity. Calibration was assessed using calibration curves.

### 2.7 Model interpretation

Feature importance was analyzed using Shapley additive explanations (SHAP) [REF].

### 2.8 Statistical analysis and software

All analyses in this study were performed in Python 3.10 using scikit-learn 1.3 [REF]. P < 0.05 was considered statistically significant.

## 4. 改动说明

1. 首句改为研究类型 + 目标 + 对象的总览句,不从操作细节起手(02 细则 1、自检 1)。
2. 全节一般过去时、无施动被动为主,并在 2.1、2.2、2.3、2.5、2.8 加定位词 this study / in this study,使归属可辨认(08 语态规则 1;02 细则 9–10)。
3. 伦理声明按 11「声明段规则 1」写成"机构 + 批号 + 豁免依据"三要素,句式取自 11 的模板;医院名、城市用占位符,不编造(SKILL.md 硬规则 3)。
4. XGBoost、随机森林、SHAP、scikit-learn 为已建立方法/工具,按 02 细则 5 与 SKILL.md 硬规则 4 用 `[REF]` 占位,引文紧贴被引对象;逻辑回归为通用统计方法,未加引用。
5. 对比模型改写为 "For comparison, ... were trained on the same training set",明确与主模型的关系类型(02 细则 6:相似/对照)。
6. 工具一律 using(using calibration curves / using SHAP / using scikit-learn),过程用 by + 名词(by grid search);未用 with(02 细则 13)。
7. 缩写 T2DM、EMR、AUC、SHAP 首次出现给全称(SKILL.md 硬规则 7);"出院后 90 天内再入院"首次定义后统一称 90-day readmission(术语一致)。
8. "hyperparameters were determined by grid search combined with five-fold cross-validation" 保留草稿事实;搜索空间未给,不补(硬规则 3)。
9. 未写图表引用(草稿无图);不添加 Helsinki 宣言、去标识化、随机种子等草稿没有的内容,改列入「建议补充」。
10. 未对"30% 缺失阈值""7:3 划分""XGBoost 作主模型"补理由:02 细则 4 要求非显而易见的选择附理由,但草稿未给,补理由即编造;已列入「建议补充」请作者提供。

## 5. 自检结果

- 时态:✓ 全部"本研究所做"用一般过去时;无现在时描述本研究动作(08 两问法;02 自检 5、18)。
- 语态 / 所有权:✓ 无施动被动句所在小节均有 this study / in this study 定位词,或主语指向本文对象(the included patients / model inputs)(08 自检 4;02 自检 6)。
- 结构:✓ 首句为总览而非操作细节;每小节以概述句起首;二级标题含动作或方法名(02 自检 1、2;00 步 3 判据)。✗ 理由/优势语言不足——30% 阈值、7:3、主模型选择均无理由,待作者补充(02 自检 3)。
- 强度匹配:✓ Methods 无结论句,无避险词叠加;未出现 can / could(08 自检 15、17)。
- 术语 / 缩写:✓ T2DM、EMR、AUC、SHAP 首次出现给全称;训练集 / 测试集、90-day readmission 全节各只用一个名称(SKILL.md 硬规则 7)。
- 伦理声明:✓ 含审批机构、批号、豁免知情同意及依据(11 自检 1、2)。✗ 未写遵循的规范(如 Declaration of Helsinki)、去标识化情况;批准年份 2024 晚于数据区间 2021–2023,回顾性研究通常可接受,但需作者确认批准早于数据提取(11 检查点"写作前")。
- 介词 / 藏动作:✓ 无 there be 起句;无一句含 3 个以上互相修饰的介词短语;无 with 表工具(02 自检 12、13;08 自检 7、10)。
- 来源与版本:✓ Python 3.10、scikit-learn 1.3 已给版本。✗ XGBoost、SHAP 的软件包版本未给(02 自检 11)。
- 局限在方法节提及:✗ 草稿未提任何局限(单中心、回顾性、未做外部验证),按 02 细则 7 应在此处首次提及,但草稿无内容,不代作者编写;列入「建议补充」。

## 6. 建议补充(需作者提供,未写进正文)

1. 医院名称与所在城市;是否需要匿名化(双盲评审时保留占位)。
2. 伦理:遵循的规范(Declaration of Helsinki 等);批准日期是否早于数据提取日期;数据是否去标识化。
3. 缺失值处理:对纳入患者剩余缺失的化验值如何处理(插补方法或 XGBoost 原生处理)。
4. "关键化验指标"具体指哪 27 项(可放补充表),以及"关键"的界定。
5. 结局定义:90 天再入院是否为全因、是否限本院、是否含急诊留观;结局来源(EMR 还是随访)。
6. 划分细节:是否按结局分层随机;随机种子;训练集 / 测试集各自样本量与结局事件数。
7. 超参数:网格搜索的参数范围与最终取值;对比模型的超参数设置方式。
8. 评价细节:灵敏度 / 特异度对应的阈值如何确定;AUC 的置信区间与模型间比较方法(如 DeLong 检验);校准曲线是否配合 Brier score 或 Hosmer-Lemeshow;是否做类别不平衡处理。
9. 统计检验:P < 0.05 对应哪些检验(基线比较、模型比较),单侧还是双侧。
10. 软件版本:XGBoost、SHAP 包版本。
11. 非显而易见选择的理由:排除缺失 >30%、7:3 划分、XGBoost 作主模型、五折交叉验证。
12. 局限:单中心、回顾性、无外部验证,按 02 细则 7 在方法节首次提及并给方向(如 external validation will be addressed in future work)。
13. 建议加患者筛选流程图(Fig. 1)并在正文用现在时指图。
14. 本节为中文稿转写;按 00「两书分歧」第 10 条,建议后续英文直接起草。

**与相邻节的衔接提示**(00 切入点表「只要写某一节」要求):Results 二级标题应与 2.5–2.7 对应并含动词(如 "XGBoost outperforms logistic regression and random forest on the test set" / "Admission laboratory indices dominate SHAP feature importance");Introduction 末段需给出 2.1 首句所回指的目标(预测 90 天再入院);Discussion 局限段需回应第 12 条在方法节埋下的局限。

## 使用体验反馈

1. `00-workflow.md` 切入点表「只要写某一节」要求"向用户索取或从摘要/引言推出张力陈述",且「停下来问用户的条件」把"目标期刊未知"列为停下条件;本次任务明确要求直接产出,两者矛盾,我只能反推张力并标注"请确认"、按通用惯例处理期刊,规则里没写"用户明确要求继续时如何降级处理"。
2. `02-methods.md` 细则 4 要求"每个非显而易见的选择至少附一个理由",与 `SKILL.md` 硬规则 3"不编造方法细节"冲突:草稿未给理由时,补理由即编造;两处都没说明冲突时的优先级,我选择了不补并列入「建议补充」。
3. `11-ethics-and-readers.md` 检查点要求"批准日期早于数据采集",但回顾性研究批件常晚于病历产生日期(本例 2024 批号 vs 2021–2023 数据);文件未区分"早于数据产生"与"早于数据提取",判 ✓/✗ 时无据可依。
4. `SKILL.md` 输出格式约定第 5 项列的自检五项(时态、语态/所有权、结构、强度匹配、术语缩写)与 `02-methods.md` 的 18 条自检、`08` 的 19 条自检、`11` 的 22 条自检没有对应关系说明;不清楚是只报五项还是要逐条报三个清单,我按五项 + 伦理项报,并挑选相关条目附编号。
5. `02-methods.md` 全篇以实验科学(试剂、装置、温度)为样例,模板短语(purchased from、mounted、equilibrated)对医学 AI / 回顾性队列研究几乎不适用;缺少数据驱动研究的样板(数据来源、纳排、划分、评价指标、软件版本)。
6. `02-methods.md`「待与书B对照的点」自己承认"伦理声明、知情同意、统计方法的独立小节"是缺口,但路由表只让再读 11;统计小节(检验方法、P 值、置信区间、样本量说明)在 02、08、11 都没有可检查的规则,我按通用惯例处理。
7. `SKILL.md` 硬规则 9"英文用 ASCII"与 `02-methods.md` 模板中的 minimise(英式拼写)、`08` 中的 analysed 并存;文件之间没有统一美式 / 英式拼写的规定,我默认美式。
8. `00-workflow.md` 切入点表要求"只要写某一节"时输出"与相邻节的衔接提示",但 `SKILL.md` 的六段输出格式没有这一项;我把它挂在「建议补充」后面,位置是自己定的。
9. `02-methods.md` 细则 5"众所周知的方法仍需引用"与 `SKILL.md` 硬规则 4"不生成任何文献条目"配合使用时,逻辑回归这类通用统计方法是否也要 `[REF]` 占位,没有界线;我未加。
