# Abstract (English, unstructured)

Patients with type 2 diabetes mellitus (T2DM) experience high rates of unplanned readmission within 90 days of discharge, yet existing general-purpose readmission scores show limited discrimination in this population, and evidence from Chinese cohorts remains scarce. We aimed to develop and internally validate a machine learning model for predicting 90-day readmission among hospitalized patients with T2DM. In this single-center retrospective study, we included 1,563 patients with T2DM admitted to the endocrinology department of a tertiary hospital in China between January 2021 and December 2023. Patients were randomly split into training and test sets at a 7:3 ratio. Candidate predictors comprised demographic characteristics, 27 laboratory tests obtained within 24 hours of admission, and medication records. An extreme gradient boosting (XGBoost) model was developed and compared with logistic regression and random forest, and SHapley Additive exPlanations (SHAP) were used to interpret feature contributions. In the test set, XGBoost achieved an area under the receiver operating characteristic curve (AUC) of 0.84 (95% CI 0.80-0.88), outperforming logistic regression (AUC 0.76) and random forest (AUC 0.81), with a sensitivity of 0.79, a specificity of 0.77, and good calibration. The five most influential predictors were glycated hemoglobin, length of stay, number of hospitalizations in the preceding year, estimated glomerular filtration rate, and insulin use. The proposed model accurately identifies patients with T2DM at high risk of 90-day readmission and may support pre-discharge intervention decisions. Because it was derived from a single center without external validation, multicenter prospective validation is warranted before clinical implementation.

**Word count: 247**

---

## 主要处理决定(中文说明)

1. **结构**:按目标期刊未知、通用医学 AI 期刊惯例,写成一般式(非结构化)单段摘要,但内部仍按“背景—目的—方法—结果—结论”隐性排列,便于日后改成结构化版本。
2. **补写研究目的句**:原稿缺少明确的 aim,补了一句 “We aimed to develop and internally validate…”,避免背景直接跳到方法。
3. **明确结局与人群**:把“再入院”统一表述为 “90-day readmission”,并把研究地点写成 “a tertiary hospital in China”(对应“某三甲医院”),不编造医院名。
4. **模型名称与缩写**:首次出现给全称(extreme gradient boosting、SHapley Additive exPlanations、AUC 全称),之后用缩写;“校准曲线贴近对角线”改写为 “good calibration”,为学术摘要常规表述。
5. **结果数字原样保留**:AUC、95% CI、灵敏度/特异度、对比模型 AUC 及 SHAP 前五特征均忠实转写,未添加原稿没有的统计量(如 P 值、DeLong 检验),避免虚构。
6. **结论口径**:保留“可帮助出院前干预决策”的临床意义,并把“单中心、无外部验证”的局限改写为对多中心前瞻性验证的呼吁,而不是单纯的负面陈述,更符合期刊惯例。
7. **词数**:247 词,落在 200–250 词要求区间内。
