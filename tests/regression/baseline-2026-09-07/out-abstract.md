# Abstract(英文,一般式)

Patients with type 2 diabetes mellitus (T2DM) experience high rates of readmission within 90 days of discharge, yet existing general-purpose readmission scores show limited discrimination in this population, and evidence from Chinese cohorts is scarce. We aimed to develop and internally validate a machine learning model for predicting 90-day readmission among hospitalized patients with T2DM. In this single-center retrospective study, we included 1,563 patients with T2DM admitted to the endocrinology department of a tertiary hospital in China between January 2021 and December 2023. Patients were randomly split into training and test sets at a 7:3 ratio. Candidate predictors comprised demographic characteristics, 27 laboratory tests obtained within 24 hours of admission, and medication records. An extreme gradient boosting (XGBoost) model was developed and compared with logistic regression and random forest; SHapley Additive exPlanations (SHAP) were used to interpret feature contributions. In the test set, XGBoost achieved an area under the receiver operating characteristic curve (AUC) of 0.84 (95% CI 0.80–0.88), outperforming logistic regression (AUC 0.76) and random forest (AUC 0.81), with a sensitivity of 0.79 and a specificity of 0.77. The calibration curve closely approximated the diagonal. The five most influential features were glycated hemoglobin, length of stay, number of hospitalizations in the preceding year, estimated glomerular filtration rate, and insulin use. The proposed model identifies patients with T2DM at high risk of 90-day readmission and may support pre-discharge intervention decisions. Because it was derived from a single center without external validation, multicenter validation is warranted before clinical implementation.

**Word count: 248**

## 主要处理决定(中文说明)

1. **结构**:按通用医学 AI 期刊的非结构化摘要惯例,隐含"背景—目的—方法—结果—结论"五段逻辑,但不加小标题;补写了原稿缺失的一句明确研究目的("We aimed to develop and internally validate..."),这是审稿人和 TRIPOD 类报告规范都期待的要素。
2. **术语与缩写**:首次出现时给全称再缩写(T2DM、XGBoost、SHAP、AUC),后文直接用缩写;"三甲医院"译为国际读者可理解的 "tertiary hospital in China";"糖化血红蛋白"用 glycated hemoglobin 而非 HbA1c 缩写(摘要中避免再引入一个未展开的缩写);"估算肾小球滤过率"用 estimated glomerular filtration rate。
3. **数字与统计口径**:严格保留原稿全部数字(1,563 例、7:3、27 项化验、AUC 0.84 及 95% CI、0.76/0.81、灵敏度 0.79、特异度 0.77),未补任何原稿没有的数值(如再入院事件数、再入院率、置信区间之外的比较 p 值);对照模型 AUC 前加 "AUC" 标注以免歧义。
4. **措辞收敛**:原稿"比较准确地识别"属主观程度词,英文摘要中去掉了 "with good accuracy" 之类的评价语,只让数字说话;"校准曲线贴近对角线"译为 "closely approximated the diagonal",不额外声称校准优良的统计量。
5. **局限与结论**:把"单中心、无外部验证"由原稿的"但是"式补充改写为结论的自然收尾,并明确下一步是多中心验证后再考虑临床落地,避免结论过度外推。
6. **词数控制**:初稿 252 词,删去评价性短语和冗余连接词后为 248 词,落在 200–250 词要求区间内。
7. **明确未做的事**:只读了指定的 `abstract-draft-zh.md`,未查阅其它文件、未运行 git;因目标期刊未知,未加关键词、结构化小标题或期刊特定格式,投稿时可按具体期刊模板调整。
