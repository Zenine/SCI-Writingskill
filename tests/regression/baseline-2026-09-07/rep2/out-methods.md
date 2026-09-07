# Methods

## Study design and setting

This retrospective cohort study was conducted at the Department of Endocrinology of a tertiary teaching hospital in China. Electronic health records (EHRs) of patients with type 2 diabetes mellitus (T2DM) hospitalized between January 2021 and December 2023 were retrieved. The study was approved by the hospital's institutional ethics committee (approval no. 2024-XX-001). Owing to the retrospective design and the use of de-identified data, the requirement for informed consent was waived. The study is reported in accordance with the TRIPOD (Transparent Reporting of a multivariable prediction model for Individual Prognosis Or Diagnosis) statement.

## Study population

A total of 1,842 hospitalization records were initially identified. Patients were excluded if they (i) were younger than 18 years, (ii) had a length of stay of less than 48 hours, or (iii) had more than 30% missing values among the key laboratory variables. After applying these criteria, 1,563 patients were included in the final analysis. The included cohort was randomly split into a training set and an independent test set at a 7:3 ratio. The test set was held out and used only for final performance evaluation.

## Outcome

The primary outcome was all-cause hospital readmission within 90 days after discharge from the index hospitalization, coded as a binary variable.

## Predictors

Candidate predictors comprised three domains: (i) demographic characteristics; (ii) 27 laboratory indices measured within the first 24 hours of admission; and (iii) in-hospital medication records. All predictors were extracted from structured EHR fields and were restricted to information available during the index hospitalization, so that no post-discharge data could leak into the model inputs.

## Model development

An extreme gradient boosting (XGBoost) classifier was developed as the primary model. Hyperparameters were tuned by grid search with five-fold cross-validation within the training set, and the configuration yielding the highest mean cross-validated area under the receiver operating characteristic curve (AUC) was selected. For comparison, logistic regression and random forest models were trained on the same training set using the same predictor set and cross-validation scheme.

## Model evaluation

Discrimination was assessed on the held-out test set using the AUC together with sensitivity and specificity. Calibration was assessed using calibration curves comparing predicted probabilities with observed event rates. Model interpretability was examined with SHapley Additive exPlanations (SHAP) values to quantify the contribution of individual features to the predictions and to rank feature importance.

## Statistical analysis

All analyses were performed in Python (version 3.10) with scikit-learn (version 1.3) and the XGBoost library. A two-sided P value < 0.05 was considered statistically significant.

---

## 主要处理决定(中文说明)

1. **结构化为期刊惯用小节**:按医学 AI 期刊常见写法拆成 Study design and setting / Study population / Outcome / Predictors / Model development / Model evaluation / Statistical analysis,原文一段话中的信息全部保留并各归其位。
2. **补入通用惯例表述但未虚构数据**:加了"held-out test set 只用于最终评估""预测变量仅限索引住院期间信息(避免数据泄漏)""按 AUC 选超参""all-cause readmission"等,这些是方法学上合理且通常默认成立的说法,但属于我的补充,**请作者核实是否与实际操作一致**;若并非全因再入院或并非按 AUC 选参,需改回。
3. **TRIPOD 声明**:预测模型类论文期刊几乎必查,故加了一句"按 TRIPOD 报告";如果稿件不打算附 TRIPOD 清单,请删掉该句。
4. **"某三甲医院"** 译为 "a tertiary teaching hospital in China",投稿时通常应写实名或按期刊要求匿名,伦理批号中的 "XX" 占位符原样保留待替换。
5. **知情同意豁免理由**:原文只说"因为是回顾性研究",我补了"de-identified data"这一常见依据;如数据并非去标识化,请删。
6. **缺失值处理、类别不平衡处理、随机种子、置信区间估计方法(如 bootstrap)** 原文没有提及,我没有编造;这些是审稿人常问的点,建议作者补充。
7. **软件版本**:XGBoost 版本原文未给,只写了"the XGBoost library",建议补版本号。
