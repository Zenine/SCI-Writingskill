# 回归测试输出:Discussion 与 Conclusion(2026-09-07)

> 输入:`skills/sci-writing/samples/discussion-draft-zh.md`;背景材料:`introduction-draft-zh.md`、`results-draft-zh.md`。按 `SKILL.md` 路由表第 39 行(先读 04,再读 01 镜像核对、08 情态动词与阶梯)+ 总则(10、09a)执行。

## 1. 理解确认

- 故事线(张力陈述):前人认为糖尿病住院患者的再入院预测只能靠通用评分(LACE、HOSPITAL,AUC 0.6-0.7)或传统回归(中国人群约 0.70),且机器学习模型多来自欧美、样本小、不可解释;本文表明用中国三甲医院常规 EHR 数据建的 XGBoost 模型 AUC 达 0.84、校准好,且 SHAP 给出的前五特征临床可解释。主要价值类型:**结果更准 + 可解释 + 开辟应用(中国人群、出院前筛查)**。
- 目标期刊未知,按 `SKILL.md` 硬规则 10 直接产出:结构默认 `04-discussion-conclusion.md` 前置约定选项 ①(Results / Discussion / Conclusion 分立)——**请确认**;拼写默认美式;引言目的句时态假设为现在时,讨论/结论按 08 总表处理——**请确认**。
- 本次只处理 Discussion 与 Conclusion 两节;Methods / Results 成稿不可见,依赖其内容的判定标 N/A。

## 2. 结构

**Discussion(04 步骤编号)**

| 段 | 功能步 | 内容 |
|---|---|---|
| D1 | 步 2 陈述成就 + 步 4 回顾空白/目标(回声) | 做了什么;引言三处空白(通用评分效果一般 / 欧美小样本不可解释 / 中国人群研究少)逐一回声;to our knowledge 首个;一句概括主结果 |
| D2 | 步 5 回顾关键结果 + 步 6 映射文献(判别与校准模块) | vs LACE/HOSPITAL、vs 中国两篇、vs 欧美 ML;XGBoost vs LR/RF 的含义;Brier 的含义 |
| D3 | 步 5 + 步 6(SHAP 特征模块) | 五个特征逐一给解释与文献关系;胰岛素两种解释不下结论 |
| D4 | 步 9 潜在应用(临床意义) | 24 h 常规数据、嵌入 EHR、医生随访 / 药师用药教育;只是筛查 |
| D5 | 步 7 局限与未来工作 | 七条局限集中一处;三条未来工作(均为建议他人/后续做,原稿无"正在做") |
| D6 | 步 8 重申贡献 + 步 9 应用 | 收束,不以局限收尾 |

**Conclusion(04 组件编号)**:组件 2 认领成就(现在完成时)→ 5 方法一句 → 6 关键结果 + 评价 → 7 含义 → 9 应用 → 8+11 局限并入下一步。

## 3. 正文

## Discussion

In this study, we developed an XGBoost [REF] model that predicts 90-day readmission in Chinese patients with type 2 diabetes mellitus (T2DM) from routine electronic health record (EHR) data. We compared this model with logistic regression and random forest [REF], and we used SHAP [REF] to identify the features that drove its predictions. Existing readmission tools were developed for general inpatient populations and perform only moderately in patients with diabetes. Most machine learning models for this problem have been built on Western data with limited sample sizes and little explanation of their predictions. Readmission prediction in Chinese patients with T2DM, the largest diabetic population in the world, has received little attention. To our knowledge, this study is the first to apply an interpretable machine learning model to 90-day readmission in Chinese inpatients with T2DM; the two published studies in this population that we identified both used traditional regression. Our model reached an area under the receiver operating characteristic curve (AUC) of 0.84 in the held-out test set with good calibration, and the features on which it relied are clinically coherent.

Our model discriminated better than the generic scores and the earlier Chinese models. In patients with diabetes, the LACE and HOSPITAL scores have reported AUCs of 0.6-0.7 [REF], and the two Chinese T2DM studies reported AUCs of approximately 0.70 [REF]. The AUC of 0.84 obtained here therefore represents a substantial improvement in the same population. Machine learning readmission models from Europe and North America have reported AUCs of 0.75-0.82 with 500-3,000 patients [REF]. Our result lies at the upper end of this range with a sample size in the same range, and it extends these findings to a Chinese population. Within our study, XGBoost outperformed logistic regression (P = 0.003) but did not differ significantly from random forest, so the gain over logistic regression was shared by the two tree-based models rather than specific to XGBoost. The Brier score of 0.118 indicates that the predicted probabilities were close to the observed readmission rates; such calibration is a prerequisite for using predicted risk to flag patients before discharge.

The five most influential features are consistent with known risk factors for readmission in diabetes. A higher glycated hemoglobin (HbA1c) indicates poor glycemic control, and its association with readmission has been reported previously [REF]. A greater number of hospitalizations in the preceding year is a well-established strong predictor across readmission models in general [REF]. A lower estimated glomerular filtration rate (eGFR) indicates impaired renal function, and patients with diabetic kidney disease are known to carry a high readmission risk [REF]. Insulin use may reflect a longer disease course and more severe disease. Alternatively, it may be related to hypoglycemic events; because our dataset contained no records of hypoglycemia, we were unable to separate these two explanations, and this question remains open. A longer index length of stay may reflect more complex illness. Together, these features support the clinical plausibility of the model's predictions.

These findings have direct implications for discharge planning. All input features are routine data available within 24 hours of admission, so the model requires no data beyond routine records and could be embedded in the EHR to flag high-risk patients before discharge. Such an alert would allow physicians to schedule closer follow-up and pharmacists to provide medication education for the flagged patients. The model is, however, a screening tool: it identifies patients who warrant attention but does not replace clinical judgment about why a patient is at risk or how to intervene.

Several limitations should be considered when interpreting these results. First, the study was retrospective and used data from a single center, and the model has not been externally validated; its performance in other hospitals is therefore unknown. Second, missing values were imputed with the median. Third, socioeconomic status, family support, and other social variables were not available and were not included. Fourth, readmissions were counted only at the index hospital, so patients readmitted to other hospitals were classified as not readmitted, and the true readmission rate was probably underestimated. Fifth, we did not conduct a prospective interventional study, so whether using the model reduces readmission remains untested. Future work should address these gaps through external validation in multicenter cohorts, incorporation of social factors, and a prospective study that tests whether embedding the model in the discharge workflow lowers the readmission rate.

In summary, this study provides an interpretable model that predicts 90-day readmission in Chinese inpatients with T2DM from routine data available at admission. Its discrimination exceeds that of the generic scores and the traditional regression models previously reported in this population. Once externally validated, the model could serve as a pre-discharge screening step that directs follow-up and medication education toward the patients most likely to return.

## Conclusion

In this study, we have developed an XGBoost model that predicts 90-day readmission in Chinese inpatients with type 2 diabetes mellitus from routine electronic health record data available within 24 hours of admission. We compared this model with logistic regression and random forest and used SHAP to identify the features that drove its predictions. In the held-out test set, the model reached an area under the curve (AUC) of 0.84 with good calibration (Brier score 0.118). It outperformed logistic regression, did not differ significantly from random forest, and exceeded the AUCs of 0.6-0.7 reported for existing readmission scores in patients with diabetes. The five most influential features, namely glycated hemoglobin, length of stay, hospitalizations in the preceding year, estimated glomerular filtration rate, and insulin use, are clinically plausible, and this plausibility supports the model's interpretability. These results indicate that high-risk patients in this population are identifiable from routine data before discharge, and the model has the potential to support pre-discharge decisions such as targeted follow-up and medication education. Because the model was developed at a single center, external validation in multicenter cohorts and a prospective evaluation of its effect on readmission rates are the next steps toward clinical implementation.

## 4. 改动说明(材料 → 英文的关键处理)

- 原稿"我们只查到两篇,都是传统回归"译为 to our knowledge ... first ... interpretable machine learning model,并把"两篇传统回归"写在同句作依据(04 细则 4、自检 4)。
- 原稿"胰岛素使用可能反映……也可能与低血糖有关,但没有低血糖记录,不能下结论"拆成两句,每句一个 may;"不能下结论"写作 we were unable to separate ... this question remains open,避免 cannot 被读成"不可能"(04 情态动词节;08 can/could 裁决 2)。
- 原稿"入院 24 小时内的常规数据就能算"未用 can,写作 All input features are routine data available within 24 hours of admission(08 裁决 1;10 E20)。
- "去外院的没算"补了一句逻辑推论 the true readmission rate was probably underestimated(单一避险词 probably);这是原局限的直接推论,非新增事实。
- 结果节数字只在 D1/D2 各引一次(AUC 0.84、P = 0.003、Brier 0.118)用于与文献比较,未引图表号(04 细则 4)。
- 缩写 T2DM、EHR、AUC、HbA1c、eGFR 在本节首次出现处给了全称;若正文 Methods/Results 已定义,可删本节全称(硬规则 7)。

## 5. 自检结果

**核心五项**

- 时态 ✓:本研究动作与发现用过去时(developed / reached / outperformed / were imputed);成就与主张现在时(this study provides);结论认领用现在完成时(we have developed);含义与应用现在时 + could / has the potential to;未来工作 should / are the next steps(08 总表 Discussion、Conclusion 行)。
- 语态/所有权 ✓:每个发现句含 we / our / this study / here / obtained here / in this study 至少一项;无施动被动句(were imputed / were counted / were classified)均位于 D5 且段首 these results 与 the study 定位为本研究。
- 结构 ✓:讨论由窄到宽(本文 → 文献 → 特征解释 → 应用 → 局限 → 贡献),第一句为成就陈述,结尾为应用;结论五句含成就 / 方法一句 / 关键结果 + 评价 / 含义 / 应用 + 下一步。
- 强度匹配 ✓:AUC 0.84 vs 0.70 用 substantial improvement(有数字撑);vs 欧美 ML 只说 upper end of this range、extends;胰岛素与住院天数各一个 may;结论强度(identifiable、has the potential to)不高于结果节(结果节给的是判别与校准数字,无外部验证)。
- 术语缩写 ✓:90-day readmission / T2DM / EHR / AUC / HbA1c / eGFR / held-out test set / hospitalizations in the preceding year 全节各一种写法;LACE、HOSPITAL 全称未知保留缩写(进建议补充,按硬规则 7 不算违规)。

**04 自检清单中判为 ✗ 或 N/A 的条目**

- 04-10(局限首次出现位置)N/A:单中心 / 回顾性 / 中位数填补 / 只统计本院,按链式规则应在 Methods 首次提及;Methods 成稿不可见,无法核对是否已提及。其余(无外部验证、缺社会变量、无前瞻试验)属"需进一步工作才能下结论"类,可在讨论首次出现。
- 04-15(不复制摘要句子)N/A:摘要不可见。结论未复用本讨论任何原句。
- 04-20(结论长度)✓:199 词、1 段,在 100-200 默认区间内上沿;期刊均值未知。
- 其余 04-1 至 04-19 ✓(不逐条罗列)。

**01 镜像核对(再读文件,只报与本节相关项)**

- 01-18(引言空白在讨论/结论中逐一回应、措辞一致)✓:引言三处空白(通用评分对糖尿病人群效果一般 / 欧美数据小样本不可解释 / 中国人群研究少)在 D1 第 2-4 句逐句回声,动词 predict、compare、identify(SHAP)与引言目标一致。⚠ 引言英文成稿不在本次读取范围,回声用的是中文材料的名词与动词;若引言英文稿已定,请按其措辞微调 D1(待作者确认)。

**08 自检清单(再读文件,只报 ✗/N/A)**

- 08-3(引用前人发现的时态按最新文献核对)N/A:离线,[REF] 均为占位。
- 08-9(一句 of ≤ 2)✓ 但两处 of = 2 恰在阈值(D1 "the largest diabetic population in the world" 无 of;D2 "the upper end of this range with a sample size in the same range" of = 1)——已核,无超限句。
- 其余 ✓。

**10 号清单逐句扫描(新起草文本格式:位置 / 句子 / 条目号 / 级别 / 改法)**

- error 级:无命中。
- D1 第 4 句 / "has received very little attention" / W3 / warning / 已删 very。
- D2 末句 / ", which is a prerequisite" / W2 / warning / 已改为分号 + such calibration is a prerequisite。
- Conclusion 第 4 句 / ", which supports the interpretability" / W2 / warning / 已改为 and this plausibility supports。
- D1 末句 / "the features on which it relied" / W1 / warning / 保留:which 紧跟唯一先行词 features,所指唯一。
- D5 第 2 句 / "its performance in other hospitals" / E3 / 不报:its 所指唯一(the model)。
- D4 末句 / "it identifies patients" / E3 / 不报:it 所指唯一(the model)。
- Conclusion 第 3 句 / "namely glycated hemoglobin, length of stay, ..., and insulin use" / 09a 超载信号 / 列举句(5 项、单一主谓)保留。
- W16 拼写:全篇美式(hemoglobin、center),无混用。

**句长段长(09a)**

- 讨论 6 段:181 / 166 / 143 / 92 / 141 / 66 词;D6 为收束段 66 词,低于 80 词区间,占 1/6 非多数,按"从材料起草"不作硬指标。
- 最长句 37 词(D1 to our knowledge 句),> 30 词句共 8 句已逐句核过:均为单一主谓 + 并列或对比结构,无 > 40 词句。

**待作者确认(单独汇总)**

- 目标期刊结构(选项 ①)、拼写变体、Conclusion 目标词数。
- 引言英文成稿的空白措辞与目标动词,用于微调 D1 回声。
- 单中心 / 回顾性 / 中位数填补 / 只统计本院四条局限,是否已在 Methods 首次提及。
- 结论作为独立节,期刊是否要求重新展开 AUC / SHAP 等缩写。
- 通读:请至少一位合著者通读两节(10 号清单第 17 条)。

## 6. 建议补充

- `[REF]` 占位需要引用的内容(共 8 处):XGBoost 原文;random forest 原文;SHAP 原文;LACE 与 HOSPITAL 评分在糖尿病人群 AUC 0.6-0.7 的文献;中国 2 型糖尿病住院患者再入院预测的两篇传统回归研究;欧美机器学习再入院模型 AUC 0.75-0.82(样本 500-3,000)的文献;HbA1c 与再入院关系;既往住院次数为公认强预测因子;糖尿病肾病患者再入院风险高。
- LACE、HOSPITAL 评分的全称(专名型缩写,原稿未给)。
- "胰岛素使用可能与低血糖事件有关"是否有文献支持;有则加 [REF],无则保留为推测。
- 缺失值填补的比例与受影响变量(D5 第 3 句只写了"中位数填补",若 Methods 已报比例,讨论可不补)。
- 是否有任何"正在进行"的多中心或前瞻工作;原稿三条未来工作均写为建议(should),若已启动请改 work is underway。
- 引言中"中国糖尿病患者数量全球最多"若在讨论重复(D1 第 4 句 the largest diabetic population in the world),需与引言同一引文与年份。

## 7. 衔接提示

- 引言三处空白 ↔ D1 第 2-4 句逐一回应;引言目标动词(predict / compare / identify with SHAP)↔ D1 首两句与结论首两句;引言若预告"面向中国人群",讨论 D1、D2、D6 与结论均已呼应。
- 结果节的三处比较(AUC 三模型 + DeLong、Brier 三模型、SHAP 前五特征)↔ D2、D3 各一模块;结果材料末尾"LACE 在糖尿病人群 AUC 0.6-0.7 的对比"本次放在 D2(讨论),结果节不应再出现该文献比较。
- 亚组结果(65 岁上下、性别)结果节有报而讨论未提;原稿讨论材料未涉及,若作者希望讨论,需另给解释材料。
- Methods 中的中位数填补、单中心回顾性设计、再入院只统计本院,应在 Methods 先出现,讨论 D5 才是"再次提及"。

## 使用体验反馈

1. `SKILL.md` 第 39 行"再读 01(镜像核对)"未限定读哪几节,实际只需 01 细则 11 与自检 18;建议像第 36 行那样写成"01(只读细则 11、自检 18)",可省下整份 01。
2. `references/04-discussion-conclusion.md` 第 49 行结论长度"通常 100-200 词"与 `references/09a-metrics-table.md` 第 2、12 行"全 skill 唯一数字源"冲突——09a 表中没有结论词数一行,04 却自带数字;建议在 09a 加一行"结论 100-200 词"并让 04 写"数字见 09a"。
3. `references/04-discussion-conclusion.md` 第 27 行与第 38 行要求"不重复数据",但第 42 行与第 44 行的强度匹配与评价词核对都要能"指到结果节证据";与文献 AUC 比较时不可能不引本文 AUC,建议明确"不重复图表号与完整数字表,但允许引用用于比较的关键数值"。
4. `references/04-discussion-conclusion.md` 第 45 行链式规则要求判断局限"是否已在方法/结果首次提及",而只写 Discussion 时看不到相邻节;自检第 144 行(第 10 条)没有 N/A 出口,只能借 `SKILL.md` 第 72 行的通用 N/A 规则,建议在第 10 条后注"相邻节不可见时标 N/A"。
5. `SKILL.md` 第 59 行硬规则 7"缩写首次出现给全称"未说明"只写某一节"时是否以该节为首次;本次按节内首次给全称并在改动说明注明可删,建议在硬规则 7 加一句口径。
6. `references/10-chinese-author-pitfalls.md` 第 130 行(自检第 16 条)要求新起草文本报告用"位置 / 句子 / 条目号 / 级别 / 改法",但未规定"位置"的粒度(段号 + 句序还是行号);本次用"段号 + 第 N 句",建议给一个示例。
7. `skills/sci-writing/samples/discussion-draft-zh.md` 第 3 行把引言承诺的目标概括为四点,与 `introduction-draft-zh.md` 第 5 行原文一致,便于回声核对;但材料没说三条未来工作是否有"正在进行"的,导致 04 细则 6 的"work is underway / should be investigated"区分只能全部落在 should,已进建议补充。

## 读取清单

1. `/home/zenine/github/SCI-Writingskill/skills/sci-writing/SKILL.md`(全文,77 行)
2. `/home/zenine/github/SCI-Writingskill/skills/sci-writing/references/04-discussion-conclusion.md`(全文,161 行;先读)
3. `/home/zenine/github/SCI-Writingskill/skills/sci-writing/references/01-introduction.md`(全文,137 行;再读,镜像核对)
4. `/home/zenine/github/SCI-Writingskill/skills/sci-writing/references/08-verbs-tense-voice.md`(全文,154 行;再读,情态动词与阶梯)
5. `/home/zenine/github/SCI-Writingskill/skills/sci-writing/references/10-chinese-author-pitfalls.md`(全文,135 行;总则必读)
6. `/home/zenine/github/SCI-Writingskill/skills/sci-writing/references/09a-metrics-table.md`(全文,30 行;总则必读)
7. `/home/zenine/github/SCI-Writingskill/skills/sci-writing/samples/discussion-draft-zh.md`(输入材料)
8. `/home/zenine/github/SCI-Writingskill/skills/sci-writing/samples/introduction-draft-zh.md`(背景)
9. `/home/zenine/github/SCI-Writingskill/skills/sci-writing/samples/results-draft-zh.md`(背景)

未读取:samples/expected-points-*、samples/README.md、tests/、notes/、docs/ 及仓库其它文件;未运行 git。
