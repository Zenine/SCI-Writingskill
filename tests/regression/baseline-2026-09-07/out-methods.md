# Methods

## Study design and data source

This retrospective cohort study used electronic health record (EHR) data from patients with type 2 diabetes mellitus (T2DM) admitted to the Department of Endocrinology of a tertiary teaching hospital between January 2021 and December 2023. The study was approved by the hospital's institutional ethics committee (approval no. 2024-XX-001). Because of the retrospective design and the use of de-identified data, the requirement for informed consent was waived. The study was conducted in accordance with the Declaration of Helsinki and is reported following the TRIPOD (Transparent Reporting of a multivariable prediction model for Individual Prognosis Or Diagnosis) guidelines.

## Study population

All hospitalized patients with a diagnosis of T2DM during the study period were screened (n = 1,842). Patients were excluded if they (i) were younger than 18 years, (ii) had a length of stay shorter than 48 hours, or (iii) had more than 30% of key laboratory variables missing. After applying these criteria, 1,563 patients were included in the final analysis.

## Outcome

The primary outcome was all-cause hospital readmission within 90 days after discharge from the index admission, ascertained from the hospital EHR system.

## Predictor variables

Candidate predictors comprised demographic characteristics, 27 laboratory parameters measured within the first 24 hours of admission, and medication records. [Details of the specific variables, the handling of missing values, and any variable transformation should be specified here or provided in a supplementary table.]

## Model development and validation

Patients were randomly divided into a training set and a test set at a 7:3 ratio. The primary prediction model was developed using the extreme gradient boosting (XGBoost) algorithm. Hyperparameters were tuned by grid search with five-fold cross-validation within the training set. Logistic regression and random forest models were developed on the same data as comparators. All models were trained exclusively on the training set, and the test set was held out for final performance evaluation.

## Model evaluation and interpretation

Discrimination was assessed using the area under the receiver operating characteristic curve (AUC), sensitivity, and specificity. Calibration was assessed using calibration curves. Feature importance and the contribution of individual predictors to model output were examined using SHapley Additive exPlanations (SHAP) analysis.

## Statistical analysis

All analyses were performed in Python (version 3.10) with the scikit-learn library (version 1.3). [Descriptive statistics and group-comparison tests should be specified here.] A two-sided P value of less than 0.05 was considered statistically significant.

---

## 处理说明(中文)

**时态与语态**
- 全篇采用一般过去时(描述已完成的研究行为),这是 Methods 段的标准写法。
- 以被动语态为主(“Patients were excluded”“Models were developed”),符合医学期刊惯例;开头用 “This retrospective cohort study used…” 做主动句以点明研究设计。

**结构**
- 原稿是一段流水式叙述,我按 TRIPOD(多变量预测模型报告规范)常见顺序拆成小节:研究设计与数据来源 → 研究人群 → 结局 → 预测变量 → 模型开发与验证 → 模型评价与解释 → 统计分析。医学 AI 期刊审稿人通常按此逐项核对。
- 伦理批准和知情同意豁免前移至“研究设计”小节,这是多数期刊要求放在 Methods 开头或独立小节的做法。

**术语处理**
- “某三甲医院” → “a tertiary teaching hospital”,未编造医院名称;投稿时通常需写具体机构名(可在盲审稿中隐去)。
- “再入院” → 明确为 “all-cause hospital readmission”,原稿未说明是全因还是糖尿病相关,我按更常见口径写为全因,并提示作者确认。
- XGBoost、SHAP 首次出现给出全称,AUC 采用 “area under the receiver operating characteristic curve” 标准展开。
- 排除标准改为编号列举(i)(ii)(iii),便于读者核对纳排流程。

**缺失信息的处理**
原稿缺少若干可投稿论文必需的信息,我没有凭空编造,而是在正文中用方括号 [ ] 标出占位提示,作者需补齐后删掉方括号:
1. 27 项化验指标的具体清单及缺失值处理方法(插补还是删除)。
2. 描述性统计与组间比较所用检验方法(原稿只写了 P<0.05,没写用什么检验)。
3. 结局“再入院”是否为全因、如何确认(是否含外院再入院)。

**我主动补充的通用表述(需作者确认属实)**
- “de-identified data”(数据已去标识)——这是知情同意豁免的常见依据,原稿未提,请确认。
- 遵循赫尔辛基宣言与 TRIPOD 报告规范——医学 AI 预测模型论文的标准声明,若实际未按 TRIPOD 撰写请删除。
- “All models were trained exclusively on the training set, and the test set was held out…”——原稿隐含但未明说,补上以回应审稿人对数据泄漏的常见质疑。

**其他**
- 随机分组比例 “7:3” 保留原样并写为 “at a 7:3 ratio”;若有随机种子或分层抽样(按结局分层)建议补充。
- 原稿末尾的“P<0.05”按 SCI 惯例改为 “two-sided P value of less than 0.05”,并提示确认是否为双侧检验。
