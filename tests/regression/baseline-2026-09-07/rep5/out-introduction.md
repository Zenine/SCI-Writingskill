# Introduction

Diabetes mellitus is one of the leading chronic diseases worldwide, and type 2 diabetes mellitus (T2DM) accounts for the vast majority of cases [1]. Patients hospitalized with T2DM are at substantial risk of unplanned readmission after discharge, with a considerable proportion returning to hospital within 90 days [2,3]. Such readmissions impose a heavy burden on health insurance systems and on patients and their families, and are widely regarded as a marker of suboptimal transitional care. The determinants of readmission in this population are multifactorial and include poor glycemic control, acute and chronic diabetic complications, comorbidity burden, and inadequate medication adherence [4,5], which makes early identification of high-risk patients both clinically important and methodologically challenging.

Earlier efforts to predict hospital readmission relied mainly on conventional statistical approaches, exemplified by the LACE index and the HOSPITAL score [6,7]. Although these instruments are easy to apply, they were developed for general medical inpatient populations rather than for patients with diabetes, and their discriminative performance in diabetic cohorts has been modest, with reported areas under the receiver operating characteristic curve (AUC) mostly in the range of 0.6 to 0.7 [8,9]. In recent years, machine learning methods have been applied to this problem and have generally achieved better discrimination than traditional risk scores [10,11]. Nevertheless, several limitations persist. Most published models were derived from European or North American datasets, often with limited sample sizes, and few studies have offered interpretable explanations of how the models arrive at their predictions. This opacity remains a major barrier to clinicians' trust in, and adoption of, such tools in routine practice [12].

The gap is particularly pronounced in China, which has the largest population of people with diabetes in the world [1]. Despite this enormous disease burden, studies specifically addressing readmission prediction in Chinese patients with T2DM are scarce, and it remains unclear whether models developed in Western settings generalize to Chinese hospital populations, which differ in demographic composition, care pathways, and patterns of electronic health record documentation.

To address these gaps, we conducted a retrospective study using electronic health record data from a tertiary hospital in China to develop and validate an extreme gradient boosting (XGBoost) model for predicting 90-day readmission after discharge in patients with T2DM. We compared its performance with logistic regression and random forest models and used SHapley Additive exPlanations (SHAP) to identify the factors contributing most to the predicted risk. Our goal was to provide clinicians with an accurate and interpretable tool for the early identification of patients at high risk of readmission, thereby supporting targeted post-discharge interventions.

---

## 主要处理决定(中文说明)

1. **结构重组为"四段式"通用医学 AI 期刊引言**:疾病与再入院负担 → 现有工具(传统评分 → 机器学习)及其局限 → 中国人群研究空白 → 本研究目标。原稿是一段流水,拆分后每段一个论点,便于审稿人跟随逻辑。
2. **文献引用留占位符 [1]–[12]**:原稿未给参考文献,我按学术惯例在每个需要支撑的断言处放了编号占位,作者需回填真实文献(IDF 流行病学数据、LACE/HOSPITAL 原始文献、糖尿病人群验证研究、机器学习再入院研究、可解释性/临床信任相关文献等)。**不要直接投稿前保留空占位。**
3. **未添加原稿没有的具体数字**:如全球患病人数、再入院率具体百分比等,只保留了原稿已有的"AUC 大多在 0.6–0.7"这一说法,并以引文形式标注,避免凭空编造统计数据。建议作者补充一两个带引文的量化数字(如 90 天再入院率)增强开篇说服力。
4. **口语化表达学术化**:"效果一般"→ "modest discriminative performance";"临床医生不太信任"→ 表述为可解释性不足是临床采纳的障碍;"某三甲医院"→ "a tertiary hospital in China",并去掉了"希望能帮医生"这类口吻,改为明确的研究目标句。
5. **补充了一处逻辑衔接**:在"中国研究少"的基础上,补一句"欧美模型能否泛化到中国医院人群尚不清楚"(人口构成、诊疗路径、病历记录模式差异),这是对原稿空白论证的合理延伸而非新事实,若作者认为超出原意可删。
6. **与方法部分保持一致**:目标定义为"出院后 90 天内再入院"、模型为 XGBoost 对比逻辑回归和随机森林、可解释性用 SHAP、数据来源为三甲医院电子病历、研究设计为回顾性,均与 methods 草稿一致;首次出现的缩写(T2DM、AUC、XGBoost、SHAP)均已给出全称。
7. **未写的内容**:未提研究时间跨度(2021–2023)和样本量(1,563 例),这些按惯例放在 Methods 首段,不在 Introduction 重复。
