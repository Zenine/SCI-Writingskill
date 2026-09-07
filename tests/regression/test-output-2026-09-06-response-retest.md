# 测试输出:审稿回复信(2026-09-06 复测)

> 输入:`samples/reviewer-comments.md`。依据:`SKILL.md` 路由表「回复审稿人」行 → `references/12-submission-checklist.md`(回复信的结构、审稿回复三原则、G 组自检)、`08-verbs-tense-voice.md`(投稿信/回复信时态行)、`09-academic-style.md`(句长口径、规则 9 信件豁免)、`10-chinese-author-pitfalls.md`(逐句扫描)。

## 1. 理解确认

- 故事线(据审稿意见与作者说明反推):在单中心糖尿病住院患者队列上训练 XGBoost 模型预测再入院类结局,AUC 0.84,优于逻辑回归;审稿人质疑外部验证、缺失值处理、基线公平性与 LACE / HOSPITAL 的直接比较。请确认。
- 目标期刊未知;编辑决定为 major revision,要求逐条回复并标出修改位置。拼写按默认美式。请确认。
- 本次处理的"节"= 回复信(给编辑的开头段 + R1-1 至 R2-3 逐条回复)。页码/行号作者未给,正文只写节号与表号,其余位置用方括号占位交作者填。
- 假设"修改稿已用修订模式或颜色标出"与"语言修改由作者自行完成(非专业编辑服务)":前者作者未说明,按 12 号文件细则加方括号标待作者确认;后者作者只说"全文已做语言修改",信中照此陈述,不写 professional editing。请确认。

## 2. 结构(`12-submission-checklist.md`「回复信的结构」)

1. 给编辑的开头段:感谢 → 总述 → 改动编号列表(每项一行)→ 标注方式。
2. Reviewer 1 一节:开头一句感谢 → R1-1 / R1-2 / R1-3。
3. Reviewer 2 一节:开头一句感谢 → R2-1 / R2-2 / R2-3。
4. 每条意见:意见摘述 → Response(立场一句 + 做了什么 + 修改位置)→ Revised text 摘录。
5. 签名只在信末一次。

处理分级(「审稿回复三原则」):R1-2、R1-3、R2-1、R2-3 = 认同并已修;R1-1 = 认同但数据不可得,改弱结论 + 局限;R2-2 = 数据不可得,说明立场 + 替代做法。

## 3. 正文

---

**Response to the Editor and Reviewers**

Manuscript ID: [insert manuscript ID]

Dear Editor,

Thank you for the opportunity to revise our manuscript. We appreciate the constructive comments of both reviewers and have revised the manuscript accordingly. The main changes are as follows:

1. The claims about clinical applicability have been tempered in the Abstract and Discussion, and a dedicated limitation paragraph on the lack of external validation has been added (R1-1).
2. Section 2.3 now describes how the remaining missing laboratory values were imputed, and a comparison of excluded and included patients has been added (R1-2).
3. Table 2 now reports bootstrap 95% confidence intervals for sensitivity and specificity (R1-3).
4. The logistic regression baseline was re-run with L2 regularization and cross-validated tuning; Section 2.4, Section 3.2, and Table 2 have been updated (R2-1).
5. The Discussion now states why the LACE and HOSPITAL scores cannot be computed in our cohort and provides an indirect comparison with their published performance (R2-2).
6. The entire manuscript has been revised for language, including the sentences in the Discussion that began with "And" or "So" (R2-3).

[All changes are highlighted in the revised manuscript.] Our point-by-point responses follow; reviewer comments are given in italics and our responses in plain text.

---

**Reviewer 1**

We thank Reviewer 1 for the careful reading of our manuscript and for the constructive suggestions.

**Comment R1-1.** *The study is single-center and lacks external validation. The authors should either validate the model on an independent cohort or substantially temper their claims about clinical applicability.*

**Response.** We agree that a single-center study without external validation does not support strong claims about clinical use. An independent cohort is not available to us, so we were unable to perform external validation in this revision. We have therefore tempered the claims throughout the manuscript. In the Abstract and Discussion, the statement that the model "can help clinicians make decisions" has been replaced with a statement that the model has potential but requires external validation. In addition, a dedicated paragraph on this limitation has been added to the Discussion.

**Revised text (Abstract; Discussion, limitation paragraph [page/line to be confirmed]):**
"The model shows potential for identifying high-risk patients; however, external validation in independent cohorts is required before it can be considered for clinical use."

**Comment R1-2.** *The exclusion of patients with more than 30% missing key laboratory values may introduce selection bias. How were the remaining missing values handled? This is not described.*

**Response.** We thank the reviewer for pointing out this omission. The handling of the remaining missing values was not described in the original manuscript. Remaining missing values were imputed with the median of the training set, and this procedure has now been added to Section 2.3. To address the concern about selection bias, we compared the baseline characteristics of the 279 excluded patients with those of the included patients. Age and sex did not differ significantly between the two groups; however, the excluded patients had a longer length of stay (median 9 days versus 7 days, P = 0.01). This difference is now acknowledged as a possible source of selection bias in the Limitations.

**Revised text (Section 2.3):**
"Remaining missing values were imputed with the median of the corresponding variable in the training set."

**Revised text (Discussion, Limitations [page/line to be confirmed]):**
"Patients excluded for more than 30% missing key laboratory values (n = 279) did not differ from included patients in age or sex. However, they had a longer length of stay (median 9 versus 7 days, P = 0.01), which may have introduced selection bias."

**Comment R1-3.** *Table 2: please report 95% confidence intervals for sensitivity and specificity, not only for AUC.*

**Response.** We agree. We computed 95% confidence intervals for sensitivity and specificity using 1000 bootstrap resamples, and Table 2 has been updated accordingly.

**Revised text (Table 2; Section 3.2):**
"The model reached a sensitivity of 0.79 (95% CI, 0.73-0.85) and a specificity of 0.77 (95% CI, 0.72-0.82)."

---

**Reviewer 2**

We thank Reviewer 2 for the thoughtful comments, which have improved the rigor of the comparison and the clarity of the manuscript.

**Comment R2-1.** *The comparison with logistic regression is unfair because no regularization or feature selection was applied to the logistic model. Please clarify or re-run with a tuned baseline.*

**Response.** The reviewer is correct: the original logistic regression baseline was not tuned. We re-ran the logistic regression with L2 regularization, selecting the regularization parameter C by five-fold cross-validation. The tuned baseline reached an AUC of 0.78, compared with 0.76 for the original model, and remained below the AUC of 0.84 obtained with XGBoost. Section 2.4, Section 3.2, and Table 2 have been updated with the tuned baseline.

**Revised text (Section 2.4):**
"Logistic regression was fitted with L2 regularization; the regularization parameter C was selected by five-fold cross-validation."

**Revised text (Section 3.2):**
"The tuned logistic regression model reached an AUC of 0.78, still below the AUC of 0.84 obtained with XGBoost."

**Comment R2-2.** *The Introduction cites LACE and HOSPITAL scores but does not report their performance on the present cohort. A direct comparison would strengthen the paper.*

**Response.** We agree that a direct comparison would strengthen the paper, and we regret that it is not feasible with our data. Our dataset does not contain all variables required by the LACE and HOSPITAL scores; in particular, the number of emergency department visits and the presence of a cancer diagnosis were not recorded. The two scores therefore cannot be computed for our cohort. As an alternative, the Discussion now states this limitation explicitly and provides an indirect comparison with the published performance of the two scores in populations with diabetes (cited in the revised Discussion). We have not added new experiments for this point.

**Revised text (Discussion [page/line to be confirmed]):**
"A direct comparison with the LACE and HOSPITAL scores was not possible because our dataset lacked some of their required variables, including the number of emergency department visits and cancer diagnosis. Published evaluations of these scores in populations with diabetes are discussed below as an indirect comparison."

**Comment R2-3.** *Minor: several sentences in the Discussion begin with "And" or "So"; the manuscript would benefit from language editing.*

**Response.** We agree. The entire manuscript has been revised for language, and the sentences in the Discussion that began with "And" or "So" have been rewritten with formal connectors.

**Revised text (Discussion [page/line to be confirmed]):**
[insert revised sentence]

---

We hope that the revised manuscript now meets the standards of the journal, and we look forward to your decision.

Sincerely,

[Corresponding author name]
On behalf of all authors
[Affiliation and e-mail]

---

## 4. 改动说明

- 六条改动在开头段用编号列表、每项一行(12 号「回复信的结构」第 1 条),不写成一句长句。
- 每条回复按"立场一句 → 做了什么 → 修改位置 → 摘录"排布(12 号「审稿回复三原则」第 2 条、「回复信的结构」第 3 条)。
- R1-1、R2-2 为"数据不可得"类,均含"为什么做不到 + 替代做法"两个成分(12 号细则「单条回复长度」)。
- 感谢只出现在:编辑段一次、每位审稿人开头一句、R1-2 一句(指出确实遗漏);其余各条不写 We thank(12 号细则「感谢度」)。
- 时态按 08 号总表「投稿信 / 回复信」行:已完成的修改用现在完成时(has been added / have been updated),重跑分析用过去时(we re-ran / reached),修改稿现状用现在时(Section 2.3 now describes),表态用现在时(we agree)。
- 摘录中的英文均由作者中文改法直译;R2-3 作者未给改后句子,按 12 号细则用 `[insert revised sentence]` 占位。
- "All changes are highlighted" 与页码/行号加方括号,不作既成事实(12 号细则「替作者做的承诺」)。
- 信中不放 `[REF]`;R2-2 需引文处写 "cited in the revised Discussion"(12 号细则最后一条)。
- 摘录中的数字不加评价性修饰(09 号规则 9:回复信不适用该条)。

## 5. 自检结果

**核心五项**

- 时态 ✓:修改用现在完成时、重跑分析用过去时、修改稿现状与表态用现在时,与 08 号「投稿信 / 回复信」行一致。
- 语态 / 所有权 ✓:动作句主语为 we 或 the model / Section X;被动句(has been added / were imputed)承接前文且施动者为作者,所有权可辨认。
- 结构 ✓:编辑段 → 两位审稿人各一节 → 六条意见一一对应编号 → 签名一次,与 12 号「回复信的结构」一致。
- 强度匹配 ✓:R1-1 改后句只留一个避险成分(shows potential ... requires external validation);R1-2 摘录 "may have introduced selection bias" 一个 may;R2-1 数字直接陈述无 hedging 叠加。
- 术语缩写 ✓/N/A:XGBoost、logistic regression、external validation、length of stay 全信各用一名;AUC、LACE、HOSPITAL、CI 全称原稿未给,按硬规则 7 保留缩写并进「建议补充」,不计 ✗。

**12 号 G 组(96–104)判 ✗ 的条目**:无。

**N/A**

- 102(大改稿覆盖第一轮全部问题):本信即第一轮,六条已全覆盖;是否还有编辑本人意见未给,N/A。
- 103、104(拒稿后转投、录用后校样):不适用本场景。
- 08 号第 3 条(前人发现时态按最新文献核对):信中未引具体文献,N/A。

**待作者确认**

- 100:修改稿是否已用修订模式或颜色全部标出;信中 "[All changes are highlighted ...]" 保留或删除。
- 开头段第 6 条与 R2-3:语言修改是否由专业服务完成;若是,可加 "The manuscript has been edited by a professional language service"。
- 通读:提交前请至少一位合著者通读本信(10 号自检第 17 条)。

**10 号清单逐句扫描**(新起草文本,口径见 10 号自检第 16 条):

- 位置 R2-3 意见摘述与回复 / 句子含 "And" "So" / E19 / error / 保留:属引用审稿人原话与被改动的对象,非句首连接词用法,不报。
- 位置 R1-1 摘录 / "before it can be considered for clinical use" / E20 / error / 保留:can 用于已写条件(external validation 之后)的可能性,属 08 号 can 裁决第 2 种情形,不报。
- 位置 R1-2 摘录 / ", which may have introduced selection bias" / W2 / warning / 保留:which 指前句"住院天数更长"这一结果,所指唯一;改 thereby introducing 会读作已确认因果,与证据强度不符。
- 位置 编辑段第 5 条与 R2-2 回复 / "cannot be computed" / E20 · 08 号 can/could 裁决 / 保留:初稿用 could not(表过去能力),按 08 号第 4 条改为陈述数据集现状的 cannot(= 不可能),不是描述观察事实。
- 其余 E1–E23、W1–W16 无命中。
- 句长(09 号口径表,已用脚本实际分句统计):正文英文约 40 句、平均约 22 词;无 > 40 词句(R1-2 局限段摘录原为 45 词,已拆为两句);> 30 词 5 句(R1-1 摘录 33 词、R1-2 回复 "Age and sex ..." 30 词、R2-2 回复两句各 32 词、R2-2 摘录 31 词)已检查,均为单一分号并列或单一从句,保留。信件段落多为 2–5 句短段,不套 150–170 词段长均值(09 号口径表:短草稿或信息量有限时不作硬指标)。

## 6. 建议补充

- 页码 / 行号:Abstract、Discussion 局限段、R2-3 改动句的页码与行号,作者填入方括号处。
- R1-2 的排除组 vs 纳入组基线比较放在正文哪一节或补充材料(表号),作者说明后补进 R1-2 回复与开头段第 2 条。
- R2-3 改后的具体句子(至少一例),替换 `[insert revised sentence]`。
- AUC、CI、LACE、HOSPITAL 的全称(若期刊要求信中首次给全称)。
- 稿件编号、通讯作者姓名、单位、邮箱。
- R2-2 间接比较所引的具体文献(信中不放引文,但稿件讨论中需真实引用)。

## 7. 衔接提示(信与稿件修改位置的对应)

- 信中承诺的每处修改在稿件中都应能定位:Section 2.3(中位数填补)、Section 2.4(L2 正则化 + 五折 CV 选 C)、Section 3.2 与 Table 2(调参后逻辑回归 AUC 0.78、灵敏度/特异度 95% CI)、Abstract 与 Discussion(结论改弱、局限段、LACE/HOSPITAL 无法计算的说明)。
- 摘要结论强度须与讨论一致:两处都改为"有潜力、需外部验证",不得一处改弱一处仍写 can help clinicians。
- R1-2 的排除组比较若放在 Results,应有对应的表或文字;若只放局限,信中开头段第 2 条措辞需同步改为 "is now reported in the Limitations"。

## 使用体验反馈

- `SKILL.md` 第 72 行要求自检"只列本节 reference 自检清单中判为 ✗ 的条目",而回复信对应的清单是 `12-submission-checklist.md` G 组 96–104,但第 24 行又说"单节自检不用本条",两处未明说信件类应套 G 组哪几条,建议在 SKILL.md 第 49 行或 12 号第 46 行点明"信件自检 = 核心五项 + G 组 96–101"。
- `references/12-submission-checklist.md` 第 39 行「三原则」要求每条回应"三段:理解 → 立场 → 修改",第 46–50 行「回复信的结构」第 3 条却只写"立场一句 + 做了什么 + 修改位置",少了"理解该意见"一段,两处口径应统一。
- `references/12-submission-checklist.md` 第 58 行"主体 ≤ 150 词"未说明摘录(Revised text)是否计入,本次按不计入处理,建议注明。
- `references/12-submission-checklist.md` 第 55–56 行给了改后句子与承诺的占位规则,但没给"页码 / 行号作者未提供"时的占位写法,本次自拟 "[page/line to be confirmed]",建议补一条统一占位符。
- `references/12-submission-checklist.md` 第 57 行"只对建设性意见"感谢,未给"建设性"的判定标准(是否指出了真实遗漏?是否要求补实验?),执行时靠主观判断。
- `samples/reviewer-comments.md` 第 28 行 R1-2 作者说明只说"补了敏感性分析、会在局限里说明",未说比较结果放在稿件哪一节,agent 只能占位;若测试意在考"不编位置",可保留,否则建议补一句位置。
- `references/08-verbs-tense-voice.md` 第 30 行的「投稿信 / 回复信」时态行很实用,但 `09-academic-style.md` 第 51 行只豁免了信件的"评价词"条,未说明信件段落是否套 150–170 词段长均值,本次按"信息量有限不作硬指标"处理,建议在 09 号口径表加一行信件特例。
