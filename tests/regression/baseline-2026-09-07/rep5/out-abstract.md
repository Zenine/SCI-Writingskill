# Abstract(一般式,英文)

Patients with type 2 diabetes mellitus (T2DM) face a high risk of readmission within 90 days of hospital discharge, yet existing general-purpose readmission scores show limited discrimination in this population, and evidence from Chinese cohorts remains scarce. We aimed to develop and internally validate an interpretable machine learning model for predicting 90-day readmission in hospitalized Chinese patients with T2DM. In this single-center retrospective study, we included 1,563 patients admitted to the endocrinology department of a tertiary hospital between January 2021 and December 2023. Patients were randomly split into training and test sets at a 7:3 ratio. Candidate predictors comprised demographic characteristics, 27 laboratory tests obtained within 24 hours of admission, and medication records. An extreme gradient boosting (XGBoost) model was developed and compared with logistic regression and random forest, and SHapley Additive exPlanations (SHAP) was used to quantify feature contributions. In the test set, XGBoost achieved an area under the receiver operating characteristic curve (AUC) of 0.84 (95% CI 0.80–0.88), outperforming logistic regression (0.76) and random forest (0.81), with a sensitivity of 0.79 and specificity of 0.77; the calibration curve closely followed the diagonal. The five most influential predictors were glycated hemoglobin, length of stay, number of hospitalizations in the preceding year, estimated glomerular filtration rate, and insulin use. The model identifies patients at high risk of 90-day readmission with good accuracy and may support pre-discharge intervention decisions. However, the findings are based on data from a single center, and external validation is required before clinical implementation.

**Word count: 247**

---

## 主要处理决定(中文说明)

1. **结构**:按通用医学 AI 期刊非结构化摘要惯例,依次写背景与缺口 → 目的 → 方法 → 结果 → 结论与局限,不加小标题,单段成文。
2. **补写目的句**:原稿没有明确目的句,补了 "We aimed to develop and internally validate..."。用 "internally validate" 而不是 "validate",因为原稿说明只有随机划分的测试集、无外部验证。
3. **"再入院"口径**:结局统一写为 "90-day readmission",未加 "unplanned"(非计划性),因为原稿未说明是否只统计非计划再入院,不替作者补口径。
4. **数据描述**:"某三甲医院" 译为 "a tertiary hospital",未编造医院名或城市;"入院 24 小时内 27 项化验" 写作 "27 laboratory tests obtained within 24 hours of admission"。
5. **模型与指标**:XGBoost、SHAP 首次出现给全称;AUC 展开为 "area under the receiver operating characteristic curve",并保留 95% CI。对比模型的 AUC(0.76、0.81)保留在同一句里,直接体现 "outperforming"。
6. **结论措辞**:原稿 "比较准确" 译为 "with good accuracy","可以帮助医生做出院前干预决策" 弱化为 "may support pre-discharge intervention decisions",避免过度声称;局限性保留原意并补上 "before clinical implementation" 使其成为可操作的下一步,而不是单纯自我否定。
7. **未新增任何原稿没有的数字、统计方法或临床声明**(如校准指标 Brier score、DCA 等均未编造)。
