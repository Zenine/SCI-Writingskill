# Methods

## Study design and setting

We conducted a retrospective cohort study using electronic health records (EHRs) from patients with type 2 diabetes mellitus (T2DM) admitted to the Department of Endocrinology of a tertiary teaching hospital between January 2021 and December 2023. The study was approved by the hospital's institutional ethics committee (approval no. 2024-XX-001). Because of the retrospective design and the use of de-identified data, the requirement for informed consent was waived. The study is reported in accordance with the TRIPOD (Transparent Reporting of a multivariable prediction model for Individual Prognosis Or Diagnosis) statement.

## Study population

All hospitalized adults with a discharge diagnosis of T2DM during the study period were screened (n = 1,842). Patients were excluded if they (i) were younger than 18 years, (ii) had a length of stay of less than 48 hours, or (iii) had more than 30% missing values among the key laboratory variables. After applying these criteria, 1,563 patients were included in the final analysis.

## Outcome

The primary outcome was all-cause unplanned readmission to the study hospital within 90 days of discharge from the index admission, ascertained from the EHR system.

## Predictor variables

Candidate predictors comprised demographic characteristics, 27 laboratory parameters measured within the first 24 hours of admission, and medication records from the index admission. Only data available within the first 24 hours were used as predictors to reflect information accessible early in the hospital course.

## Data partitioning and model development

The cohort was randomly split into a training set (70%) and a hold-out test set (30%). The primary model was developed using extreme gradient boosting (XGBoost). Hyperparameters were tuned by grid search with five-fold cross-validation within the training set, and the configuration with the highest mean cross-validated area under the receiver operating characteristic curve (AUC) was selected. Logistic regression and random forest models were developed on the same training set using the same predictors as benchmark comparators. The test set was used only once, for final performance evaluation.

## Model evaluation

Discrimination was assessed using the AUC, sensitivity, and specificity. Calibration was assessed graphically using calibration curves comparing predicted probabilities with observed event rates in the test set.

## Model interpretation

SHapley Additive exPlanations (SHAP) values were computed for the final XGBoost model to quantify the contribution of each predictor to individual predictions and to rank overall feature importance.

## Statistical analysis

All analyses were performed in Python (version 3.10) using scikit-learn (version 1.3) and the XGBoost library. A two-sided P value of less than 0.05 was considered statistically significant.

---

## 中文说明:主要处理决定

1. **结构化分节**:按医学 AI 期刊的常见惯例把单段草稿拆为研究设计、研究人群、结局、预测变量、数据划分与模型开发、模型评价、模型解释、统计分析等小节,便于审稿人对照 TRIPOD(多变量预测模型透明报告规范)核查。
2. **补充报告规范声明**:加了一句"按 TRIPOD 声明报告"。这是医学预测模型论文的常规要求,但原稿未提及,如实际未按 TRIPOD 核对,请删除该句或补做核对。
3. **结局定义细化**:原稿只写"出院后 90 天内再入院",我改为"本院内全因非计划性再入院,从 EHR 系统确定"。其中"全因""非计划""本院"是我为满足审稿要求做的合理推断,**需要作者确认是否与实际定义一致**,不一致请改回。
4. **补入方法学细节**:说明超参数选择依据(交叉验证平均 AUC 最高)、对比模型使用相同训练集和变量、测试集仅用于最终评价一次、SHAP 用于最终 XGBoost 模型。这些是审稿人常追问的点,原稿隐含但未写明,请核对是否与实际操作一致。
5. **伦理声明位置**:合并到"研究设计与场景"小节,并按惯例补充"数据已去标识化"作为免除知情同意的依据;若数据未去标识化,请删去该短语。
6. **术语处理**:"某三甲医院"译为 tertiary teaching hospital,投稿时可替换为具体机构名(若期刊允许);缩写 T2DM、EHR、AUC、SHAP 均在首次出现处给出全称。
7. **保留原意**:样本量(1,842→1,563)、排除标准、7:3 划分、27 项化验、五折网格搜索、评价指标、软件版本、P<0.05 均按原稿保留,未改动数字。
8. **未补的内容(建议作者后续补充)**:缺失值处理方法、类别不平衡处理、随机种子、连续变量是否标准化、AUC 的置信区间估计方法(如 bootstrap)、灵敏度/特异度所用的阈值选择方式。这些在多数期刊会被要求,但原稿没有信息,我没有臆造。
