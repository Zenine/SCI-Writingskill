# Introduction

Diabetes mellitus is one of the leading chronic diseases worldwide, and China has the largest population of people living with diabetes of any country [ref]. Among patients with type 2 diabetes mellitus (T2DM), unplanned readmission within 90 days of hospital discharge is common and imposes a substantial burden on health insurance systems and on patients' families [ref]. The determinants of readmission are multifactorial and include poor glycaemic control, diabetes-related complications, and suboptimal medication adherence, among others [ref]. Accurate identification of patients at high risk of readmission before discharge could enable targeted transitional-care interventions and more efficient allocation of limited follow-up resources.

Conventional readmission risk scores, such as the LACE index and the HOSPITAL score, were developed with traditional statistical methods in general inpatient populations [ref]. When applied to patients with diabetes, their discriminative performance has been modest, with reported areas under the receiver operating characteristic curve (AUCs) mostly between 0.6 and 0.7 [ref]. In recent years, machine learning approaches have been explored for this task and have generally outperformed conventional scores [ref]. However, most of these studies were conducted with data from Europe or North America, frequently relied on relatively small samples, and rarely examined why a model produced a given prediction. This lack of interpretability has limited clinicians' trust in, and adoption of, such models [ref]. Moreover, despite the size of the diabetic population in China, studies of readmission prediction specifically targeting Chinese patients with T2DM remain scarce.

To address these gaps, we conducted a retrospective study using electronic health record (EHR) data from a tertiary hospital in China. We developed an extreme gradient boosting (XGBoost) model to predict 90-day readmission after discharge in patients with T2DM, using demographic characteristics, laboratory results obtained within 24 hours of admission, and medication records as predictors. Model performance was compared with that of logistic regression and random forest, and SHapley Additive exPlanations (SHAP) was applied to quantify the contribution of individual predictors. Our aim was to provide clinicians with an interpretable tool for the early identification of patients with T2DM at high risk of readmission.

---

## 处理说明(中文)

1. **结构重组为三段式漏斗**:第一段交代疾病负担与临床意义(疾病负担 → 再入院问题 → 再入院原因 → 早期识别的价值),第二段综述现有方法及其局限(传统评分 → 机器学习进展 → 三点缺口:欧美数据、样本小、缺乏可解释性;加上中国人群研究稀缺),第三段陈述本研究做了什么和目标。这是医学 AI 期刊 Introduction 的通行写法。
2. **"中国患者数量最多"前移到第一段**:中文草稿把这句放在第二段末尾,英文里把它作为背景事实放在开头,第二段末只保留"针对中国人群的研究稀缺"这一缺口陈述,逻辑更顺、避免重复。
3. **补充了一句"临床意义"过渡句**(early identification enables targeted transitional care)。中文草稿的结尾"希望能帮医生早期识别高风险患者"隐含了这一动机,我把它显性化为第一段的收束句,同时保留在第三段的 aim 中。这是唯一新增的实质性内容,请确认是否符合作者意图。
4. **参考文献占位**:所有需要文献支撑的论断均标注 `[ref]`,包括流行病学数据、LACE/HOSPITAL 评分、AUC 0.6–0.7 的范围、机器学习优于传统评分、可解释性影响临床信任等。草稿未提供文献,投稿前需逐一补齐;尤其 "AUC mostly between 0.6 and 0.7" 这一数字论断必须有出处。
5. **从方法草稿借入的细节**:第三段提到"入院 24 小时内化验、人口学、用药记录"以及"回顾性、三甲医院"等,来自 methods-draft-zh.md,用于让研究概述更具体;未写入样本量、纳排标准、时间范围等属于 Methods 的内容。
6. **术语处理**:"三甲医院"译为 tertiary hospital(国际期刊通用,不用 Grade-A Class-3 之类直译);首次出现的 T2DM、AUC、EHR、XGBoost、SHAP 均给出全称;"再入院"统一用 readmission,并在首次出现处加 unplanned(非计划再入院)以匹配 LACE/HOSPITAL 评分的口径——若你们的结局定义包含计划性再入院,请删去 unplanned 一词。
7. **语气调整**:去掉了口语化表达("效果一般""不太信任""所以我们做了这个研究"),改为 modest discriminative performance、limited clinicians' trust、To address these gaps 等学术表达;避免夸大(没有写 novel、first、significantly 等未经支撑的词)。
8. **拼写体系**:采用英式拼写(glycaemic);若目标期刊为美式,需改为 glycemic。
