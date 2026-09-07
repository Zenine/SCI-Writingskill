# 回归测试输出:Results 节(r2,2026-09-07)

输入:`samples/results-draft-zh.md`(材料)+ `samples/methods-draft-zh.md`(同篇方法草稿,仅作背景)。目标期刊未知,按 SKILL.md 硬规则 10 直接产出。

## 1. 理解确认

- 故事线(假设,请确认):前人认为现有再入院风险评分(如 LACE)在糖尿病人群中判别力有限(AUC 0.6–0.7);本文表明,基于入院 24 小时内电子病历数据的 XGBoost 模型可对 2 型糖尿病住院患者的 90 天再入院做出判别力(AUC 0.84)与校准均良好的预测。
- 目标期刊未知,按通用惯例处理(请确认):美式拼写;CI 分隔符用连字符 `0.80-0.88`;结果小标题用含动词的句式、不编号;Results 与 Discussion 分写。
- 本次只处理 Results 节。材料末尾"LACE 评分 AUC 0.6–0.7、我们的模型明显更好"属与前人文献的比较,按 `03-results.md` 前置约定留给 Discussion,不写进 Results(见衔接提示)。
- 缩写(AUC、CI、HbA1c、eGFR、SHAP)在本节首次出现处给了全称,以满足"结果节可独立成篇";若 Methods 已定义,作者可删去重复的全称。

## 2. 结构

结果节按研究问题分五块,每块按"目标句 → 位置句 → 核心发现 → 总结/含义句"四要素写;开场以方法回顾(纳入与划分)起,不以原始数据点起。

| 小节 | 研究问题 | 用到的功能(03 号表) |
|---|---|---|
| Baseline characteristics differed between readmitted and non-readmitted patients | 队列长什么样,两数据集是否可比 | (b) 方法回顾;(d) 引导看表 1;(e) 关键结果 + 评价;(f) 与本文模型输入的对照 |
| XGBoost discriminated 90-day readmission better than logistic regression | 三模型判别力谁高 | (c) 总体模式;(d) 图 2 / 表 2;(e) 关键结果标 Importantly;(h) 与随机森林差异不显著;(i) 含义 |
| XGBoost achieved the lowest Brier score and the closest fit to the calibration diagonal | 预测概率是否贴合实际 | (d) 图 3;(e) 关键结果;(i) 含义 |
| HbA1c, length of stay, and prior hospitalizations contributed most to predicted risk | 模型依赖哪些特征 | (d) 图 4;(e) 关键结果;(f) 与表 1 单因素差异对照;(i) 含义 |
| Discrimination remained similar across age and sex subgroups | 性能是否随年龄/性别变化 | (e) 关键结果;(f) 与总体 AUC 比较;(h) 亚组样本小、区间宽;(i) 含义 |

## 3. 正文

## Results

### Baseline characteristics differed between readmitted and non-readmitted patients

In this study, 1,563 of the 1,842 screened patients met the inclusion criteria; we randomly assigned 1,094 to the training set and 469 to the test set. Ninety-day readmission occurred in 292 of the 1,563 patients (18.7%); the rate was nearly identical in the training set (18.7%) and the test set (18.6%). Table 1 shows the baseline characteristics of the two outcome groups. Compared with non-readmitted patients, readmitted patients exhibited a higher median age (68 vs 63 years, P<0.001), a higher median glycated hemoglobin (HbA1c; 9.1% vs 8.2%, P<0.001), and more hospitalizations in the preceding year (median 1 vs 0, P<0.001). In contrast, the sex distribution did not differ between the two groups (P=0.41). These univariable differences were consistent with the inclusion of age, HbA1c, and prior hospitalizations among the model inputs.

### XGBoost discriminated 90-day readmission better than logistic regression

To compare the discrimination of the three models, we evaluated them on the held-out test set. Overall, XGBoost achieved the highest area under the receiver operating characteristic curve (AUC) of the three models. Fig. 2 shows the receiver operating characteristic curves of the three models on the test set, and Table 2 shows their performance metrics. Importantly, XGBoost achieved an AUC of 0.84 (95% confidence interval [CI] 0.80-0.88), compared with 0.76 (95% CI 0.71-0.81) for logistic regression and 0.81 (95% CI 0.77-0.85) for random forest. The improvement over logistic regression reached statistical significance (DeLong test [REF], P=0.003), whereas the difference from random forest did not (P=0.12). At the Youden-derived threshold (0.21, selected on the training set), XGBoost achieved a sensitivity of 0.79 (95% CI 0.73-0.85) and a specificity of 0.77 (95% CI 0.72-0.82). These results indicate that XGBoost predicted 90-day readmission more accurately than logistic regression, whereas its advantage over random forest remained modest.

### XGBoost achieved the lowest Brier score and the closest fit to the calibration diagonal

To assess whether the predicted probabilities matched the observed readmission rates, we examined calibration curves and Brier scores on the test set (Fig. 3). The XGBoost curve closely followed the diagonal, whereas the curves of the two comparison models deviated further from it. XGBoost also achieved the lowest Brier score (0.118), only marginally below that of random forest (0.124) and further below that of logistic regression (0.139). These results indicate that the XGBoost predictions were well calibrated to the observed readmission risk in the test set.

### HbA1c, length of stay, and prior hospitalizations contributed most to predicted risk

To identify which inputs contributed most to the XGBoost predictions, we computed SHAP (SHapley Additive exPlanations) values. Fig. 4 shows the SHAP summary plot. The five most influential features comprised, in descending order, HbA1c, length of stay, number of hospitalizations in the preceding year, estimated glomerular filtration rate (eGFR), and insulin use. Higher HbA1c, longer hospital stay, more prior hospitalizations, lower eGFR, and insulin use were each associated with higher predicted risk. For HbA1c and prior hospitalizations, these directions agreed with the univariable differences in Table 1. These attributions suggest that the model relied mainly on markers of glycemic control, hospital use, renal function, and insulin treatment.

### Discrimination remained similar across age and sex subgroups

To test whether performance depended on age or sex, we recomputed the AUC of XGBoost in age and sex subgroups. XGBoost achieved an AUC of 0.82 (95% CI 0.76-0.88) in patients older than 65 years and 0.85 (95% CI 0.79-0.91) in those aged 65 years or younger. In men and women, the AUC reached 0.83 and 0.85, respectively. These estimates differed only slightly from the overall AUC of 0.84, and the confidence intervals of the two age subgroups overlapped widely. Inevitably, the subgroup estimates rested on fewer patients than the overall estimate, and their wider confidence intervals preclude firm conclusions about small differences between subgroups. These results suggest that discrimination did not depend on age or sex.

## 4. 改动说明

- LACE 对比(材料第 15 行)整段移出 Results:`03-results.md` 前置约定与细则 8 规定结果节只与本文的预测/模型/假设比较,与前人文献比较留给 Discussion;写进衔接提示与建议补充。
- 开场用"纳入 1,563 例 + 随机划分"的方法回顾,不以第一个数据点起(03 细则 1);1,842 例筛查数取自同篇方法草稿。
- 每块加目标句(To compare / To assess / To identify / To test)与一句总结/含义句,含义句只保留一个避险成分(indicate / suggest;03 细则 13)。
- 关键结果加评价修饰并标 Importantly(03 细则 5、6):nearly identical、higher、only marginally、closely、only slightly、widely。
- 承认两处问题并给措辞(03 细则 9):XGBoost 与随机森林差异不显著(直陈 did not);亚组样本小(Inevitably 去责 + 说明区间宽)。
- 与本文自身对照两处(03 细则 8):基线单因素差异 ↔ 模型输入;SHAP 方向 ↔ 表 1 差异;亚组 AUC ↔ 总体 AUC。
- 时态:本文观察全部过去时(achieved / reached / occurred);图表内容现在时(Fig. 2 shows);含义句现在时 + indicate / suggest(08 总表 Results 行)。
- 图表引用统一用 shows(03 模板;08 规则 4);数值报告用 achieved / reached 替代 was / had(08 藏动作表"懒惰动词")。
- DeLong 检验在方法草稿中未出现,属有原始论文的命名方法,按硬规则 4 加 `[REF]`(应引 DeLong 等 1988 年比较相关 ROC 曲线的方法);Youden 指数按教科书级方法处理,不占位;XGBoost、random forest、SHAP 已在 Methods 提及,不再占位。
- 数字格式:原稿 en dash `0.80–0.88` 改 ASCII 连字符 `0.80-0.88`(硬规则 9;03"统计与模型指标的报告格式"期刊未知默认连字符);`P<0.001` 沿用材料写法、不加空格。
- 原稿未给的信息一律不写:SHAP 与亚组分析是否在测试集上做、性别亚组 CI、Brier 得分 CI/P 值、亚组间比较 P 值、校准斜率/截距,均进「建议补充」。

## 5. 自检结果

核心五项:

- 时态 ✓:本文观察一律过去时,图表内容现在时(Fig. 2 shows / Table 1 shows),四个含义句现在时 + indicate / suggest,同段内无"我们做了"用现在时。
- 语态/所有权 ✓:每块目标句含 we(we randomly assigned / we evaluated / we examined / we computed / we recomputed),其余发现句过去时 + XGBoost 作主语;无 it was found 类无锚被动。
- 结构 ✓:开场为方法回顾;五块按研究问题分,块内总体 → 关键 → 次要 → 问题 → 含义;每块含目标句、位置句、核心发现、总结句;小标题均含动词。
- 强度匹配 ✓:含义句各一个避险成分(indicate ×2、suggest ×2);无 cause / prove;SHAP 方向用 associated with;随机森林差异不显著处直陈 did not。
- 术语缩写 ✓:AUC、CI、HbA1c、eGFR、SHAP 首次给全称;training set / test set / 90-day readmission / logistic regression / random forest / XGBoost 全节单名;LACE 未进正文。

`03-results.md` 自检清单判为 ✗ / N/A 的条目:

- 20 ✗:性别亚组 AUC(0.83 / 0.85)与三模型 Brier 得分只有点估计,材料未给 CI 或 P 值,未编造;进建议补充。
- 16 N/A:引言未提供,无法核对含义句是否回应引言目标用词;正文暂用 predicted ... more accurately / well calibrated,待与引言对齐。
- 18 N/A:同上,无法回头核对引言。
- 19 N/A:目标期刊未知,小节数、小标题形式(动词句式、不编号)、图表顺序按通用惯例。
- 4 ✓(说明):图 2 有多种解读可能,总体评论("XGBoost achieved the highest AUC")放在引导看图之前;图 3、图 4 评论紧随位置句。

`08-verbs-tense-voice.md` 与本节直接相关且判为 ✗ 的条目:无。第 3 条(引用前人发现的时态)N/A,本节不引用前人发现。

`10-chinese-author-pitfalls.md` 逐句扫描(新起草文本,格式:位置 / 句子 / 条目号 / 级别 / 改法):

- error 级(E1–E23)无命中。
- warning 级保留项:
  - 3.1 段第 4 句 / "Compared with non-readmitted patients, readmitted patients exhibited ... (median 1 vs 0, P<0.001)." / E10 触发检查(38 词、逗号 ≥ 4)/ warning / 保留:三项列举、单一主谓,按 09a 叠加判据记为"列举句"。
  - 3.4 段第 3 句 / "The five most influential features comprised, in descending order, ..." / W11 / warning / 保留:五项全列出,comprise 合法。
  - 3.5 段第 3 句 / "In men and women, the AUC reached 0.83 and 0.85, respectively." / W7 主题化开头 + W11 respectively / warning / 保留:短语与主句关系明确(分组),respectively 两两对应且顺序一致。
  - 3.5 段第 5 句 / "Inevitably, the subgroup estimates ..." / W9 / warning / 保留:评价类句子副词允许句首,不报。

句长段长(以 09a 口径计,脚本实测):正文共 29 句,平均约 21 词,单句最长 38 词(上述列举句,已说明保留理由),无 > 40 词句;五段分别 133 / 154 / 86 / 107 / 117 词,均在 80–230 区间;无单句段落。

待作者确认(只有作者能做的项):

- 全节通读;至少一位合著者或同事通读(10 号清单第 17 条)。
- 小标题形式与编号、图表编号(本稿假定图 1 已用于方法流程图,结果从图 2 起)按目标期刊核对。
- 引言目标用词与本节含义句用词是否一致(03 细则 14)。

## 6. 建议补充

- 性别亚组 AUC(0.83、0.85)的 95% CI;三模型 Brier 得分的 CI 或差异检验;年龄、性别亚组间 AUC 差异的检验(如需声称"无差异")。
- 校准曲线的定量指标(校准斜率/截距,或 Hosmer-Lemeshow 类检验),现仅有"接近对角线"的定性描述。
- SHAP 分析与亚组分析所用的数据集(训练集还是测试集)——材料未写,正文未指明。
- 亚组分析是否预设(prespecified)还是事后(post hoc)。
- DeLong 检验、Youden 指数阈值、Brier 得分、亚组分析在方法草稿中均未出现,应补进 Methods 的统计小节;DeLong 处的 `[REF]` 应引比较相关 ROC 曲线的原始方法学论文。
- LACE 评分的全称与文献 AUC 0.6–0.7 的出处(供 Discussion 使用),LACE 全称未知时保留缩写。
- 若作者在引言中提出了明确假设(如"预期 XGBoost 优于逻辑回归"),可在 3.2 段加 as hypothesized,现因材料未给假设未写。
- 引言的目标用词(如 improve prediction accuracy / risk stratification),以便含义句回声。

## 7. 衔接提示

- Methods:结果节用到而方法草稿未写的步骤——DeLong 检验、Youden 指数定阈值(0.21)、Brier 得分、按年龄/性别亚组分析、SHAP 的计算数据集——都需在 Methods 中有对应句;方法中的 27 项化验指标与用药记录在结果中通过 SHAP 特征(HbA1c、eGFR、胰岛素使用)得到回应。
- Discussion:材料第 15 行"LACE 在糖尿病人群 AUC 0.6–0.7、本模型明显更好"放在讨论的"与前人比较"段,带 `[REF]`;强度不得高于本节(本节仅支持 AUC 0.84 且优于逻辑回归、与随机森林差异不显著)。
- Introduction / Abstract:引言目标用词应与 3.2、3.3 的含义句回声;摘要中的结论强度以本节为上限。

## 使用体验反馈

1. `references/03-results.md` 第 99 行模板 "sensitivity was [x]%" 与 `references/08-verbs-tense-voice.md` 第 46 行、第 139 行"is / has 不作主要动词描述数值"直接冲突,写数值句时须二选一,建议模板改为 reached / achieved 或在 08 明确豁免统计报告骨架。
2. `references/03-results.md` 第 100 行模板 "[n] of [N] patients ... versus [n] of [N]" 一句含 ≥ 3 个 of,与 `references/10-chinese-author-pitfalls.md` 第 118 行"一句 of ≤ 2"冲突,而第 109 行与 `references/08-verbs-tense-voice.md` 第 140 行的豁免清单都未列 "n of N" 比例写法,建议补进豁免。
3. `SKILL.md` 第 56 行硬规则 4 对"教科书级通用方法不占位"的边界,未覆盖 DeLong 检验、Youden 指数这类标准统计方法但有原始论文的情形;本稿对 DeLong 占位、Youden 不占位,是自行裁决,建议给一条判据或例子。
4. `SKILL.md` 第 59 行硬规则 7 与 `references/03-results.md` 第 42 行细则 15(结果节可独立成篇)未说明只写 Results 单节时,Methods 已定义的缩写(AUC、CI、SHAP)是否要再给全称;本稿选择重复给全称并在理解确认注明,建议明示。
5. `references/03-results.md` 第 24 行收束层与第 40 行细则 13 只允许"suggest / indicate 类汇报动词或 may / could 类情态"二选一,但第 55 行四要素示例自身用 "appears to"(第 82 行归为降险短语),三处口径不一致,建议统一为"在连续统任一杠杆上取一点"。
6. `references/03-results.md` 第 41 行细则 8 与第 168 行自检第 8 条要求"与本文预测、模型或假设显式比较",当材料没有陈述假设时,能否以"与本文基线模型 / 本文表 1 数据比较"满足未说明;本稿按满足处理。
7. `references/03-results.md` 第 43 行细则 16 要求结果小标题含动词,但未说明期刊未知时是否编号(3.1 / 3.2)以及小标题可否直接陈述发现(claim 式)还是只写关系;本稿用不编号的陈述式,属自行裁决。
8. `references/09a-metrics-table.md` 第 26 行词数口径按空白 token 计,`P < 0.001` 与 `P<0.001` 会相差 2 词/处,一句多个 P 值时足以跨越 30 / 40 词阈值,建议规定统计符号的空格写法或计数方式。

## 读取清单

1. `[LOCAL_PATH]/skills/sci-writing/SKILL.md`(全文)
2. `[LOCAL_PATH]/skills/sci-writing/references/03-results.md`(全文,先读)
3. `[LOCAL_PATH]/skills/sci-writing/references/08-verbs-tense-voice.md`(全文,再读)
4. `[LOCAL_PATH]/skills/sci-writing/references/10-chinese-author-pitfalls.md`(全文,总则)
5. `[LOCAL_PATH]/skills/sci-writing/references/09a-metrics-table.md`(全文,总则)
6. `[LOCAL_PATH]/skills/sci-writing/samples/results-draft-zh.md`(材料)
7. `[LOCAL_PATH]/skills/sci-writing/samples/methods-draft-zh.md`(背景)

未读:`09-academic-style.md`(10 号扫描未命中 W3 / W12 / W16,用户未要求风格润色,按 SKILL.md 总则不读);samples/ 下 expected-points-*、README.md;tests/、notes/、docs/ 与仓库其它文件。未运行 git。
