# Response to Reviewers

Dear Editor,

Thank you for the opportunity to submit a revised version of our manuscript, and for the constructive comments from the two reviewers. We have carefully considered every point raised and have revised the manuscript accordingly. Below, we reproduce each reviewer comment in full, followed by our point-by-point response and a description of the corresponding changes, with their location in the revised manuscript. All changes are marked in the revised manuscript.

We believe the revisions have strengthened the manuscript, and we hope that it is now suitable for publication.

Sincerely,
The Authors

---

## Reviewer 1

**R1-1.** *The study is single-center and lacks external validation. The authors should either validate the model on an independent cohort or substantially temper their claims about clinical applicability.*

**Response:** We thank the reviewer for this important comment and fully agree. We do not have access to an independent external cohort, so external validation was not possible within the scope of the present study. We have therefore substantially tempered our claims about clinical applicability throughout the manuscript. Specifically:

- In the Abstract and Discussion, statements that the model "can help clinicians make decisions" have been revised to state that the model shows potential but requires external validation before any clinical use.
- We have added a dedicated paragraph to the Limitations section of the Discussion explicitly addressing the single-center design and the absence of external validation, and stating that external validation on independent cohorts is required.

**Changes:** Abstract (Conclusions); Discussion (conclusions on clinical applicability; new Limitations paragraph).

**R1-2.** *The exclusion of patients with more than 30% missing key laboratory values may introduce selection bias. How were the remaining missing values handled? This is not described.*

**Response:** We thank the reviewer for pointing out this omission. The reviewer is correct that the handling of the remaining missing values was not described. Remaining missing values were imputed using the median of the training set. This has now been added to Section 2.3 (Methods).

To address the concern about selection bias, we have performed an additional sensitivity analysis comparing the baseline characteristics of the 279 excluded patients with those of the included patients. There were no significant differences in age or sex between the two groups. However, the excluded patients had a longer length of hospital stay (median 9 days vs. 7 days, P = 0.01). We now report this finding and acknowledge the potential for selection bias in the Limitations section of the Discussion.

**Changes:** Section 2.3 (Methods; description of median imputation); Discussion, Limitations (sensitivity analysis comparing excluded and included patients).

**R1-3.** *Table 2: please report 95% confidence intervals for sensitivity and specificity, not only for AUC.*

**Response:** We agree, and thank the reviewer for the suggestion. We have computed 95% confidence intervals for sensitivity and specificity using bootstrap resampling (1000 iterations). The sensitivity was 0.79 (95% CI, 0.73–0.85) and the specificity was 0.77 (95% CI, 0.72–0.82). Table 2 has been updated accordingly.

**Changes:** Table 2 (95% CIs added for sensitivity and specificity).

---

## Reviewer 2

**R2-1.** *The comparison with logistic regression is unfair because no regularization or feature selection was applied to the logistic model. Please clarify or re-run with a tuned baseline.*

**Response:** We thank the reviewer for this valid criticism. The reviewer is correct that the original logistic regression model was not tuned. We have re-run the logistic regression baseline with L2 regularization, with the regularization parameter C selected by five-fold cross-validation. With this tuned baseline, the AUC of the logistic regression model increased from 0.76 to 0.78, which remains lower than the AUC of 0.84 obtained with XGBoost. The Methods (Section 2.4), Results (Section 3.2), and Table 2 have been updated to reflect the tuned baseline.

**Changes:** Section 2.4 (Methods); Section 3.2 (Results); Table 2.

**R2-2.** *The Introduction cites LACE and HOSPITAL scores but does not report their performance on the present cohort. A direct comparison would strengthen the paper.*

**Response:** We agree that a direct comparison with the LACE and HOSPITAL scores would be informative. Unfortunately, our dataset does not contain all of the variables required to calculate these scores (for example, the number of emergency department visits and the presence of a cancer diagnosis), so they could not be computed for the present cohort. We have therefore added a statement in the Discussion acknowledging this limitation, and we cite the published performance of the LACE and HOSPITAL scores in diabetic populations as an indirect comparison with our model.

**Changes:** Discussion (indirect comparison with published LACE and HOSPITAL performance; limitation regarding unavailable variables).

**R2-3.** *Minor: several sentences in the Discussion begin with "And" or "So"; the manuscript would benefit from language editing.*

**Response:** We thank the reviewer for this comment and agree. The entire manuscript has undergone language editing, and the sentences in the Discussion beginning with "And" or "So" have been revised.

**Changes:** Throughout the manuscript, in particular the Discussion.

---

We thank both reviewers again for their careful reading and helpful comments.

---

## 主要处理决定(中文说明)

1. **严格只用作者说明中的事实与数字**:所有数值(279 例、9 天 vs 7 天、P=0.01、bootstrap 1000 次、0.79/0.77 及其 CI、AUC 0.76→0.78 vs 0.84、五折交叉验证、L2 正则化)均直接来自作者说明,未新增任何分析、数据或对未来工作的承诺。
2. **R1-1 和 R2-2 明确"不做新实验"**:按作者口径,坦诚说明拿不到外部队列 / 缺少 LACE 与 HOSPITAL 所需变量,只做措辞弱化和讨论层面的间接比较,不写"将来会做外部验证"之类的承诺,只说"需要外部验证"。
3. **修改位置标注只用作者给出的信息**:编辑要求标出修改位置,但原文没有页码/行号,因此只标到章节和表格(摘要、2.3、2.4、3.2、表 2、讨论/局限),未编造页行号;作者定稿时可自行补上页码行号。
4. **R1-2 的敏感性分析如实写出不利结果**:排除组住院天数更长(P=0.01)照实报告,并归入局限,不做淡化。
5. **语气**:对 R2-1、R1-2 这类审稿人指出确有遗漏/不当之处的意见,直接承认("The reviewer is correct"),保持简洁专业,不过度致谢或辩解。
6. **格式**:开头给编辑的信 + 逐条"审稿意见原文(斜体)/ Response / Changes"三段结构,便于编辑对照。
