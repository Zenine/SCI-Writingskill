# 回归测试输出:Response to Reviewers(2026-09-07)

## 理解确认

- 故事线(据审稿意见与作者说明推断,**请确认**):单中心糖尿病患者队列上,XGBoost 模型的预测性能(AUC 0.84)优于调参后的逻辑回归(0.78);结局变量材料未给出(LACE、HOSPITAL 为再入院风险评分,推测结局为再入院,信中不写具体结局名)。
- 目标期刊与编辑姓名、稿件编号、页码行号均未给出(**请确认**):按通用回复信惯例处理,美式拼写,位置只写作者给出的节号与表号,其余用 `[page/line to be confirmed]` 占位。
- 本次处理的节:回复信一封,含给编辑的开头段与 R1-1 至 R2-3 六条逐条回复;结构按 `12-submission-checklist.md`「回复信的结构」。

## 结构

1. 给编辑的开头段:感谢 → 总述 → 标注方式(待作者确认)→ 主要改动编号列表(每项一行)。
2. Reviewer 1 一节:开头一句感谢;R1-1(改弱结论 + 新增局限段)、R1-2(补缺失值处理 + 敏感性分析)、R1-3(补 95% CI)。
3. Reviewer 2 一节:开头一句感谢;R2-1(重跑调参基线)、R2-2(无法直接比较 + 替代做法)、R2-3(语言修改)。
4. 每条:意见摘述 → 理解与立场 → 做了什么与位置 → 修改后文字摘录。
5. 信末签名一次。

## 正文

Dear Dr. [Editor name],

Thank you for the opportunity to revise our manuscript "[Manuscript title]" (Manuscript ID [ID]). We appreciate the constructive comments of both reviewers and have revised the manuscript in response to each point. Our point-by-point responses follow; reviewer comments are given in bold, our responses in plain text, and revised text in quotation marks. [All changes are marked in the revised manuscript.] (待作者确认:只在作者已标出时保留)

The main changes are:

1. Claims about clinical applicability have been tempered in the Abstract and Discussion; a new Discussion paragraph addresses the single-center design and the lack of external validation (R1-1).
2. Section 2.3 now describes how remaining missing values were imputed, and a sensitivity analysis comparing excluded with included patients has been added (R1-2).
3. Table 2 now reports bootstrap 95% confidence intervals for sensitivity and specificity (R1-3).
4. The logistic regression baseline was re-run with L2 regularization and cross-validated tuning; Section 2.4, Section 3.2, and Table 2 have been updated (R2-1).
5. The Discussion now explains why the LACE and HOSPITAL scores could not be computed on our cohort and provides an indirect comparison with published results (R2-2).
6. The language has been revised throughout, including the Discussion sentences noted by Reviewer 2 (R2-3).

### Reviewer 1

We thank Reviewer 1 for the careful reading of the manuscript and for the suggestions on validation, missing data, and reporting.

**Comment R1-1.** The study is single-center and lacks external validation. The authors should either validate the model on an independent cohort or substantially temper their claims about clinical applicability.

**Response.** We understand the concern that a single-center model without external validation does not yet support claims about clinical applicability. We agree. An independent cohort is not available to us, so we have taken the second option and tempered our claims. The statement in the Abstract and Discussion that the model could help clinicians make decisions has been replaced with a statement that the model has potential but requires external validation. In addition, a dedicated paragraph on this limitation has been added to the Discussion [page/line to be confirmed].

Revised text (Abstract and Discussion): "The model shows potential to support clinical decision-making in this population; however, external validation in independent cohorts is required before clinical application."

Revised text (Discussion, Limitations, [page/line to be confirmed]): "This study was conducted at a single center, and the model was not externally validated. Its performance in other hospitals and patient populations therefore remains unknown, and the present results should be regarded as preliminary until confirmed in independent cohorts."

**Comment R1-2.** The exclusion of patients with more than 30% missing key laboratory values may introduce selection bias. How were the remaining missing values handled? This is not described.

**Response.** This comment identifies a genuine omission, and we thank the reviewer for it. The comment raises two points. First, the handling of remaining missing values was indeed not described in the original manuscript; Section 2.3 now states that remaining missing values were imputed with the training-set median. Second, to assess possible selection bias, we performed a sensitivity analysis comparing the baseline characteristics of the 279 excluded patients with those of the included patients. Age and sex did not differ significantly between the two groups, but the excluded patients stayed longer in hospital (median 9 vs 7 days, P = 0.01). This comparison is reported in [page/line to be confirmed], and the difference is acknowledged as a limitation in the Discussion.

Revised text (Section 2.3): "Remaining missing values were imputed with the median values of the training set."

Revised text (Discussion, Limitations, [page/line to be confirmed]): "Patients with more than 30% missing key laboratory values (n = 279) were excluded. Compared with the included patients, the excluded patients did not differ significantly in age or sex but stayed longer in hospital (median 9 vs 7 days, P = 0.01); the exclusion may therefore have introduced selection bias."

**Comment R1-3.** Table 2: please report 95% confidence intervals for sensitivity and specificity, not only for AUC.

**Response.** We agree that confidence intervals should accompany sensitivity and specificity as well as the area under the receiver operating characteristic curve (AUC). We computed 95% confidence intervals (CIs) by bootstrapping with 1000 resamples and have updated Table 2. Sensitivity was 0.79 (95% CI 0.73-0.85) and specificity was 0.77 (95% CI 0.72-0.82).

Revised text (Table 2 and accompanying Results text, [page/line to be confirmed]): "Sensitivity was 0.79 (95% CI 0.73-0.85) and specificity was 0.77 (95% CI 0.72-0.82); confidence intervals were obtained by bootstrapping with 1000 resamples."

### Reviewer 2

We thank Reviewer 2 for the comments on the baseline comparison, the existing risk scores, and the language of the manuscript.

**Comment R2-1.** The comparison with logistic regression is unfair because no regularization or feature selection was applied to the logistic model. Please clarify or re-run with a tuned baseline.

**Response.** The reviewer is correct: the original logistic regression model was not tuned, so the comparison favored XGBoost. We re-ran the logistic regression with L2 regularization and selected the regularization parameter C by five-fold cross-validation. The tuned model reached an AUC of 0.78, compared with 0.76 for the untuned model, and remained below the AUC of 0.84 obtained with XGBoost. Section 2.4 (Methods), Section 3.2 (Results), and Table 2 have been updated accordingly.

Revised text (Section 2.4): "The logistic regression baseline was fitted with L2 regularization; the regularization parameter C was selected by five-fold cross-validation."

Revised text (Section 3.2): "The tuned logistic regression reached an AUC of 0.78, compared with 0.76 for the untuned model, and remained below the AUC of 0.84 of the XGBoost model (Table 2)."

**Comment R2-2.** The Introduction cites LACE and HOSPITAL scores but does not report their performance on the present cohort. A direct comparison would strengthen the paper.

**Response.** We agree that a direct comparison with the LACE and HOSPITAL scores would strengthen the paper, and we considered it. However, our dataset does not contain all variables required to compute these scores, including the number of emergency department visits and cancer diagnosis. The scores therefore cannot be calculated for the present cohort. As an alternative, the Discussion now states this limitation explicitly and provides an indirect comparison with the published performance of both scores in populations with diabetes (cited in the revised Discussion). We have not added a new experiment for this point and leave the adequacy of this alternative to the judgment of the reviewer and the editor.

Revised text (Discussion, [page/line to be confirmed]): "A direct comparison with the LACE and HOSPITAL scores was not possible because our dataset lacked several of their required variables, including the number of emergency department visits and cancer diagnosis. Published evaluations of these scores in populations with diabetes (cited in the revised Discussion) therefore serve only as an indirect comparison with the present model."

**Comment R2-3.** Minor: several sentences in the Discussion begin with "And" or "So"; the manuscript would benefit from language editing.

**Response.** We agree. The Discussion sentences beginning with "And" or "So" have been rewritten, and the language of the whole manuscript has been revised [page/line to be confirmed].

Revised text (Discussion): [insert revised sentences]

We hope that the revised manuscript addresses the reviewers' concerns and look forward to your decision.

Sincerely,

[Corresponding author name]
On behalf of all authors

## 改动说明

- 回复信不放 `[REF]`,R2-2 处按 12 细则写 "cited in the revised Discussion"。
- R1-1 只译作者给的改法("有潜力,需要外部验证"),不添加"计划获取外部队列"等作者未说的承诺。
- R2-2 拒绝类回复含"为什么做不到 + 替代做法"两成分(12「回复信的结构」细则)。
- 已完成修改用现在完成时,重跑分析用过去时,修改稿现状用现在时(08 总表「投稿信 / 回复信」行)。
- 感谢只在每位审稿人开头一句;单条只对 R1-2(指出真实遗漏)另致谢一句。
- "All changes are marked" 与 R2-3 修改后文字均标待作者确认 / 占位,不作既成事实。

## 自检结果

核心五项:

- 时态 ✓:we agree / is not available 现在时;have revised / has been added 现在完成时;re-ran / reached / performed 过去时;now describes / now reports 现在时,与 08 总表回复信行一致。
- 语态 / 所有权 ✓:动作句主语为 we;被动句(have been updated / was re-run)对象均为稿件部件,所有权由上下文 we 与节号锚定。
- 结构 ✓:编辑开头段(感谢 → 总述 → 标注方式 → 编号改动列表)+ 每审稿人一节 + 每条三段 + 摘录 + 信末一次签名。
- 强度匹配 ✓:每个结论句只一个避险词(shows potential / should be regarded / may have introduced);AUC 等数字直述,不加评价词(09 规则 9 对回复信不适用)。
- 术语缩写 ✓(部分 N/A):AUC、CI 首次给全称;XGBoost、L2 按通用名;LACE、HOSPITAL 全称作者未给,保留缩写并进「建议补充」(硬规则 7 允许)。

12 号 G 组(审稿回复)✗ 条目:无。
- N/A:102(大改稿覆盖第一轮问题——本封即第一轮,无先前问题可核)、103(被拒转投)、104(录用后校样)。
- 待作者确认:100(修改稿是否已用修订模式 / 颜色全部标出)。

10 号清单逐句扫描(新起草文本,格式:位置 / 句子 / 条目号 / 级别 / 改法):
- E1–E23:无命中。
- W7 / 编辑段 "As an alternative, the Discussion now states ..." / W7 / warning / 保留:连接短语,表替代关系明确。
- W9 / R1-1 "In addition, a dedicated paragraph ..." / W9 / warning / 保留:句子连接副词,白名单允许句首。
- 09 规则 10 括号 / R1-2、R1-3、R2-1 中 (median 9 vs 7 days, P = 0.01)、(95% CI 0.73-0.85)、(Table 2) / 09 自检 16 / warning / 保留:统计量与位置标注用括号是 12 号模板本身的写法(page 6, lines 10-12),回复信按 12 的模板口径。
- 句长(09a):单条回复无 > 40 词句;> 30 词句 1 处(R2-2 "As an alternative ... (cited in the revised Discussion)",约 33 词),已检查,一个想法,保留。

## 建议补充

1. 编辑姓名、稿件编号、稿件标题。
2. 所有 `[page/line to be confirmed]` 处的页码行号:R1-1 新增局限段、R1-2 敏感性分析结果所在位置(正文表格还是补充材料,作者未说)与局限段、R1-3 bootstrap 方法说明所在位置、R2-2 讨论段、R2-3 具体修改句。
3. LACE 与 HOSPITAL 评分全称(信中保留缩写)。
4. R2-3 修改后的具体句子(当前为 `[insert revised sentences]` 占位);若语言修改由专业编辑或母语合作者完成,可补一句,作者未说明则不写。
5. R2-1 审稿人同时提到 feature selection,作者说明只做了 L2 正则化;若审稿人追问,需说明未做特征选择的理由。
6. 修改稿是否已用修订模式或颜色标出("All changes are marked ..." 一句保留与否)。

## 衔接提示(信与稿件修改位置的对应)

- Abstract 与 Discussion 中"可以帮助医生做决策"改为"有潜力,需外部验证"的句子,措辞应与信中 R1-1 摘录一致;局限段在 Discussion 中后段与 R1-2 的选择偏倚说明集中一处,不以局限收尾。
- Section 2.3(缺失值填补)、Section 2.4(逻辑回归调参)、Section 3.2 与 Table 2(调参后 AUC、灵敏度 / 特异度 95% CI)应与信中数字逐一对应:0.78 / 0.76 / 0.84、0.79 (0.73-0.85)、0.77 (0.72-0.82)、279 例、中位数 9 vs 7 天、P = 0.01。
- Discussion 中 LACE / HOSPITAL 间接比较处需实际带引文,信中写 "cited in the revised Discussion" 的承诺才成立。

## 使用体验反馈

1. `references/12-submission-checklist.md` 第 47 行:占位规则只说"作者未给页码行号时用 `[page/line to be confirmed]`",但作者常只给节号(如"2.3 节");是否节号即算"位置"、还是仍须补页码行号,文件未裁决,本次按"节号足够、无节号处占位"处理。
2. `references/12-submission-checklist.md` 第 49 行:感谢度规则"只对建设性意见"与"纯格式或重复意见不另致谢"之间,R2-3 类"语言编辑"意见归哪边不明确,本次按不另致谢处理。
3. `references/09-academic-style.md` 第 32 行规则 10 要求括号内容并入正文或删除,而 `references/12-submission-checklist.md` 第 67 行模板本身用括号标位置(page 6, lines 10-12),统计量括号(95% CI ...)在回复信中也是惯例;09 未像规则 9 那样注明"回复信不适用",建议补一句豁免口径。
4. `references/12-submission-checklist.md` 第 50 行"主体 ≤ 150 词"未说明是否含"意见摘述"与位置占位符;本次按不含摘述、含占位符计。
5. `SKILL.md` 第 49 行要求回复信自检"= 核心五项 + G 组 ✗ 条目",但 G 组第 102–104 条对第一轮回复天然不适用,`12` 第 16 行只定义 ✓ / ✗ / 待作者确认三态,N/A 档只在 `SKILL.md` 第 72 行出现;两处口径可对齐。

## 读取清单

- `/home/zenine/github/SCI-Writingskill/skills/sci-writing/SKILL.md`(全文)
- `/home/zenine/github/SCI-Writingskill/skills/sci-writing/references/12-submission-checklist.md`(全文,先读)
- `/home/zenine/github/SCI-Writingskill/skills/sci-writing/references/08-verbs-tense-voice.md`(全文,再读)
- `/home/zenine/github/SCI-Writingskill/skills/sci-writing/references/09-academic-style.md`(全文,再读)
- `/home/zenine/github/SCI-Writingskill/skills/sci-writing/references/10-chinese-author-pitfalls.md`(全文,总则)
- `/home/zenine/github/SCI-Writingskill/skills/sci-writing/references/09a-metrics-table.md`(全文,总则)
- `/home/zenine/github/SCI-Writingskill/skills/sci-writing/samples/reviewer-comments.md`(全文,输入)
- 未读:samples/ 下 expected-points-* 与 README.md、tests/、notes/、docs/;未运行 git。
