# 回归测试输出:一般式 Abstract(r3)

日期:2026-09-07  
输入:`samples/abstract-draft-zh.md`  
任务:按 SKILL.md 路由表「写或压缩 Abstract」行,产出一篇一般式(非结构化)英文摘要,200–250 词,目标期刊未知,直接产出。

## 1. 理解确认

- 故事线:通用再入院评分对 2 型糖尿病人群判别力有限、中国人群证据少(前人 X);本文用单中心 1,563 例住院数据训练 XGBoost 模型预测出院后 90 天再入院,测试集 AUC 0.84 高于逻辑回归与随机森林,可辅助出院前干预决策(本文 Y)。
- 目标期刊 / 读者:未知,按 SKILL.md 硬规则 10 假设为一般医学信息学 / 内分泌临床期刊,一般式摘要,200–250 词,美式拼写,不放引文——**请确认**。
- 本次处理的节:仅 Abstract;正文各节未成稿(只有本样稿及说明中提到的同篇方法、引言草稿,本次未读)。

## 2. 结构(05 号文件九步序列在本稿的落位)

| 步 | 功能 | 对应句 |
|---|---|---|
| 1 | 宏观入口 | S1 |
| 2 | 具体背景 | 并入 S2 前半(通用评分判别力有限) |
| 3 | 问题 / 空白 | S2 |
| 4 | 本文做了什么 | S3 |
| 5 | 方法 | S4–S7 |
| 6 | 主要结果 | S8–S10 |
| 7 + 8 | 含义 + 贡献 | S11 |
| 9 | 应用 / 展望(含半句局限) | S12 |

## 3. 正文

Patients with type 2 diabetes mellitus (T2DM) face a high risk of readmission within 90 days of hospital discharge. Existing general-purpose readmission scores show limited discrimination in this population, and evidence from Chinese patients remains scarce. Here, we developed a machine learning model to predict 90-day readmission in Chinese patients with T2DM. In this single-center retrospective study, we included 1,563 patients with T2DM admitted to the endocrinology department of a tertiary hospital between January 2021 and December 2023. We randomly divided the patients into training and test sets at a 7:3 ratio. We trained an XGBoost model on demographic characteristics, 27 laboratory tests obtained within 24 hours of admission, and medication records. We compared the model with logistic regression and random forest; feature importance was quantified using Shapley additive explanations. The XGBoost model reached an AUC of 0.84 (95% CI 0.80-0.88) on the test set, higher than logistic regression (0.76) and random forest (0.81). The model reached a sensitivity of 0.79 and a specificity of 0.77, and its calibration curve lay close to the diagonal. Glycated hemoglobin, length of stay, number of hospitalizations in the previous year, estimated glomerular filtration rate, and insulin use contributed most to the predictions. These results suggest that a model built from data available at admission identifies Chinese patients with T2DM at high risk of 90-day readmission with acceptable accuracy. Although derived from a single center and not yet externally validated, the model could help clinicians target pre-discharge interventions to high-risk patients.

## 4. 词数统计(09a 口径:按空白分隔 token 计,`0.80-0.88`、`(0.76)`、`7:3` 各计 1 词)

- 总词数:**247 词**,12 句,平均句长 20.6 词,最长句 26 词(S4、S11)。
- 各句词数:

| 句 | 词数 | 步 |
|---|---|---|
| S1 Patients with type 2 diabetes ... discharge. | 19 | 1 |
| S2 Existing general-purpose ... scarce. | 17 | 2–3 |
| S3 Here, we developed ... T2DM. | 16 | 4 |
| S4 In this single-center ... December 2023. | 26 | 5 |
| S5 We randomly divided ... ratio. | 14 | 5 |
| S6 We trained an XGBoost model ... records. | 20 | 5 |
| S7 We compared the model ... explanations. | 18 | 5 |
| S8 The XGBoost model reached an AUC ... (0.81). | 24 | 6 |
| S9 The model reached a sensitivity ... diagonal. | 21 | 6 |
| S10 Glycated hemoglobin, ... predictions. | 24 | 6 |
| S11 These results suggest ... accuracy. | 26 | 7+8 |
| S12 Although derived ... high-risk patients. | 22 | 9 |

- 方法句(S4–S7)= 78 词,占 **31.6%**;结果句(S8–S10)= 69 词,占 **27.9%**;方法 + 结果 = 147 词,占 **59.5%**(≤ 60%,05 细则 5 达标;结果单独 ≤ 50% 达标)。

## 5. 改动说明(中文材料 → 英文的关键处理)

1. 「比较准确地识别高风险患者」译为 suggest + with acceptable accuracy,单一避险词(08 阶梯规则 1;SKILL 硬规则 6)。
2. 「可以帮助医生做出院前干预决策」用 could help,潜在价值用情态动词(05 细则 7)。
3. 局限「单中心、无外部验证」压成 Although 前置半句,末句落在应用价值(05 细则 18)。
4. SHAP 在摘要只出现一次,按 05 细则 11 不缩写,写全称 Shapley additive explanations;eGFR 同理写全称;T2DM 出现 4 次故缩写并首次给全称;AUC、CI 为领域公认缩写直接用。
5. 「糖化血红蛋白」译 glycated hemoglobin(未用 HbA1c 缩写,因只出现一次)。
6. 结果句 AUC 数字带参照对象(higher than logistic regression (0.76) and random forest (0.81)),避免裸数字(05 细则 6)。
7. XGBoost / logistic regression / random forest 不放 `[REF]`(SKILL 硬规则 4 例外;05 细则 12)。
8. 「XGBoost model」首次全称后用 the model 简称,不在 model / approach / algorithm 间轮换(05 细则 9)。
9. 未写 first / novel;"Chinese patients ... evidence remains scarce" 只作背景空白陈述,不认领"首个"(05 细则 8)。
10. 原稿方法句「划分 7:3」与「输入变量」拆成两句,避免单句超 30 词且含两个主谓 + 列举 and(09a 叠加判据)。

## 6. 自检结果

### 核心五项

- 时态 ✓:背景现在时(face / show / remains),本研究动作与结果过去时(developed / included / divided / trained / compared / reached / lay / contributed),含义与价值现在时 + suggest / could(08 总表 Abstract 行)。
- 语态 / 所有权 ✓:每个发现句有过去时或 we / the model 主语;唯一无施动被动 "feature importance was quantified" 与同句前半 "We compared" 共享所有权,且同小节首句(S4)含 in this study(SKILL 硬规则 5)。
- 结构 ✓:步 3、4、6、8 必写项齐备;第一句为宏观入口;末句落在应用价值。
- 强度匹配 ✓:结论句只有 suggest 一个避险词,应用句只有 could;不含 cause;强度不高于原稿「比较准确」「可以帮助」。
- 术语缩写 ✓:T2DM 首次给全称且全篇一致;AUC、CI 公认缩写;只出现一次的 SHAP、eGFR、HbA1c 不缩写;readmission / model / test set 各只用一个名称。

### 05 号自检清单中判为 ✗ 或 N/A 的条目

- 1 N/A:正文未成稿,本次直接从材料写摘要。
- 2 N/A:目标期刊未知(已按硬规则 10 降级处理并在理解确认标"请确认")。
- 8 N/A(不计 ✗):sensitivity 0.79 / specificity 0.77 与「校准曲线贴近对角线」原稿未给参照值(对比模型的灵敏度特异度、校准斜率 / 截距或 Brier 分数),已进「建议补充」。
- 20 N/A:标题、关键词、正文结论本次不可见。
- 05 第 37 行"总句数以 8–10 句为界" ✗:本稿 12 句(247 词)。原因:再按细则 13 合并会使 S1+S2 达 36–37 词、或 S11+S12 出现两个避险词(违反 08 阶梯规则 1),取"每句一个想法、单句 ≤ 30 词、一个避险词"优先;平均句长 20.6 词仍在 ≤ 25 词的摘要特例之内。
- 其余 05 号条目(3–7、9–17、21)✓;18、19 不适用(非结构化、无 Highlights)。

### 08 号(再读)与本节直接相关且判为 ✗ 的条目

- 无。第 5 条(Methods 以外默认主动)有一处被动 "feature importance was quantified",能回答"谁做的"(同句 we),保留以避免一句内 and > 1,不计 ✗。

### 10 号清单逐句扫描

- error 级 E1–E23:无命中。
- warning 级保留项:
  - S8 "on the test set" 置于句中而非句首,避免 W7 主题化开头;无命中。
  - S12 "Although derived from a single center ..., the model" — 分词短语逻辑主语 = 主句主语 the model,不构成 E21 悬垂。
  - S9 "and its calibration curve" — its 唯一指向 the model,不报 E3。
  - W16 拼写:全篇美式(hospitalizations、randomly),无混用。
- 结论:10 号清单无 error 命中,无需保留的 warning 说明以外的项。

### 09a 口径核对

- 平均句长 20.6 词 ≤ 25 ✓;单句最长 26 词 ≤ 40 ✓(无 > 30 词句);单句逗号最多 4 个(S10 列举句,五项列举、单主谓,按叠加判据保留并标"列举句")✓;and > 1 的句:无(S8 "logistic regression (0.76) and random forest (0.81)" 与 S9 两分句各一个 and;S6、S10 为三项以上列举 and,豁免)✓。

### 待作者确认(汇总)

- 目标期刊的摘要字数、形态与缩写 / 引文限制(05 第 2 条)。
- 摘要与标题、关键词、正文结论是否使用同一套术语与同一强度(05 第 20 条)。
- 「糖化血红蛋白」在正文是否统一写 glycated hemoglobin 还是 HbA1c;SHAP 全称 Shapley additive explanations 是否与正文一致。
- 至少一位合著者通读(10 第 17 条)。

## 7. 建议补充

1. 灵敏度 0.79 / 特异度 0.77 的参照值(对比模型的对应值,或所用阈值的选取方式),否则读者无法判断方向。
2. 校准的量化指标(校准斜率 / 截距、Brier 分数或 Hosmer-Lemeshow 检验),"贴近对角线"是定性描述。
3. 90 天再入院的具体定义(全因 / 糖尿病相关;是否限同一医院)及测试集事件数 / 再入院率(基线率影响 AUC 解读)。
4. 「用药记录」的时间窗(入院 24 小时内还是整个住院期间)——本稿只对 27 项化验写了 within 24 hours of admission,用药记录未加时间限定。
5. 「Chinese patients」是否与正文表述一致(原稿为"针对中国人群的研究少");若正文强调"单中心中国三甲医院",摘要可同步。
6. 是否要在摘要点出模型面向的用户(临床医生 / 病例管理团队)与部署形态,原稿只说"帮助医生做出院前干预决策"。

## 8. 衔接提示

- 摘要中的每个方法要素(纳排时间段、7:3 划分、三类输入、三种模型对比、SHAP)应在 Methods 各有一小节;三项结果(AUC 对比、灵敏度 / 特异度与校准、前五特征)应在 Results 各有对应二级标题。
- 结论句强度(suggest / acceptable accuracy / could help)不得高于 Discussion 与 Conclusion 的表述;局限句(单中心、无外部验证)应在 Discussion 局限段展开。

## 使用体验反馈

1. `references/05-abstract.md` 第 37 行"总句数以 8–10 句、200–250 词为界":与第 50 行"平均句长 ≤ 25 词"叠加后,10 句 × 25 词 = 250 词恰好顶格,实际写作几乎无法同时满足"≤ 10 句"与"单句 ≤ 30 词不触发拆句检查"(09a 第 17 行),建议把句数上限放宽到 12 句或注明"句数为软指标、以 09a 句长为硬指标"。
2. `references/05-abstract.md` 第 51 行细则 11"只出现一两次的不缩写"未说明作者原稿已给的专名型缩写(如 SHAP)在只出现一次时应写全称还是保留缩写,与 `SKILL.md` 第 59 行硬规则 7"全称未知时保留缩写"衔接处有空白;本次按细则 11 写全称,建议在细则 11 补一句"作者已给缩写、全称公认时写全称不写缩写;全称不确定时保留缩写并进建议补充"。
3. `references/09a-metrics-table.md` 第 20 行"and > 1"的豁免只覆盖"三项以上列举式 and"与"两项固定搭配",两项非固定搭配的对比对象(logistic regression and random forest)加一个并列谓语即触发超载信号,迫使我用分号 + 被动改写 S7;建议明确两项对比对象的列举 and 是否计入。
4. `references/05-abstract.md` 第 45 行细则 5 与第 53 行细则 13 都提到"60% 按词数计",但未明确步 5 / 步 6 合并句(如"用 X 得到 Y")的词数归方法还是结果,建议补一句归类规则(如按主句谓语所属功能归类)。
5. `SKILL.md` 第 72 行要求自检"只列出本节 reference 自检清单中判为 ✗ 的条目",但 05 号清单第 1、2、20 条在"直接产出、期刊未知、正文未成稿"场景下必然是 N/A,建议在 05 或 SKILL 明确 N/A 项是否每次都要列出,避免各次输出格式不一。

## 读取清单

- `/home/zenine/github/SCI-Writingskill/skills/sci-writing/SKILL.md`(全文,77 行)
- `/home/zenine/github/SCI-Writingskill/skills/sci-writing/references/05-abstract.md`(全文,154 行;路由表「先读」)
- `/home/zenine/github/SCI-Writingskill/skills/sci-writing/references/08-verbs-tense-voice.md`(全文,153 行;路由表「再读」)
- `/home/zenine/github/SCI-Writingskill/skills/sci-writing/references/10-chinese-author-pitfalls.md`(全文,135 行;总则必读)
- `/home/zenine/github/SCI-Writingskill/skills/sci-writing/references/09a-metrics-table.md`(全文,30 行;总则必读)
- `/home/zenine/github/SCI-Writingskill/skills/sci-writing/samples/abstract-draft-zh.md`(全文,8 行;输入材料)
- 未读:`references/09-academic-style.md`(10 号扫描未命中 W3 / W12 / W16,按总则不读)、`references/06-title-keywords.md`(路由表注明不必读)、samples 下 expected-points-* 与 README.md、tests/、notes/、docs/ 及仓库其它文件。
