# Abstract (英文,一般式)

Patients with type 2 diabetes mellitus (T2DM) experience high rates of 90-day readmission after hospital discharge, yet generic readmission scores show limited discrimination in this population and evidence from Chinese cohorts remains scarce. We aimed to develop and internally validate a machine learning model for predicting 90-day readmission among hospitalized patients with T2DM. In this single-center retrospective study, we included 1,563 patients with T2DM admitted to the endocrinology department of a tertiary hospital in China between January 2021 and December 2023. The cohort was randomly split into training and test sets at a 7:3 ratio. Candidate predictors comprised demographic characteristics, 27 laboratory tests obtained within 24 hours of admission, and medication records. An extreme gradient boosting (XGBoost) model was developed and compared with logistic regression and random forest, and SHapley Additive exPlanations (SHAP) analysis was used to interpret feature contributions. In the test set, XGBoost achieved an area under the receiver operating characteristic curve (AUC) of 0.84 (95% CI 0.80–0.88), outperforming logistic regression (AUC 0.76) and random forest (AUC 0.81), with a sensitivity of 0.79 and a specificity of 0.77; the calibration curve closely approximated the diagonal. The five most influential features were glycated hemoglobin, length of stay, number of hospitalizations in the preceding year, estimated glomerular filtration rate, and insulin use. The proposed model accurately identifies patients with T2DM at high risk of 90-day readmission and may support pre-discharge intervention decisions. However, given the single-center design and absence of external validation, multicenter validation is warranted before clinical implementation.

**Word count: 249**

## 主要处理决定(中文说明)

1. **结构**:按背景→目的→方法→结果→结论的一般式段落写,不设小标题;补了一句明确的研究目的("We aimed to..."),这是中文草稿缺失但医学 AI 期刊 Abstract 惯例上需要的。
2. **术语**:全部用国际通用英文名称并在首次出现处给缩写(T2DM、XGBoost、SHAP、AUC),SHAP 采用官方写法 "SHapley Additive exPlanations"。
3. **数据表述**:保留全部关键数字(1,563 例、7:3 划分、27 项化验、AUC 0.84 及 95% CI、对比模型 AUC、灵敏度/特异度、SHAP 前五特征),未新增或推断草稿中没有的数据(如未编造再入院率具体数值或事件数)。
4. **医院信息**:"某三甲医院"译为 "a tertiary hospital in China",不点名机构,与匿名化惯例一致。
5. **结论措辞**:把"比较准确地"译为 "accurately"而非 "relatively accurately",避免英文中显得弱化;"帮助医生决策"改为 "may support pre-discharge intervention decisions",用 may 保持审慎。
6. **局限性**:按草稿保留单中心、无外部验证两点,并顺势补一句"需多中心验证后再临床应用",使结尾更符合期刊审稿预期。
7. **词数**:249 词,处于 200–250 词要求区间上沿。
