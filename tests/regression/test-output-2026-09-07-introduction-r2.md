# 回归测试输出:引言中译英(第 2 轮)

> 输入:`skills/sci-writing/samples/introduction-draft-zh.md`(背景参考 `samples/methods-draft-zh.md`)。日期:2026-09-07。目标期刊未知,按 SKILL.md 硬规则 10 直接产出。

## 1. 理解确认

- 故事线(张力陈述):前人用面向普通住院人群的 LACE / HOSPITAL 评分和欧美小样本机器学习模型预测糖尿病患者再入院,判别力一般且很少解释预测依据,针对中国人群的研究极少;本文用一家三甲医院电子病历建立 XGBoost 模型预测 2 型糖尿病患者出院后 90 天再入院,与逻辑回归、随机森林对比,并用 SHAP 解释关键预测因素。
- 目标期刊 / 读者:未知。按通用惯例处理——美式拼写、ASCII 半角、目的句用一般现在时、引言不预告主要结果——**请确认**。
- 本次处理的节:Introduction 全节改写。读者按医学 / 临床信息学同行设定;"一家三甲医院"按"位于中国的三甲医院"译出(由"针对中国人群"的空白推得)——**请确认**。

## 2. 结构(引言四组功能 → 段落)

| 段 | 功能步 | 段落模型 | 一句功能句 |
|---|---|---|---|
| P1 | 第 1 组:进入领域(Why-Why-Why 倒序) | General-Specific | 糖尿病是全球主要慢性病 → 2 型糖尿病 90 天再入院比例高 → 原因复杂、负担重 → 需要早期识别高风险患者 |
| P2 | 第 2 组:研究地图 + 第 3 组前半(前人缺陷) | Old-to-New(传统评分 → 机器学习) | 传统评分面向普通人群、在糖尿病患者中 AUC 仅 0.6–0.7;近年机器学习略好,但依赖欧美小样本且缺乏解释 |
| P3 | 第 3 组后半(空白)+ 第 4 组:介绍本文 | Problem-Solution | 中国糖尿病人数全球最多而相关研究极少 → 本研究做什么、比什么、如何解释、为谁服务 |

## 3. 正文

### Introduction

Diabetes is one of the leading chronic diseases worldwide [REF]. Among patients with type 2 diabetes, a high proportion are readmitted within 90 days of hospital discharge [REF]. The causes of these readmissions are complex and include poor glycemic control, complications, and poor medication adherence [REF]. Readmissions also place a heavy burden on health insurance systems and on patients' families [REF]. Tools that identify high-risk patients early would therefore be valuable to clinicians.

Many previous studies have predicted readmission using conventional statistical methods, such as the LACE score [REF] and the HOSPITAL score [REF]. These scores were developed for general inpatient populations; in patients with diabetes, the scores have yielded an area under the receiver operating characteristic curve (AUC) of only 0.6 to 0.7 [REF]. In recent years, machine learning has been applied to the same task and has modestly outperformed these conventional scores [REF]. However, most machine learning studies to date have used relatively small samples drawn from European and North American cohorts [REF]. In addition, few of these studies have explained why their models make particular predictions, and this lack of explanation limits clinicians' trust in the predictions [REF].

China has more people with diabetes than any other country ([year]) [REF]. However, few studies have addressed readmission prediction in Chinese patients with type 2 diabetes [REF]. To address this gap, we develop a model that predicts 90-day readmission after hospital discharge in patients with type 2 diabetes. We build the model with extreme gradient boosting (XGBoost) [REF] using electronic health record data from a tertiary hospital in China. We compare the XGBoost model with logistic regression and random forest [REF]. We also use SHapley Additive exPlanations (SHAP) [REF] to identify the most important predictors of readmission. The resulting model is intended to help clinicians identify high-risk patients early.

## 4. 改动说明

1. 第一句改为"糖尿病是全球主要慢性病"的公认事实作集合点,每句只比上句具体一步,首段末句落到本文问题(01 细则 1、2;11「Why-Why-Why」)。
2. 首段末句 "Tools that identify high-risk patients early would therefore be valuable to clinicians" 是由原稿末句"希望能帮医生早期识别高风险患者"抽出的桥接句,只用一个避险词 would(SKILL 硬规则 6);若作者认为属添加,可删。
3. 原稿"等等"改为 include 列举,不用 etc.(10 E18)。
4. 传统评分与机器学习各归一组,只用一次 However 引出缺陷、一次 However 引出空白,分别落在不同段落(01 细则 5;07 连接词密度)。
5. "AUC 大多在 0.6 到 0.7 之间"写为 yielded an AUC of only 0.6 to 0.7,避免 be 作主要动词(08 藏动作表);"only" 对应原稿"效果一般"。
6. "临床医生不太信任"改为 this lack of explanation limits clinicians' trust,用 this + 概括名词承接,不用表结果的 which(07 承接三件套;10 W2)。
7. "中国的糖尿病患者数量是全球最多的"依赖当前状态,按 01 细则 3 加 `[year]` 占位,不自行编年份。
8. 介绍本文统一用 we + 一般现在时(we develop / build / compare / use),所有权可辨认;方法与对比各只一句概述(01 细则 9、步 4;08 总表 Introduction 行)。
9. "建了一个 XGBoost 模型…用 SHAP 分析了哪些因素最重要"拆成 3 句,避免一句内 and > 1 与目的 to ≥ 2(09a 超载信号;10 E4)。
10. 缩写首次出现给全称:AUC、XGBoost、SHAP(SKILL 硬规则 7);这些是算法 / 指标的标准展开名,不算添加事实。LACE、HOSPITAL 全称原稿未给,按硬规则 7 保留缩写并进「建议补充」。
11. `[REF]` 占位:背景事实(糖尿病负担、再入院比例、原因)、LACE / HOSPITAL 评分原始论文、糖尿病人群中评分表现的研究、机器学习再入院预测研究、"缺乏解释导致不信任"的前人论述、中国糖尿病流行数据、已有的中国人群研究(若有)、XGBoost、随机森林、SHAP 原始论文。逻辑回归为教科书方法,不占位(SKILL 硬规则 4)。
12. 术语统一:全篇只用 type 2 diabetes、readmission / 90-day readmission、model、predictors、scores(指 LACE / HOSPITAL)、conventional scores;不做同义词轮换(01 细则 15;10 E11)。

## 5. 自检结果

### 核心五项

| 项 | 判定 | 说明 |
|---|---|---|
| 时态 | ✓ | 背景事实现在时;前人具体研究过去时(were developed);跨越到现在的积累与空白现在完成时(have predicted / has been applied / few studies have addressed);介绍本文现在时;每处切换对应功能变化 |
| 语态 / 所有权 | ✓ | 介绍本文全部 we + 主动;唯一被动 "has been applied" 指领域积累、施动者为泛指研究者,不是本研究发现 |
| 结构 | ✓ | 第 1 组在开头、第 4 组在结尾;三段各一功能一模型;只读三段首句可复述脉络 |
| 强度匹配 | ✓ | 本文介绍句无 novel / robust / first;唯一避险词 would 与 is intended to 各一处、不叠加;对前人评价用 modestly / only,与原稿"好一些""一般"匹配 |
| 术语缩写 | ✓ | AUC、XGBoost、SHAP 首次给全称;LACE、HOSPITAL 全称未知保留缩写(进「建议补充」,不计 ✗) |

### 01-introduction.md 自检清单中的 ✗ / N/A 项

- 第 18 条(引言空白在讨论 / 结论中的回应):N/A——本次只写引言,讨论与结论尚无稿。
- 第 16 条(段长):P1 73 词、P2 118 词、P3 109 词(09a token 口径)。P1 低于 80 词下限,但按 09a"从短草稿改写只看区间、少于 80 词的段落不得占多数"口径,1/3 段落偏短不判 ✗;原稿首段信息量仅此,不为凑字数添加事实(SKILL 硬规则 3)。
- 第 17 条(句长):P2 第 2 句 31 词,超 30 词触发检查;超出部分来自 AUC 全称展开,拆分会把定义句与数据句割裂,保留。
- 其余 1–15 条均 ✓。

### 07-paragraph-logic.md 中的 ✗ / N/A 项

- 第 6 条(Old-to-New 段内引文年份单调递增):N/A——原稿无年份,引文为 `[REF]` 占位。
- 其余均 ✓。连接副词起句统计:P1 0/5;P2 2/5(However、In addition;"In recent years" 为时间状语,不计);P3 1/7(However;"To address this gap" 为目的短语,不计)。无连续两句同类连接词。

### 08-verbs-tense-voice.md 中的 ✗ / N/A 项

- 第 3 条(引用前人发现的时态按最新文献核对):N/A——离线,无引用条目。
- 其余均 ✓。全文无 there be 起句;一句内 of ≤ 2(area under the ... curve 为固定术语不计);目的 to 每句 ≤ 1;无 can / could。

### 11-ethics-and-readers.md 中的 ✗ / N/A 项

- 第 1–8、12、20 条(声明、数据处理、结论):N/A——不属引言范围。
- 第 9–10 条(引注可追溯、同引支持与相反证据):N/A——引文为占位,待作者填入后核对。
- 第 13 条(已确定目标期刊并提取读者描述):✗——目标期刊未知,按通用惯例处理;见「待作者确认」。
- 第 17–19 条(故事线四问、张力、故事大小):第 4 问"新理解"原稿未给,只能写到"新知识"(中国人群 XGBoost 模型 + SHAP 关键因素);标 N/A,待结果与讨论成稿后补。
- 第 22 条(五角色审读):agent 侧已扮"研究新手"(缩写全称、背景递进)与"竞争对手"(前人分组、空白落点)各读一遍;作者侧待做,见「待作者确认」。

### 10 号清单逐句扫描(并入自检)

- error 级 E1–E23:无命中。
- warning 级保留项及理由:
  - W7:P1 第 2 句 "Among patients with type 2 diabetes," 与 P2 第 3 句 "In recent years," 为句首范围 / 时间短语,与主句关系唯一,保留。
  - E2 相关说明:"patients with type 2 diabetes" 形式上为"名词 with 名词",但为医学标准表达,关系(患有)唯一,读者无需猜,不判命中。
  - W13:"a high proportion"(首次提及、非共享知识用 a)、"the LACE score"(专名用 the)、"a tertiary hospital"(首次提及)均已核对。
- 其余 W1–W16 无命中。

### 待作者确认(汇总)

1. 目标期刊及其近 5 年同类引言惯例:是否预告主要结果、目的句时态、是否允许 we、拼写变体(当前默认美式)。
2. 所有 `[REF]` 的具体文献;填入后核对引文紧贴所支持的内容、并同时引支持与相反证据。
3. 至少一位非执笔合著者以"研究新手"角色通读引言。
4. 讨论与结论成稿后,回头核对引言立下的三个空白(中国人群、样本与数据来源、模型可解释性)是否用相同动词与名词逐一回应。

## 6. 建议补充

1. LACE 与 HOSPITAL 评分的全称(或确认期刊惯例下可只用缩写)。
2. "中国糖尿病患者数量全球最多"所依据的年份与来源(替换 `[year]` 与对应 `[REF]`)。
3. 2 型糖尿病 90 天再入院比例的具体数字与来源(原稿只说"很高";若有数字,首段第 2 句可给出并加年份)。
4. "针对中国人群的再入院预测研究非常少"若有已发表的少数研究,建议在 P3 第 2 句引出,使空白陈述可核。
5. 确认"一家三甲医院"是否应写为 in China(当前按上下文推得);若期刊允许,可在 Methods 给出医院类型与城市级别。
6. 是否需要在引言末补一句主要结果预告(按目标期刊惯例决定)。
7. 再入院原因列表(血糖控制差、并发症、用药依从性差)是否为作者要强调的全部;若有更多,按 including 句式补入。

## 7. 衔接提示

- Methods 需逐一对应引言末段的四个动作:XGBoost 建模、与逻辑回归和随机森林对比、SHAP 特征重要性、90 天再入院定义;并给出电子病历来源(与 `methods-draft-zh.md` 的 2021–2023 年、1,563 例一致)。
- Discussion / Conclusion 需用相同关键词回应三个空白:Chinese patients with type 2 diabetes、sample size / European and North American cohorts、explanation / clinicians' trust;结论对"help clinicians identify high-risk patients early"的强度不得超过结果节(AUC、灵敏度、特异度、校准)所能支撑的程度。

## 使用体验反馈

1. `SKILL.md` 第 36 行把整份 `11-ethics-and-readers.md` 列为引言"再读",但其 160 行中与引言直接相关的只有第 53–59 行(Why-Why-Why)与第 48–51 行(读者意识),建议在路由表括注小节名以缩小必读范围。
2. `references/01-introduction.md` 第 38 行要求依赖当前状态的声明加 `[year]` 占位,但未规定 `[year]` 与 `[REF]` 的相对位置与写法(括号内还是句中),不同 agent 输出会不一致。
3. `references/08-verbs-tense-voice.md` 第 22 行只区分"本文做什么:现在时"与"研究目的可用过去时",当原稿是已完成动作的叙述("我们建了一个 XGBoost 模型")时,未明确应写 we develop 还是 we developed,建议补一个例句。
4. `references/10-chinese-author-pitfalls.md` 第 22 行 E2 的识别信号"名词 with 名词"会命中医学固定表达 patients with diabetes,建议在第 87–109 行的误报表中加一条白名单。
5. `references/07-paragraph-logic.md` 第 46 行连接副词计数只排除顺序标记与定位词,未说明句首时间状语(In recent years,)是否计入,本次按不计处理。
6. `references/09a-metrics-table.md` 第 20 行"一句中 and > 1"超载信号未说明复合专名(European and North American)或两项并列(logistic regression and random forest)是否计入,本次按计入处理并拆句。
7. `SKILL.md` 第 56 行未说明空白句("few studies have ...")是否需要 `[REF]`;本次按"具体前人结论"加了占位,建议明确默认。
8. `references/01-introduction.md` 第 24 行"主要结果是否预告看目标期刊近 5 年惯例",与 `SKILL.md` 第 62 行硬规则 10 组合后缺少"期刊未知时的默认值"(本次默认不预告),建议写明。

## 读取清单

1. `/home/zenine/github/SCI-Writingskill/skills/sci-writing/SKILL.md`(全文)
2. `/home/zenine/github/SCI-Writingskill/skills/sci-writing/references/01-introduction.md`(全文)
3. `/home/zenine/github/SCI-Writingskill/skills/sci-writing/references/07-paragraph-logic.md`(全文)
4. `/home/zenine/github/SCI-Writingskill/skills/sci-writing/references/08-verbs-tense-voice.md`(全文)
5. `/home/zenine/github/SCI-Writingskill/skills/sci-writing/references/11-ethics-and-readers.md`(全文)
6. `/home/zenine/github/SCI-Writingskill/skills/sci-writing/references/10-chinese-author-pitfalls.md`(全文,总则必读)
7. `/home/zenine/github/SCI-Writingskill/skills/sci-writing/references/09a-metrics-table.md`(全文,总则必读)
8. `/home/zenine/github/SCI-Writingskill/skills/sci-writing/samples/introduction-draft-zh.md`(输入)
9. `/home/zenine/github/SCI-Writingskill/skills/sci-writing/samples/methods-draft-zh.md`(背景)

未读:`samples/expected-points-*`、`samples/README.md`、`tests/`、`notes/`、`docs/` 及仓库其它文件;未运行 git。
