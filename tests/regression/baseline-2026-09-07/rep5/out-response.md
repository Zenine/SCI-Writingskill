# Response to Reviewers

Dear Editor,

Thank you for the opportunity to revise our manuscript, and please convey our thanks to both reviewers for their careful and constructive comments. We have addressed every point raised. In brief, we have (i) tempered our claims regarding clinical applicability and added a dedicated limitation on the absence of external validation; (ii) described the handling of missing data and added a sensitivity analysis comparing excluded and included patients; (iii) added bootstrap 95% confidence intervals for sensitivity and specificity; (iv) re-run the logistic regression baseline with L2 regularization and cross-validated tuning; (v) explained why the LACE and HOSPITAL scores could not be computed in our cohort and added an indirect comparison with published results; and (vi) revised the language throughout.

Our point-by-point responses follow. Reviewer comments are reproduced in italics; the location of each change in the revised manuscript is indicated at the end of each response.

Sincerely,
The Authors

---

## Reviewer 1

**R1-1.** *The study is single-center and lacks external validation. The authors should either validate the model on an independent cohort or substantially temper their claims about clinical applicability.*

**Response:** We agree with the reviewer. We do not have access to an independent cohort, so external validation was not possible within the scope of this study. We have therefore substantially tempered our claims. Statements in the Abstract and Discussion that the model "can support clinical decision-making" have been revised to state that the model shows potential but requires external validation before any clinical application. We have also added a dedicated paragraph to the Limitations section explicitly discussing the single-center design and the lack of external validation.

*Changes:* Abstract; Discussion; Limitations (new paragraph).

**R1-2.** *The exclusion of patients with more than 30% missing key laboratory values may introduce selection bias. How were the remaining missing values handled? This is not described.*

**Response:** We thank the reviewer for identifying this omission. Remaining missing values were imputed using the median of the training set. This was indeed not stated in the original manuscript and has now been added to Section 2.3 (Methods).

Regarding selection bias, we have added a sensitivity analysis comparing the baseline characteristics of the 279 excluded patients with those of the included patients. Age and sex did not differ significantly between the two groups; however, excluded patients had a longer length of hospital stay (median 9 days vs. 7 days, P = 0.01). We now acknowledge this difference and its implications for potential selection bias in the Limitations section.

*Changes:* Section 2.3 (imputation method); Limitations (sensitivity analysis and selection bias).

**R1-3.** *Table 2: please report 95% confidence intervals for sensitivity and specificity, not only for AUC.*

**Response:** We agree. We have computed 95% confidence intervals using bootstrap resampling (1,000 iterations). Sensitivity was 0.79 (95% CI 0.73–0.85) and specificity was 0.77 (95% CI 0.72–0.82). Table 2 has been updated accordingly.

*Changes:* Table 2.

---

## Reviewer 2

**R2-1.** *The comparison with logistic regression is unfair because no regularization or feature selection was applied to the logistic model. Please clarify or re-run with a tuned baseline.*

**Response:** The reviewer is correct; the original logistic regression model was not tuned. We have re-run the logistic regression with L2 regularization, selecting the regularization parameter C by five-fold cross-validation. The AUC of the tuned logistic regression improved from 0.76 to 0.78, which remains below the AUC of 0.84 achieved by XGBoost. The Methods (Section 2.4), Results (Section 3.2), and Table 2 have been updated to reflect the tuned baseline.

*Changes:* Section 2.4; Section 3.2; Table 2.

**R2-2.** *The Introduction cites LACE and HOSPITAL scores but does not report their performance on the present cohort. A direct comparison would strengthen the paper.*

**Response:** We appreciate this suggestion. Unfortunately, our dataset does not contain all of the variables required to compute the LACE and HOSPITAL scores (for example, the number of emergency department visits and oncology diagnoses), so a direct comparison on the present cohort is not feasible. We have stated this limitation explicitly in the Discussion and, as an indirect comparison, we now cite the published performance of these two scores in diabetic populations.

*Changes:* Discussion.

**R2-3.** *Minor: several sentences in the Discussion begin with "And" or "So"; the manuscript would benefit from language editing.*

**Response:** We agree. The entire manuscript has undergone language editing, and the sentences in the Discussion noted by the reviewer have been revised.

*Changes:* Throughout the manuscript; Discussion.

---

## 主要处理决定(中文说明)

1. **严格限定事实来源**:全部回复只使用作者说明中给出的事实与数字(279 例、中位住院 9 vs 7 天、P=0.01、bootstrap 1000 次、灵敏度/特异度及 CI、AUC 0.76→0.78 vs 0.84、五折交叉验证选 C 等),未新增任何分析、数据或承诺。
2. **R1-1 与 R2-2 均为"无法做"的情况**:如实说明拿不到独立队列 / 缺少所需变量,用"改弱结论 + 局限说明"或"引用已发表结果作间接比较"作为替代,并明确不再补新实验,不给审稿人留下未来会补做的暗示。
3. **R1-2 的敏感性分析如实呈现不利结果**:排除组住院天数更长且有统计学差异,直接写出并归入局限,不淡化。
4. **修改位置标注**:按编辑要求,每条回复末尾单列 *Changes:* 标出章节/表格;作者说明未给具体页码行号,因此只标到节/表层级,不编造行号。
5. **语气**:对指出错误之处(R1-2 漏写、R2-1 未调参)直接承认,不辩解;开头给编辑的段落只做六点概括,不重复细节。
