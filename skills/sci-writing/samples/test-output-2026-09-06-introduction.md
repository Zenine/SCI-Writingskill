# 测试输出:中文引言草稿 → 英文 Introduction(2026-09-06)

> 输入:`samples/introduction-draft-zh.md`(背景参考 `samples/methods-draft-zh.md`)。按 `SKILL.md` 路由表「写或改 Introduction」进入,读了 `references/00-workflow.md`(切入点表「只要写某一节」→ 步 2 进入)、`01-introduction.md`、`07-paragraph-logic.md`、`08-verbs-tense-voice.md`、`10-chinese-author-pitfalls.md`、`11-ethics-and-readers.md`、`09-academic-style.md`(01 自检 16、17 的句长段长口径只在 09 立数)。目标期刊未知,按 `SKILL.md` 硬规则 10 直接产出。

## 1. 理解确认

- **故事线 / 张力陈述(步 2,请确认)**:Existing tools for predicting hospital readmission were derived from general inpatient populations or from Western cohorts and rarely explain their predictions; here we develop an interpretable XGBoost model on electronic health record data from Chinese patients with type 2 diabetes to predict 90-day readmission and to identify the features that drive it.
- **一句话研究问题(替代形式,因原稿只有"我们做了什么"和"希望帮医生早期识别高风险患者")**:Can an interpretable machine learning model built on Chinese single-center EHR data predict 90-day readmission in T2DM patients better than general-purpose scores and conventional models, and which factors drive that risk? 原稿没有回答"新理解"(故事线第 4 问),上句是我从原稿倒推出的口径,**请确认**。
- **目标期刊 / 读者档(假设,请确认)**:未知;按通用惯例取"临床医学 / 医学信息学专业刊、读者为同行"处理,因此首段可从公认事实起步、重要性声明压缩(`01` 细则 1、`00` 分歧 6)。拼写默认美式(`SKILL.md` 硬规则 9)。
- **本次处理的节**:Introduction。目的句时态全篇取一般现在时(`08` 分歧 4 默认值);引言不预告结果数字,因原稿未给结果(`00` 分歧 8 默认"只给一句概述")。

## 2. 结构

### 2.1 相邻节二级标题骨架(步 3,只做本节及相邻节;Results 标题为待结果确认的骨架)

- Introduction(本节四段,功能见下)
- Methods(据 `methods-draft-zh.md`):Data source and inclusion criteria / Predictors and outcome definition / Model development and hyperparameter tuning / Model comparison and evaluation / Interpretability analysis with SHAP / Statistical analysis
- Results(骨架,动词处待作者按实际结果改写):Cohort characteristics / XGBoost [outperforms / performs comparably to] logistic regression and random forest on ... / SHAP identifies ... as the leading contributors to readmission risk

### 2.2 引言段落功能(01 四组功能 × 07 段落模型)

| 段 | 功能步(01) | 段落模型(07) | 功能句 |
|---|---|---|---|
| 1 | 第 1 组:进入领域 | G-S(Why-Why-Why 倒序) | 从糖尿病全球负担 → T2DM 90 天再入院比例高与负担 → 原因复杂 → 需要早期识别工具 |
| 2 | 第 2 组:研究地图 | 一般到具体,按方法分组 | 传统统计评分(LACE、HOSPITAL)→ 对糖尿病人群判别力有限 → 机器学习模型略优 |
| 3 | 第 3 组:转向本文(空白) | P-S 的问题句 | 现有机器学习研究三点局限(欧美数据 / 样本小 / 缺解释)→ 中国人群研究稀少 |
| 4 | 第 4 组:介绍本文 | P-S 的方案句 | 本研究做什么(XGBoost、单中心 EHR、对比 LR/RF、SHAP)+ 目的一句 |

## 3. 正文

### Introduction

Diabetes mellitus is one of the leading chronic diseases worldwide [REF]. Among patients with type 2 diabetes mellitus (T2DM), a substantial proportion are readmitted to hospital within 90 days of discharge [REF], and these readmissions place a heavy burden on health insurance systems and on patients' families [REF]. The causes of readmission are complex and include poor glycemic control, diabetic complications, and poor medication adherence [REF]. Because these causes are heterogeneous, early identification of patients at high risk of readmission is a prerequisite for targeted prevention, and prediction tools have been developed to support this task.

Two families of tools have been applied to readmission prediction. Traditional statistical scores, such as the LACE index and the HOSPITAL score [REF], were derived from general inpatient populations; when applied to patients with diabetes, these scores have shown only modest discrimination, yielding area under the receiver operating characteristic curve (AUC) values largely between 0.6 and 0.7 [REF]. More recently, machine learning models have been applied to the same task and have achieved modestly better performance than the traditional scores [REF].

However, the machine learning studies reported to date share three limitations. First, most models were developed on data from Europe and North America [REF]. Second, the sample sizes were small [REF]. Third, few studies have explained why a model assigns a given prediction, and this lack of interpretability has limited clinicians' trust in the models [REF]. The geographic gap is particularly relevant to China, which has the largest number of people with diabetes of any country [REF]; nevertheless, few studies have addressed readmission prediction in Chinese patients with T2DM.

In this study, we develop an extreme gradient boosting (XGBoost) [REF] model that predicts 90-day readmission after discharge in patients with T2DM. The model is built on electronic health record (EHR) data from a single tertiary hospital in China. We compare the XGBoost model with logistic regression and random forest [REF] models, and we use Shapley additive explanations (SHAP) [REF] to identify the features that contribute most to the predictions. The aim of this work is to provide an interpretable tool that helps clinicians identify high-risk patients early.

**`[REF]` 占位说明**(`SKILL.md` 硬规则 4):
- 段 1:糖尿病全球负担的流行病学来源;T2DM 90 天再入院率的研究;再入院经济负担的研究;再入院原因(血糖控制、并发症、依从性)的研究。
- 段 2:LACE 与 HOSPITAL 评分的原始论文;这两类评分在糖尿病人群中 AUC 0.6–0.7 的验证研究;用机器学习做再入院预测的代表性研究。
- 段 3:欧美数据、样本量小、缺乏解释的具体前人研究(可与段 2 机器学习研究引文重合);中国糖尿病患者数量全球最多的流行病学来源(建议 IDF 或同类,须带年份)。
- 段 4:XGBoost 原始论文;random forest 原始论文;SHAP 原始论文。逻辑回归属教科书方法,不占位。

## 4. 改动说明

1. 首句改为公认事实、逐句收窄,每层背景挂 `[REF]`(`01` 细则 1–2、`11` Why-Why-Why)。原稿第一句已含"全球主要慢性病 → 再入院比例高 → 负担",顺序保留。
2. 段 1 末句"Because these causes are heterogeneous ... prediction tools have been developed"是为避免"很宽 → 很窄"跳跃补的过渡句(`01` 细则 2、`07` 基本约束 4),内容只做了"原因复杂 → 需要识别工具"的推论,未加数据;若作者认为过度推断可删。
3. 原稿"等等"删除,列举前置 include(`09` 规则 1、`10` E18)。
4. 研究地图按方法分组(传统评分 / 机器学习),只用一次转折 However 引出空白,不逐句打乒乓(`01` 细则 5、`07` 分歧 6)。
5. 三点局限用顺序标记 First / Second / Third 铺开,顺序标记不计入连接词密度(`07` 密度上限 1–2)。
6. 空白句用现在完成时否定式(few studies have explained / have addressed)与现在完成时的持续影响(has limited),不用过去时(`01` 常见错误"空白句用过去时"、`08` 总表 Introduction 行)。
7. 原稿"临床医生不太信任"改为 has limited clinicians' trust,作为 lack of interpretability 的结果句,因果链显式(`07` 密度上限 4)。
8. "非常少"去掉 very,改 few(`09` 规则 7)。
9. 缩写首次出现给全称:T2DM、AUC、XGBoost、EHR、SHAP(`SKILL.md` 硬规则 7、`09` 规则 5);LACE 与 HOSPITAL 作为评分专名保留,见「建议补充」。
10. 介绍本文用 In this study, we + 一般现在时,目的句 The aim of this work is(`08` 总表、`08` 分歧 4);方法与结果各只一句概述,不写数字。
11. 正面评价词只用 interpretable,可在结果节由 SHAP 分析指到对应内容(`01` 细则 10);不用 novel / robust(`10` W3)。
12. "with AUC values ..." 的 with 结构改 yielding,避免模糊介词(`08` 藏动作表、`10` E2)。
13. 段 4 首句原为 36 词,拆成两句(`09` 单句 > 30 词触发拆句)。
14. 全篇"再入院"统一 readmission,"模型"统一 model,"电子病历"统一 EHR data,不做同义替换(`SKILL.md` 硬规则 7、`10` E11)。

## 5. 自检结果

**五项核心**

- 时态 ✓:背景事实一般现在时;仍影响现状的积累与空白用现在完成时(have shown / have achieved / have explained / has limited);介绍本文与目的句一般现在时,全篇统一。
- 语态 / 所有权 ✓:段 4 以 In this study, we 定位,唯一被动句 The model is built 在同一小节内共享定位词;前三段无被动无主句;we 只指作者。
- 结构 ✓:第 1 组在开头、第 4 组在结尾,每段一功能一模型;只读四段首句能复述"领域 → 已有工具 → 局限 → 本文"。
- 强度匹配 ✓:引言无结论句;评价词只有 interpretable、modest / modestly,均与原稿"效果一般 / 好一些"方向一致;未出现 cause。
- 术语缩写 ✓:T2DM、AUC、XGBoost、EHR、SHAP 首次给全称;同一对象全篇一名。

**本节 reference 自检清单中判为 ✗ 或无法判定的条目**

- `01` 自检 18(引言立下的空白在讨论/结论中有回应)✗:讨论与结论未成稿,无法核对;写讨论时须用相同关键词回应三点局限与"Chinese patients with T2DM"。
- `08` 自检 3(引用前人发现的时态已按最新文献核对)✗:无文献可查,LACE/HOSPITAL 在糖尿病人群 AUC 0.6–0.7 是否已成"公认事实"需作者按最新综述核对,本文暂按持续状态用现在完成时。
- `11` 自检 13(目标期刊与读者档已确认)✗:期刊未知,按专业刊假设处理,见「理解确认」。
- `11` 自检 14(第一段每层背景附引用)✗→待补:引用均为 `[REF]` 占位,需作者填入。
- `09` 自检 13(段落均值 150–170 词)✗:四段各约 90–110 词,均在 80–230 正常区间内但均值低于 150;引言总量受原稿信息量限制,未为凑字数扩写。
- `10` 逐句扫描:E1–E23 无命中;W 级保留项:W7 白名单内定位词 In this study 不报;W13 the LACE index / the HOSPITAL score 用 the 因为是专名;其余无命中。

## 6. 建议补充

1. **年份**:段 3"China has the largest number of people with diabetes of any country"依赖当前状态,`01` 细则 3 要求加可识别的年份及数据来源(如 IDF Diabetes Atlas 某年版);原稿未给,请作者补。
2. **T2DM 90 天再入院比例**:原稿只说"比例很高",英文稿也只写 a substantial proportion;若能给具体比例和来源,段 1 会更有力(`09` 规则 9 评价性修饰须有数据支撑)。
3. **LACE / HOSPITAL 全称**:`SKILL.md` 硬规则 7 要求缩写首次给全称,但两者是评分专名且原稿未给展开,我未自行展开;请作者按原始论文决定是否在首次出现处给出各字母含义。
4. **机器学习前人研究的样本量与 AUC**:原稿说"样本量不大""效果好一些",若有具体数字与来源,可替换 small 与 modestly better。
5. **研究目的的"新理解"**:原稿只有"希望能帮医生早期识别高风险患者";若研究另有更上位的贡献(如"中国人群的再入院驱动因素与欧美不同"),应写进张力陈述并在引言末段体现,同时同步到摘要与结论(`00` 细则 8)。
6. **本研究的定位词**:是否为"首个"针对中国 T2DM 人群的研究,原稿未说,英文稿未写 first;若作者确认并可引证检索过程,可在段 3 末加 To the best of our knowledge。

## 7. 衔接提示

- 引言三点局限(欧美数据 / 样本小 / 缺解释)与"中国人群研究少"是讨论节必须逐一回应的锚点,回应时用相同的名词与动词(Europe and North America、sample size、interpretability、Chinese patients with T2DM)。
- 段 4 提到的每个动作(develop XGBoost、compare with logistic regression and random forest、use SHAP)在 Methods 已有对应步骤(`methods-draft-zh.md`),在 Results 中各应有一个含动词的二级标题回应。
- 段 2 的 AUC 0.6–0.7 是讨论节比较本模型判别力的基线,结果节报告 AUC 时应与之可比。
- `00` 建议写作顺序为 Methods → Results → Discussion → Introduction;本节先于结果成稿,拿到结果后请回头核对引言的评价词强度与目的措辞(`01` 细则 10、11)。`00` 分歧 10 另提示:长期建议直接用英文起草,不经中文稿转译。

## 使用体验反馈

1. `SKILL.md:36` 路由「写或改 Introduction」再读列只有 07、08,但 `01-introduction.md:171-172` 自检 16、17 的段长句长数字只在 09 立数,实际不读 09 就无法完成 01 自检,09 事实上是必读而非"按需"(`SKILL.md:49`)。
2. `00-workflow.md:50` 与 `:52` 的切入点表里,"只给了中文整稿"从步 1 进入、"只要写某一节"从步 2 进入,但"只给了某一节的中文草稿"落在哪一行没有写明,我按"只要写某一节"处理。
3. `SKILL.md:59` 硬规则 7"缩写首次出现给全称"与 `SKILL.md:57` 硬规则 3"不编造原稿没有的内容"在 LACE / HOSPITAL 这类评分专名上冲突,没有说明专名型缩写是否豁免,我只能放进「建议补充」。
4. `01-introduction.md:29` 细则 3 要求依赖当前状态的重要性声明加年份,但原稿无年份时该用占位符还是留空没有规定(`[REF]` 有占位约定,年份没有),我选择不写年份并进「建议补充」。
5. `08-verbs-tense-voice.md:191` 自检 3 要求"按最新文献核对"前人发现的时态,离线且无引用时不可执行,只能报 ✗,但 SKILL 输出格式没有"无法判定 / N/A"档位,✗ 与"真错"混在一起。
6. `01-introduction.md:173` 自检 18 要求核对讨论/结论的回应,只写引言时同样无法判定,同上缺 N/A 档。
7. `00-workflow.md:148` 分歧 10 要求"在输出末尾提示用户长期转向英文起草",但 `SKILL.md:64-74` 输出格式约定七项里没有对应位置,我塞进了「衔接提示」。
8. `10-chinese-author-pitfalls.md:230` 与自检 16(`:377`)要求扫描报告用"位置 / 原句 / 条目号 / 级别 / 改法"格式,而 `SKILL.md:49、72` 说扫描结果"并入自检"且只列 ✗ 项;对从中文新写的英文稿没有"原句"可对照,两处格式要求不一致,我按 SKILL 的口径只列了命中与保留项。
9. `01-introduction.md:36` 细则 10 要求介绍本文时"通常含至少一个正面评价词(novel, robust, first)",而 `10-chinese-author-pitfalls.md:270` W3 把 novel / robust 列为无信息修饰词、`09-academic-style.md:47` 说要删;两处示例词直接相撞,我改用 interpretable 绕开,但 skill 没有给出"哪些正面评价词不算废词"的口径。
10. `09-academic-style.md:32` 段长均值 150–170 词是全文口径,对信息量只有一段中文的引言草稿,四段引言不可能达到该均值,又不能编内容凑字数;建议标注该均值不适用于"从短草稿改写"场景,否则自检必 ✗。
11. `00-workflow.md:52`"只要写某一节"要求"步 3 只做该节及相邻节标题",但 Results 尚无稿时二级标题必须含动词说出发现(`00:27`),只能写成待定骨架,与硬规则 3"不编造"边界模糊,skill 未说明此时标题该怎么占位。
