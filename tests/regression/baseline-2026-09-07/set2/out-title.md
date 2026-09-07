# Title, Keywords, and Section Skeleton

## 1. Candidate Titles

**T1 (recommended)**
An Interpretable Machine Learning Model for Predicting 90-Day Readmission in Hospitalized Patients with Type 2 Diabetes: A Single-Center Retrospective Cohort Study

**T2**
Predicting 90-Day Readmission After Discharge in Patients with Type 2 Diabetes Using XGBoost and SHAP: Development and Internal Validation in a Chinese Cohort

**T3**
Early Prediction of 90-Day Readmission in Type 2 Diabetes from Routine Data Collected Within 24 Hours of Admission: A Machine Learning Study

**Differences**
- T1 leads with the clinical question and the "interpretable" selling point, names the design in the subtitle (TRIPOD-style), and avoids naming the algorithm so the title does not date quickly. Best fit for general medical informatics and diabetes clinical journals.
- T2 is algorithm-forward (XGBoost + SHAP) and states "development and internal validation" and the Chinese population explicitly. Suits a methods-oriented informatics venue; slightly long (~25 words).
- T3 foregrounds the "24-hour routine data" angle, which is the most operationally distinctive feature of the study. Good if the target journal values early-warning/deployability framing, but it hides interpretability and the cohort design.

**Recommendation:** T1. It is the most journal-agnostic, follows TRIPOD title conventions (population, outcome, model type, design), and keeps the algorithm name for the abstract and keywords. Consider swapping "Interpretable" for "Explainable" if the journal's house style prefers XAI terminology.

## 2. Keywords (5–6, MeSH-aligned where possible)

1. Type 2 diabetes mellitus
2. Hospital readmission
3. Machine learning
4. XGBoost
5. Explainable artificial intelligence (SHAP)
6. Risk prediction model

## 3. Methods — Second-Level Headings

2. Methods
2.1 Study Design and Setting
2.2 Study Population and Eligibility Criteria
2.3 Outcome Definition
2.4 Candidate Predictors and Data Collection
2.5 Data Preprocessing and Handling of Missing Data
2.6 Dataset Partitioning
2.7 Model Development and Hyperparameter Tuning
2.8 Model Evaluation
2.9 Model Interpretation (SHAP Analysis)
2.10 Statistical Analysis
2.11 Ethical Approval

## 4. Results — Second-Level Headings

3. Results
3.1 Patient Characteristics
3.2 Discriminative Performance of the Three Models
3.3 Calibration
3.4 Feature Importance and SHAP Interpretation
3.5 Subgroup Analyses

---

## 处理决定说明(中文)

1. **标题不写算法名(推荐 T1)**:通用医学 AI 期刊更常按 TRIPOD(预测模型报告规范)惯例写"人群 + 结局 + 模型类型 + 设计";XGBoost 放进关键词和摘要即可,避免标题过于工具化。T2、T3 作为替代方案分别突出"算法 + 中国队列"和"入院 24 小时早期预测"两个卖点,供按目标期刊风格取舍。
2. **明示"单中心""内部验证"**:草稿写明是单中心、7:3 划分、无外部验证,标题/副标题如实说明可以避免审稿人认为夸大泛化性;"Chinese cohort"只在 T2 保留,T1 留给摘要和 Methods 交代。
3. **关键词选 MeSH 可对应词**:"Type 2 diabetes mellitus""Hospital readmission""Machine learning"是 MeSH 主题词;"XGBoost""SHAP"是检索时同行实际会用的词,所以保留。共 6 个,在多数期刊 3–8 个的上限内。
4. **Methods 按草稿列出的内容展开并补齐惯例项**:草稿提到"数据来源与人群、纳排、划分、变量与结局、模型与调参、评价指标、SHAP、伦理、统计",我把"结局定义"单列(90 天再入院的时间起点和定义是审稿人必问项),并新增"预处理与缺失值处理"一节——草稿没提,但回顾性 EHR(电子病历)数据几乎一定需要说明。伦理按多数医学期刊惯例放 Methods 末尾;若期刊要求放在开头,可直接移到 2.1 之后。
5. **Results 与 Methods 一一对应**:五个二级标题严格对应草稿的"基线特征、三模型判别力、校准、特征重要性、亚组",顺序与 Methods 的评价流程一致;"三模型"在标题中点明,方便读者与逻辑回归、随机森林的对比。
6. **未做的事**:未读取其它文件,未运行 git;目标期刊未定,所以编号格式(2.1/3.1)仅作示意,投稿时按期刊模板调整。
