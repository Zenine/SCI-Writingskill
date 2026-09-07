# Introduction

Diabetes mellitus is among the most prevalent chronic diseases worldwide, and type 2 diabetes mellitus (T2DM) accounts for the vast majority of cases [1]. Beyond its long-term microvascular and macrovascular complications, T2DM is associated with frequent and often avoidable hospital use. Patients with T2DM are readmitted at substantially higher rates than the general inpatient population, and a considerable proportion of these readmissions occur within 90 days of discharge [2,3]. Such early readmissions impose a heavy burden on healthcare payers and on patients and their families, and they are increasingly regarded as an indicator of suboptimal transitional care [4].

The causes of readmission in patients with T2DM are multifactorial. Poor glycaemic control, acute and chronic complications, comorbid cardiovascular and renal disease, polypharmacy and inadequate medication adherence have all been implicated [5,6]. This heterogeneity makes it difficult for clinicians to identify, at the time of discharge, which patients are most likely to return, and it argues for data-driven risk stratification tools that can integrate a broad range of clinical information.

Traditional readmission risk scores such as the LACE index and the HOSPITAL score were developed for general medical inpatients using conventional statistical approaches [7,8]. Although these instruments are simple to apply, they were not designed for diabetes-specific populations, and external validation studies in patients with diabetes have reported only modest discrimination, with areas under the receiver operating characteristic curve (AUCs) typically in the range of 0.6 to 0.7 [9,10]. More recently, machine learning (ML) methods have been applied to readmission prediction and have generally achieved better discrimination than conventional scores [11,12]. However, several limitations of the existing evidence remain. Most published models were derived from North American or European cohorts, and many relied on relatively small samples, which limits their generalisability to other health systems and populations. In addition, few studies have provided transparent explanations of how individual predictors contribute to model output, and this lack of interpretability is a recognised barrier to clinician trust and to the adoption of ML tools in routine practice [13,14].

China has the largest population of people living with diabetes in the world [1], yet studies of readmission prediction specifically targeting Chinese patients with T2DM are scarce. Differences in disease phenotype, treatment patterns, healthcare organisation and the structure of electronic health records mean that models developed elsewhere cannot be assumed to transfer directly to Chinese clinical settings, and locally derived evidence is therefore needed.

To address these gaps, we conducted a retrospective cohort study using electronic health record data from a tertiary teaching hospital in China. We developed an extreme gradient boosting (XGBoost) model to predict all-cause readmission within 90 days of discharge in adult inpatients with T2DM, using demographic characteristics, laboratory results obtained within 24 hours of admission and medication records as predictors. Model performance was compared with that of logistic regression and random forest models, and SHapley Additive exPlanations (SHAP) analysis was used to characterise the contribution of individual predictors. Our aim was to provide an interpretable tool that could support the early identification of high-risk patients and inform targeted transitional-care interventions.

---

## 主要处理决定(中文说明)

1. **结构重组为标准四段式漏斗**:疾病负担 → 再入院的临床与经济意义及其多因性 → 现有工具(传统评分、机器学习)及其局限 → 中国人群证据缺口 → 本研究目标。原稿是一段话,英文期刊惯例是逐层收窄、最后一段明确研究目的。

2. **口语化表述改为学术表述**:如"效果一般"→"only modest discrimination";"临床医生不太信任"→"a recognised barrier to clinician trust and to the adoption of ML tools in routine practice";"以前有很多研究"→具体点名 LACE、HOSPITAL 并说明其设计人群。

3. **补充了引用占位符 [1]–[14]**:原稿无任何文献,但 SCI 引言中所有事实性断言(全球流行率、再入院率、LACE/HOSPITAL 出处、AUC 0.6–0.7、中国患者数量最多等)都必须有出处。编号只是占位,**需要作者逐条替换为真实文献**;尤其"AUC 多在 0.6–0.7"这一数字是原稿断言,我未核实,应确保有对应验证研究支撑,否则改为定性描述。

4. **削弱了不可证实的绝对表述**:没有写"首个研究"之类的优先性声明,只说"studies ... are scarce",因为是否首例需系统检索证实,审稿人常抓这一点。

5. **对齐方法草稿的细节**:研究目标写为"all-cause readmission within 90 days",纳入"adult inpatients"(对应排除 <18 岁),预测变量写明"入院 24 小时内的化验、人口学、用药",与 Methods 一致;"三甲医院"译为"tertiary teaching hospital",若该医院并非教学医院请改为"tertiary hospital"。

6. **补了一个原稿隐含但未展开的论点**:为什么欧美模型不能直接搬到中国(疾病表型、治疗模式、医疗体系、病历结构差异),用于支撑"需要本地证据"这一研究动机,而不只是"研究少"。

7. **拼写采用英式(glycaemic、generalisability、recognised)**:目标期刊未知,若投美系期刊需统一改为美式拼写(glycemic、generalizability、recognized)。

8. **结尾一句加了临床意义**(支持早期识别高风险患者并指导过渡期干预),回应原稿"希望能帮医生早期识别高风险患者",但避免在引言中预告结果。
