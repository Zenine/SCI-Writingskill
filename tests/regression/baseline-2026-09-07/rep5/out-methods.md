# Methods

## Study design and participants

We conducted a single-centre retrospective cohort study using electronic health records (EHRs) of patients with type 2 diabetes mellitus (T2DM) admitted to the Department of Endocrinology of [Hospital name], a tertiary teaching hospital in China, between January 2021 and December 2023. A total of 1,842 hospitalisations were screened. Patients were excluded if they were younger than 18 years, had a length of stay of less than 48 hours, or had more than 30% missing values among the prespecified key laboratory variables. After applying these criteria, 1,563 patients were included in the final analysis (Figure 1). The study is reported in accordance with the TRIPOD (Transparent Reporting of a multivariable prediction model for Individual Prognosis Or Diagnosis) statement.

## Ethical approval

The study protocol was approved by the Institutional Review Board of [Hospital name] (approval no. 2024-XX-001). Because of the retrospective design and the use of de-identified routinely collected data, the requirement for informed consent was waived.

## Outcome

The primary outcome was hospital readmission within 90 days of discharge from the index admission, ascertained from the EHR system.

## Candidate predictors

Candidate predictors comprised three domains available at the time of admission: (i) demographic characteristics; (ii) 27 laboratory variables measured within the first 24 hours of admission; and (iii) medication records. The full list of predictors is provided in Supplementary Table S1.

## Data partitioning

The cohort was randomly partitioned into a training set and an independent test set in a 7:3 ratio. The training set was used for model development, hyperparameter tuning and internal validation; the test set was held out and used only once for final performance evaluation.

## Model development

The primary prediction model was developed using the eXtreme Gradient Boosting (XGBoost) algorithm. Hyperparameters were selected by grid search with five-fold cross-validation within the training set. For comparison, logistic regression and random forest models were trained on the same predictors and the same training set using identical cross-validation procedures.

## Model evaluation

Discrimination was assessed by the area under the receiver operating characteristic curve (AUC), together with sensitivity and specificity. Calibration was assessed graphically using calibration curves comparing predicted probabilities with observed event rates. All performance metrics were computed on the held-out test set.

## Model interpretation

To quantify the contribution of individual predictors to model output, we applied SHapley Additive exPlanations (SHAP) to the final XGBoost model, summarising both global feature importance and the direction of each feature's effect.

## Statistical analysis

All analyses were performed in Python (version 3.10) using scikit-learn (version 1.3) and the XGBoost library (version [x.x]). A two-sided P value < 0.05 was considered statistically significant.

---

## 主要处理决定(中文说明)

1. **结构化分节**:按医学 AI 期刊常见的 TRIPOD(多变量预测模型透明报告规范)习惯,把一段中文拆成"研究设计与对象 / 伦理 / 结局 / 候选预测变量 / 数据划分 / 模型建立 / 模型评价 / 模型解释 / 统计分析"九个小节,并主动加了一句"按 TRIPOD 报告"——若作者不打算按 TRIPOD 报告,请删去该句。
2. **不编造原稿没有的信息**:缺失值处理方法、随机划分是否分层、随机种子、网格搜索的超参范围、XGBoost 版本号等原稿都没写,我一律没有臆造,只用 `[Hospital name]`、`[x.x]`、"Supplementary Table S1"、"Figure 1" 作占位提示,投稿前需作者补齐(尤其缺失值填补方式,审稿人几乎必问)。
3. **"某三甲医院"**:译为 "a tertiary teaching hospital in China",医院名留占位;"三甲"没有精确对应,若需强调可加 "(Grade III-A)"。
4. **结局措辞**:原稿只写"再入院",未说明是否为全因再入院(all-cause)或仅本院再入院,英文按原文保守写作 "hospital readmission within 90 days of discharge",建议作者明确后补上 "all-cause" 及是否仅本院数据。
5. **"关键化验缺失超过 30%"**:译为 "more than 30% missing values among the prespecified key laboratory variables",并加了 "prespecified" 以符合方法学写法;哪些是"关键"化验需在补充材料列出。
6. **测试集使用原则**:补了一句"测试集仅用于最终评价一次"的标准表述,这是原稿隐含但未言明的做法;若实际流程不是这样(例如在测试集上调过阈值),请如实修改。
7. **术语与单位**:统一用英式拼写(centre、hospitalisation);"P<0.05" 补为 "two-sided",若为单侧检验请改。
8. **对比模型**:强调 LR 与 RF 使用相同预测变量、相同训练集和相同交叉验证流程,以体现公平比较;如实际不同请修改。
