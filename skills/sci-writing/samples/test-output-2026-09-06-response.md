# 测试输出:Response to Reviewers(2026-09-06)

> 输入:`samples/reviewer-comments.md`。依据:`SKILL.md` 路由表第 47 行 → `references/12-submission-checklist.md`「审稿回复三原则」(第 36–42 行)、模板(第 70–90 行)、G 组自检(第 232–242 行);句子层按 08、09、10。

## 理解确认

- 故事线(据审稿意见反推,请确认):单中心回顾队列上训练的 XGBoost 模型预测糖尿病患者再入院,内部验证 AUC 0.84,高于逻辑回归基线;本轮为 major revision,两位审稿人共 6 条意见。
- 目标期刊未知 → 按通用惯例处理,拼写默认美式,英文用 ASCII(SKILL 硬规则 9、10)。
- 本次处理:给编辑的开头段 + 逐条回复 R1-1 至 R2-3。修改位置只写到作者给出的节号与表号(2.3、2.4、3.2、Table 2、Abstract、Discussion/Limitations),未编造页码与行号。

## 结构

回复信按 12 号第 39 行「每条回应固定三段」组织,每条回复段落对应:

1. 理解该意见(restate the point)。
2. 我们的立场(agree / partly agree / unable to comply and why)。
3. 修改内容与位置(what changed, where;未修改则写原因)。

开头段(给编辑)按 12 号第 39 行「另附修改稿封面信总结」的要求,只做主要改动汇总,不复述结果。处理分级按 12 号第 42 行:R1-1、R1-3、R2-1、R2-3 = 认同并修;R1-2 = 认同并修 + 写进局限;R2-2 = 数据不可得,说明立场交编辑判断。

## 正文

Dear Dr. [Editor name],

Thank you for the opportunity to revise our manuscript "[Manuscript title]" (Manuscript ID: [ID]). We have responded to each comment from the two reviewers point by point below and have indicated where each change appears in the revised manuscript. The main changes are as follows: (1) we have tempered the statements on clinical applicability in the Abstract and Discussion and added a paragraph on the absence of external validation to the Limitations; (2) we have described the handling of remaining missing values in Section 2.3 and added a comparison between excluded and included patients; (3) we have added bootstrap 95% confidence intervals (CIs) for sensitivity and specificity to Table 2; (4) we have re-run the logistic regression baseline with L2 regularization and cross-validated tuning and updated Sections 2.4 and 3.2 and Table 2; (5) we have stated in the Discussion that the LACE and HOSPITAL scores were not computable on our cohort and added an indirect comparison with their published performance; (6) we have edited the language throughout. Section and table numbers below refer to the revised manuscript. [All changes are highlighted in the revised manuscript.]

Sincerely,
[Corresponding author name], on behalf of all authors

---

### Response to Reviewer 1

We thank Reviewer 1 for the constructive comments. Our responses follow.

**Comment R1-1.** *The study is single-center and lacks external validation. The authors should either validate the model on an independent cohort or substantially temper their claims about clinical applicability.*

**Response R1-1.** We agree that a single-center study without external validation does not support claims about clinical applicability. No independent cohort is available to us, so we were unable to perform external validation. We have therefore tempered the claims. In the Abstract and the Discussion, the statement that the model supports clinical decision-making has been replaced by a statement that the model shows potential and requires external validation before clinical use. In addition, we have added a dedicated paragraph to the Limitations describing the single-center design and the lack of external validation. The revised Abstract sentence now reads: "[insert revised sentence from the Abstract]" and the new Limitations paragraph appears in the Discussion.

**Comment R1-2.** *The exclusion of patients with more than 30% missing key laboratory values may introduce selection bias. How were the remaining missing values handled? This is not described.*

**Response R1-2.** The reviewer raises two points, and we address each in turn. First, we agree that the handling of the remaining missing values was omitted from the Methods. These values were imputed with the median of the training set. This procedure is now described in Section 2.3. Second, to assess the possibility of selection bias, we performed a sensitivity analysis comparing the baseline characteristics of the 279 excluded patients with those of the included patients. Age and sex did not differ significantly between the two groups, whereas the excluded patients had a longer hospital stay (median 9 days vs 7 days, P = 0.01). We now report this comparison in the Discussion and state in the Limitations that the difference in length of stay is a potential source of selection bias.

**Comment R1-3.** *Table 2: please report 95% confidence intervals for sensitivity and specificity, not only for AUC.*

**Response R1-3.** We agree. We have computed 95% CIs for sensitivity and specificity by bootstrap with 1000 resamples. Sensitivity was 0.79 (95% CI 0.73-0.85) and specificity was 0.77 (95% CI 0.72-0.82). Table 2 has been updated accordingly.

### Response to Reviewer 2

We thank Reviewer 2 for the careful reading of the manuscript. Our responses follow.

**Comment R2-1.** *The comparison with logistic regression is unfair because no regularization or feature selection was applied to the logistic model. Please clarify or re-run with a tuned baseline.*

**Response R2-1.** The reviewer is correct that the original logistic regression baseline was not tuned. We have re-run the logistic regression with L2 regularization, selecting the regularization parameter C by five-fold cross-validation. The tuned baseline reached an area under the receiver operating characteristic curve (AUC) of 0.78, compared with 0.76 for the untuned model, and remained below the AUC of 0.84 obtained by the XGBoost model. Section 2.4 (Methods), Section 3.2 (Results), and Table 2 have been updated with the tuned baseline.

**Comment R2-2.** *The Introduction cites LACE and HOSPITAL scores but does not report their performance on the present cohort. A direct comparison would strengthen the paper.*

**Response R2-2.** We appreciate this suggestion and agree that a direct comparison would be informative. However, our dataset does not contain all the variables required to compute the two scores, including the number of emergency department visits and the presence of an oncology diagnosis. The scores therefore cannot be calculated on the present cohort, and we have not added a new analysis. Instead, we now state this limitation explicitly in the Discussion and cite the published performance of the LACE and HOSPITAL scores in populations with diabetes [REF] as an indirect comparison with our model.

**Comment R2-3.** *Minor: several sentences in the Discussion begin with "And" or "So"; the manuscript would benefit from language editing.*

**Response R2-3.** We agree. The sentences in the Discussion that began with these words have been rewritten, and the language has been revised throughout the manuscript.

## 改动说明

- 开头段只汇总六项改动,不复制摘要(12 号第 104 行「投稿信复制摘要」错误模式;第 39 行「另附封面信总结」)。
- 每条回复按「理解 → 立场 → 修改与位置」三段(12 号第 39 行);感谢只在每位审稿人开头各一句,不逐条重复(12 号第 40 行、第 99 条「不过度感谢」)。
- R2-2 用 "We appreciate ... However ... Instead" 结构,属「部分同意与说明」模板(12 号第 77–82 行);未加新实验的原因写明,交编辑判断(12 号第 42 行第三级)。
- R1-1 里旧表述改成 "shows potential and requires external validation",避险只留 "potential" 一处(08 号确定性阶梯规则 1)。
- 全文不用 can/could 描述已做的事:"were unable to perform""were not computable""cannot be calculated"——最后一处 cannot 表「不可能」,符合 08 号情态表「显然 / 不可能」行。
- AUC、CI 首次出现给全称(SKILL 硬规则 7;09 号规则 5)。XGBoost 是命名算法,但回复信不列参考文献,故不加 `[REF]`;R2-2 引已发表评分表现处按硬规则 4 放 `[REF]`。
- 数字区间用 ASCII 连字符 "0.73-0.85",不用 en dash(SKILL 硬规则 9)。

## 自检结果

核心五项:

- 时态 ✓:已完成的修改用现在完成时(we have revised / has been updated),重跑分析与结果用过去时(reached / did not differ),对稿件现状的陈述用现在时(now reads / appears)。
- 语态/所有权 ✓:主动 we 为主;被动句(has been replaced / have been updated)受事是稿件本身,所有权无歧义(08 号语态规则 2、3)。
- 结构 ✓:6 条意见编号一一对应,每条含理解、立场、修改位置三段;R2-2 写明未修改及原因(12 号第 96、97 条)。
- 强度匹配 ✓:未替作者新增结论;R2-1 只说 "remained below",不加评价副词;R1-1 新表述一个避险词。
- 术语缩写 ✓:AUC、CI 首次给全称;"external validation""logistic regression baseline""XGBoost model"全信各一名称,未同义替换。

12 号 G 组(第 96–104 条)判为 ✗ 或待作者确认的条目:

- 第 100 条(修订模式/颜色标出 + 封面信)**待作者确认**:作者说明未提修订模式,信中该句已加方括号,需作者确认已按此操作后再去括号。
- 第 97 条 R1-1 **部分 ✗**:三原则要求「引用修改后句子」,但作者只给了中文改法,未给英文原句,故留 "[insert revised sentence from the Abstract]" 占位,不代拟稿件句子(SKILL 硬规则 3 优先)。
- 第 102 条 ✓(6 条全覆盖);第 98、99、101 条 ✓;第 103、104 条不适用(非拒稿、非校样阶段)。

10 号逐句扫描(E1–E23、W1–W16):

- E19「句首 And / So」:仅在 R2-3 转述审稿人原话处以引号出现(Comment 与 Response 各一次),属引用而非使用,判 ✓ 保留。
- E20「can/could」:R2-2 "cannot be calculated" 表不可能,保留;其余无 can/could。✓
- W3「无信息修饰词」:"constructive comments""careful reading" 为礼貌语,不在正文论证中,保留。
- 其余 error/warning 条目未触发。09 号句长:最长句为开头段第三句(列举六项,约 110 词),以分号编号列举,按 09 号规则「拆不拆由句意定」保留,理由是编号列表可读性优于拆成六句。

## 建议补充

作者需提供或确认以下信息,信中已留占位或方括号:

1. Editor 姓名、稿件标题、Manuscript ID。
2. R1-1:Abstract 与 Discussion 中改后的英文原句(替换 "[insert revised sentence from the Abstract]");若期刊要求页码/行号,补齐各修改点的页与行。
3. R1-2:排除组与纳入组比较结果最终放在 Discussion 正文还是补充材料/表格(信中按作者说明写为 Discussion 的 Limitations,未编造 Supplementary Table)。
4. R2-2:拟引用的 LACE / HOSPITAL 在糖尿病人群表现的文献(替换 `[REF]`)。
5. 是否已用修订模式或颜色标出修改(决定是否保留 "[All changes are highlighted ...]" 一句)。
6. R2-3:若使用了专业语言编辑服务,可补一句(12 号第 67 行模板);作者说明未提,故信中未写。

## 衔接提示

- 回复信中声称的每处修改在稿件中都应真实存在且位置一致:Section 2.3(中位数填补)、Section 2.4 与 3.2 及 Table 2(调参后 LR、CI)、Abstract 与 Discussion(弱化表述、新增 Limitations 段、排除组比较、LACE/HOSPITAL 说明)。
- R1-1 弱化后,Abstract 与 Conclusion 的强度不得高于 Results(SKILL 硬规则 6);建议作者同步核对 Conclusion 是否仍残留 "support clinical decision-making" 类表述(作者说明只提到 Abstract 与 Discussion)。

## 使用体验反馈

1. SKILL.md 第 47 行路由表把「回复审稿人」只指向 12,「再读」列写"某条 ✗ 时跳对应文件",但第 49 行又要求任何单节起草后必须按 10 号逐句扫描——回复信算不算"某一节"、是否必须走 10 号,两处没有明说,我按必须走处理。
2. SKILL.md 第 66–74 行「输出格式约定」第 2 项要求"该节功能步清单",但 12 号没有给回复信的"功能步",只有第 39 行的三段式;我把三段式当功能步用,属自行映射。
3. SKILL.md 第 72 行自检"固定报五项核心",与 12 号第 24 行"投稿前总检按分组输出、单节自检按 SKILL 五项"之间,回复信落在哪一档没写;我选了"五项核心 + 只列 G 组 ✗/待确认"。
4. 12 号第 39 行要求"引用修改后句子",而 SKILL 硬规则 3(第 55 行)禁止编造原稿没有的内容;作者说明只给了中文改法没给英文原句,两条规则在这里直接冲突,我选硬规则 3 优先并留占位,但 12 号没有说明这种情况怎么办。
5. 12 号第 100 条与模板第 89 行 "All changes are highlighted in the revised manuscript" 是替作者做的承诺;本次任务要求"不得替作者新增承诺",而 12 号没有把这句标为"需作者确认后才写",我只能加方括号处理。
6. 12 号第 40 行"不过度感谢"与第 71 行模板 "We thank the reviewer for this comment." 之间没有度的标准(每条一句算不算过度),我按"每位审稿人开头一句"自行裁量。
7. 10 号自检第 16 条要求扫描报告用"位置 / 原句 / 条目号 / 级别 / 改法"格式,但对新起草文本(无"原句")该格式不成立;SKILL 第 49 行又说"扫描结果并入自检",两处格式要求不一致,我按 SKILL 并入自检、逐条只写结论。
8. 08 号第 20–29 行时态总表按论文各节给出,没有回复信/投稿信这一行;"已完成修改用现在完成时、重跑分析用过去时"是我参照 Conclusion 行自行推断的。
9. 09 号规则 9(第 51 行)"数字带评价性修饰"是否适用于回复信没写;我只用了 "remained below" 一类中性对比,未加 only/as high as,若期望加则口径缺失。
10. SKILL 硬规则 4(第 56 行)要求 XGBoost 等命名算法加 `[REF]`,但回复信通常不带参考文献;规则没有给"回复信/投稿信不加文献占位"的例外,我按常识未加,属自行裁量。
11. SKILL 第 74 行「衔接提示」定义为"只写某一节时",回复信不是稿件的一节,是否需要这一项不明确;我改写成"信与稿件修改位置对应"的提示。
