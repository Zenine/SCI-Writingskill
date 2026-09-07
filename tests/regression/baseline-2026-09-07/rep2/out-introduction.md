# Introduction

Diabetes mellitus is one of the leading chronic diseases worldwide, and its burden is expected to rise further over the coming decades [ref]. Among patients with type 2 diabetes mellitus (T2DM), unplanned readmission within 90 days of hospital discharge is common and imposes substantial costs on healthcare systems and on patients and their families [ref]. The drivers of readmission in this population are multifactorial and include poor glycaemic control, acute and chronic complications, and suboptimal medication adherence, among others [ref]. Identifying patients at high risk of early readmission before discharge is therefore a clinical priority, as it would allow targeted transitional-care interventions to be directed to those most likely to benefit.

Several risk scores derived from conventional statistical methods, such as the LACE index and the HOSPITAL score, have been widely used to predict hospital readmission [ref]. However, these instruments were developed for general inpatient populations rather than for patients with diabetes, and their discriminative performance in diabetic cohorts has been modest, with reported areas under the receiver operating characteristic curve (AUCs) generally ranging from 0.6 to 0.7 [ref]. More recently, machine learning approaches have been applied to readmission prediction and have generally achieved better discrimination than traditional scores [ref]. Nevertheless, the existing evidence has several limitations. Most studies were conducted in European or North American populations, sample sizes were often limited, and few studies provided an interpretable account of how their models arrive at individual predictions. This lack of transparency has been identified as a major barrier to clinicians' trust in, and adoption of, machine learning-based risk tools [ref].

China has the largest population of people with diabetes in the world [ref], yet readmission prediction studies focused specifically on Chinese patients with T2DM remain scarce. Given differences in patient characteristics, treatment patterns, and healthcare delivery between China and Western countries, models developed in other settings may not transfer directly to Chinese hospitals, underscoring the need for locally derived and validated models.

To address these gaps, we conducted a retrospective study using electronic health record (EHR) data from a tertiary hospital in China to develop and internally validate an extreme gradient boosting (XGBoost) model for predicting 90-day readmission after discharge in patients with T2DM. We compared its performance with that of logistic regression and random forest models and applied SHapley Additive exPlanations (SHAP) to quantify the contribution of individual predictors. Our aim was to provide an accurate and interpretable tool to support the early identification of patients at high risk of readmission in routine clinical practice.

---

## 处理决定说明(中文)

1. **结构重组**:把原来一段话拆成四段,按医学 AI 期刊常见的"漏斗式"逻辑组织——疾病负担与临床问题 → 现有工具及其局限(传统评分 → 机器学习) → 中国人群研究缺口 → 本研究目的与设计。
2. **补充过渡性论证,不新增事实**:加了"为何要预测再入院"(便于定向过渡期干预)和"为何欧美模型不能直接迁移"(人群、诊疗模式、医疗体系差异)两句衔接,这是通用推理而非新数据;所有需要文献支撑的陈述都标了 `[ref]` 占位符,作者需自行补引。
3. **口语转学术表达**:"效果一般""临床医生不太信任""非常少"等改为 modest discriminative performance、barrier to clinicians' trust and adoption、remain scarce 等惯用表述;"某三甲医院"译为 tertiary hospital(未加地名,保持匿名)。
4. **术语与缩写**:首次出现处给出全称并定义缩写(T2DM、AUC、EHR、XGBoost、SHAP),后文统一用缩写;拼写采用英式(glycaemic),投稿时可按期刊要求全文统一为美式。
5. **与方法草稿对齐**:研究性质写为 retrospective、单中心、内部验证(方法里是 7:3 随机划分,没有外部验证),避免在引言里夸大为"validated";未在引言中重复样本量、纳排标准等方法细节,只在末段点明研究设计、对比模型与解释方法。
6. **未做的事**:原稿中"AUC 0.6–0.7"是作者对文献的概括,我保留了这一数字但未核实;引言中不给出本研究结果,符合大多数期刊的惯例。
