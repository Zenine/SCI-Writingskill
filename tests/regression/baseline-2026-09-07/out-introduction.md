# Introduction

Diabetes mellitus is one of the leading chronic diseases worldwide, and China has the largest population of people living with diabetes of any country [1]. Among patients with type 2 diabetes mellitus (T2DM), unplanned hospital readmission after discharge is common and imposes a substantial burden on healthcare payers and on patients' families [2,3]. The determinants of readmission in this population are multifactorial and include suboptimal glycaemic control, acute and chronic diabetic complications, and poor adherence to prescribed medications [4,5]. Accurate identification of patients at high risk of readmission at or before discharge would allow targeted transitional-care interventions and more efficient allocation of follow-up resources.

Historically, readmission risk has been estimated with conventional statistical scores such as the LACE index and the HOSPITAL score [6,7]. These instruments were developed and validated in general inpatient populations rather than in patients with diabetes, and their discriminative performance when applied to diabetic cohorts has been modest, with reported areas under the receiver operating characteristic curve (AUC) largely in the range of 0.6 to 0.7 [8,9]. More recently, machine learning approaches have been applied to readmission prediction and have generally outperformed traditional scores [10,11]. However, several limitations constrain the clinical translation of this work. Most existing models were trained on data from North American or European health systems, often with limited sample sizes, and their transportability to other populations and care settings is uncertain. In addition, few studies have provided interpretable explanations of individual predictions, and this opacity has been repeatedly identified as a barrier to clinician trust and uptake of predictive models in practice [12]. Despite China's large diabetic population, studies specifically addressing readmission prediction in Chinese patients with T2DM remain scarce.

To address these gaps, we conducted a retrospective cohort study using electronic health record (EHR) data from the endocrinology department of a tertiary teaching hospital in China. We developed an extreme gradient boosting (XGBoost) model to predict all-cause readmission within 90 days of discharge in patients with T2DM, using demographic characteristics, laboratory results obtained within 24 hours of admission, and medication records as predictors. Model performance was compared with that of logistic regression and random forest models, and SHapley Additive exPlanations (SHAP) analysis was used to quantify the contribution of individual features to the predictions. Our aim was to provide an accurate and interpretable tool that could support clinicians in the early identification of patients with T2DM at high risk of 90-day readmission.

---

## 处理说明(中文)

**结构。** 按医学 AI 期刊引言的通用"漏斗"结构改写为三段:①疾病负担与临床问题(为什么关注 T2DM 90 天再入院);②现有方案及其局限(传统评分 → 机器学习 → 三个空白:欧美数据/样本量小、缺乏可解释性、中国人群研究少);③本研究的目标与做法(数据来源、模型、对照、SHAP、预期用途)。原稿最后一句"希望能帮医生早期识别高风险患者"改写为明确的研究目的句(aim statement),不再使用口语化表述。

**引用。** 原稿没有给出任何参考文献。凡属需要文献支撑的论断(全球负担、中国患病人数最多、再入院原因、LACE/HOSPITAL 评分、AUC 0.6–0.7、ML 优于传统评分、可解释性与临床信任),我均用数字占位符 `[1]`–`[12]` 标出位置,**不虚构具体文献**;投稿前需由作者填入真实文献并按目标期刊格式排版。若目标期刊要求 Vancouver 或作者-年份格式,只需替换占位符。

**术语与表述。** "AUC 大多在 0.6 到 0.7 之间"改为"largely in the range of 0.6 to 0.7"并挂引用,避免无出处的绝对数字;"临床医生不太信任"改为文献中常见的"barrier to clinician trust and uptake"表述;"效果一般""近几年也有人"等口语化表述改为学术措辞。首次出现的缩写(T2DM、AUC、EHR、XGBoost、SHAP)均给出全称。

**结合方法草稿补充的信息。** 从方法草稿中引入了"内分泌科住院""三甲医院"(译为 tertiary teaching hospital,若医院非教学医院请改为 tertiary hospital)、"入院 24 小时内化验指标+人口学+用药记录作为预测变量"、"回顾性队列"等信息,使引言末段与方法一致。**未写入**样本量(1,563 例)、研究时间段(2021–2023)、伦理批号和软件版本,这些按惯例属于 Methods,不在 Introduction 中重复。

**缺失信息 / 需作者确认。** (1)结局是"全因再入院"还是"糖尿病相关再入院",原稿未说明,我暂写为 all-cause,请核实;(2)是否为"非计划再入院"(unplanned),第一段按常见口径写了 unplanned,若数据未区分请删去该词;(3)医院所在地/具体名称,按匿名化惯例未写;(4)是否有外部验证——原稿仅有 7:3 内部划分,故引言中未声称泛化性,只说"提供工具支持早期识别",避免过度承诺;(5)拼写采用英式(glycaemic),如目标期刊为美式请改为 glycemic。
