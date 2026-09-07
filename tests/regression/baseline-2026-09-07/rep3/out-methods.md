# Methods

## Study design and data source

This retrospective cohort study used electronic health records (EHRs) of patients with type 2 diabetes mellitus (T2DM) admitted to the Department of Endocrinology of a tertiary teaching hospital between January 2021 and December 2023. The study was approved by the hospital's Institutional Review Board (approval no. 2024-XX-001), which waived the requirement for informed consent owing to the retrospective design and the use of de-identified data. The study was conducted in accordance with the Declaration of Helsinki, and reporting follows the TRIPOD (Transparent Reporting of a multivariable prediction model for Individual Prognosis Or Diagnosis) statement.

## Study population

A total of 1,842 hospitalizations for T2DM were identified during the study period. Patients were excluded if they (1) were younger than 18 years, (2) had a length of stay shorter than 48 hours, or (3) had more than 30% of the key laboratory variables missing. After applying these criteria, 1,563 patients were included in the final analytic cohort.

## Outcome

The primary outcome was all-cause hospital readmission within 90 days after discharge from the index admission. Readmission events were ascertained from the hospital's EHR system.

## Predictors

Candidate predictors were extracted from the EHR and comprised three domains: (1) demographic characteristics; (2) 27 laboratory indices obtained within the first 24 hours of admission; and (3) medication records during the index admission. Only information available during hospitalization was used as model input to avoid leakage of post-discharge information.

## Data partitioning

The cohort was randomly split into a training set and a held-out test set at a ratio of 7:3. The training set was used for model development and hyperparameter tuning, and the test set was reserved exclusively for final performance evaluation.

## Model development

The primary prediction model was developed using the eXtreme Gradient Boosting (XGBoost) algorithm. Hyperparameters were selected by grid search with five-fold cross-validation on the training set. For comparison, logistic regression and random forest models were trained on the same predictors using the same training data and cross-validation procedure.

## Model evaluation

Discrimination was assessed on the test set using the area under the receiver operating characteristic curve (AUC), together with sensitivity and specificity. Calibration was evaluated by calibration curves comparing predicted probabilities with observed event rates. Model interpretability was examined using SHapley Additive exPlanations (SHAP) to quantify the contribution of each predictor to the model output.

## Statistical analysis

All analyses were performed in Python (version 3.10) with scikit-learn (version 1.3) and the XGBoost library. A two-sided P value of less than 0.05 was considered statistically significant.

---

## 主要处理决定(中文说明)

1. **结构化分节**:按医学 AI 期刊常见的 Methods 结构拆为研究设计与数据来源、研究人群、结局、预测变量、数据划分、模型构建、模型评价、统计分析,并把伦理声明移至研究设计段(多数期刊要求伦理声明在 Methods 开头)。
2. **引入 TRIPOD 与赫尔辛基宣言声明**:原稿未提,但这是预测模型类论文的通用惯例;若实际未按 TRIPOD 撰写,请删去该句或改为核对后再保留。
3. **“某三甲医院”译为 “a tertiary teaching hospital”**,保持匿名化;投稿时通常需替换为真实机构名。
4. **对结局做了限定性表述**:原稿只说“90 天内再入院”,我按常规写成 “all-cause hospital readmission” 并说明由院内 EHR 确证;如实际为特定病因再入院、或含跨院数据,请修正。
5. **补充“仅使用住院期间信息、避免泄漏”一句**:这是审稿人常问的点,原稿隐含但未明说;若与实际不符请删除。
6. **术语首次出现给出全称并缩写**(EHR、T2DM、AUC、SHAP、XGBoost),符合期刊要求。
7. **明确测试集只用于最终评价、超参数只在训练集上调**,原稿未区分,这一表述有利于回应过拟合质疑。
8. **保留原稿所有数字与版本号**(1,842、1,563、7:3、27 项化验、五折、Python 3.10、scikit-learn 1.3、批号 2024-XX-001),未做增删;伦理批号中的 “XX” 为占位符,请投稿前替换。
9. **未补充的内容(建议作者补齐)**:缺失值处理方法、类别不平衡处理、随机种子、校准指标(如 Brier score)、置信区间的计算方式(如 bootstrap)、比较模型间差异所用的统计检验;这些是审稿人常见追问,但原稿没有依据,我没有凭空编造。
