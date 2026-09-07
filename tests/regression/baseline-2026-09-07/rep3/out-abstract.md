# Abstract

Patients with type 2 diabetes mellitus (T2DM) have high rates of readmission within 90 days of hospital discharge, yet generic readmission risk scores show limited discrimination in this population, and Chinese data are scarce. We aimed to develop and internally validate a machine learning model for predicting 90-day readmission among hospitalized patients with T2DM. In this single-center retrospective study, we included 1,563 patients with T2DM admitted to the endocrinology department of a tertiary hospital between January 2021 and December 2023. Patients were randomly split into training and test sets at a 7:3 ratio. Predictors comprised demographics, 27 laboratory tests obtained within 24 hours of admission, and medication records. An extreme gradient boosting (XGBoost) model was developed and compared with logistic regression and random forest, and SHapley Additive exPlanations (SHAP) quantified feature contributions. In the test set, XGBoost achieved an area under the receiver operating characteristic curve (AUC) of 0.84 (95% confidence interval 0.80–0.88), outperforming logistic regression (AUC 0.76) and random forest (AUC 0.81), with a sensitivity of 0.79 and a specificity of 0.77; the calibration curve lay close to the diagonal. The five most influential predictors were glycated hemoglobin, length of stay, number of hospitalizations in the preceding year, estimated glomerular filtration rate, and insulin use. The model identifies patients at high risk of 90-day readmission with good discrimination and calibration and may support pre-discharge intervention decisions. However, because it was derived from a single center without external validation, multicenter validation is required before clinical implementation.

**Word count:** 246

## 主要处理决定(中文说明)

1. **体裁与结构**:按要求写成一般式(非结构化)摘要,但内部仍隐含"背景—目的—方法—结果—结论"顺序,符合通用医学 AI 期刊惯例;补写了原稿缺失的明确研究目的句(aim)。
2. **术语规范化**:"2 型糖尿病"→ type 2 diabetes mellitus (T2DM);"三甲医院"→ tertiary hospital(不直译"3A");"糖化血红蛋白"→ glycated hemoglobin;"估算肾小球滤过率"→ estimated glomerular filtration rate;首次出现给出全称并缩写(XGBoost、SHAP、AUC)。
3. **方法信息处理**:保留全部关键设计要素(单中心、回顾性、时间窗、n=1,563、7:3 随机划分、27 项 24 h 内化验、三模型对比、SHAP)。原稿未说明结局定义、缺失值处理与超参调优,摘要中未擅自补充,留给正文。
4. **结果表述**:数字一律照原稿,未改动;AUC 加 95% CI,对照模型仅给点估计(原稿无 CI);"校准曲线贴近对角线"转为 "the calibration curve lay close to the diagonal",未夸大为 "well calibrated" 之外的量化指标(原稿无 Brier/校准斜率)。
5. **结论口径**:把原稿"比较准确"改为 "good discrimination and calibration",与结果对应;明确写出单中心、无外部验证的局限,并加一句"需多中心验证后方可临床应用",避免过度推断。
6. **语言层面**:全篇过去时描述方法与结果,一般现在时描述背景与结论;避免第一人称过多,仅在目的句用 "We aimed"。
7. **词数控制**:初稿 256 词,删除冗余修饰后压至上述词数,落在 200–250 词区间。
