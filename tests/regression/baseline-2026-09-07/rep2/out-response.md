# Response to Reviewers

Dear Editor,

Thank you for the opportunity to revise our manuscript, and please convey our thanks to the two reviewers for their careful and constructive comments. We have addressed each point below. Reviewer comments are reproduced in italics, followed by our response and, where applicable, the location of the corresponding changes in the revised manuscript. All changes are highlighted in the marked-up version of the manuscript.

In brief, the main revisions are as follows: (i) we have tempered the claims regarding clinical applicability throughout the Abstract and Discussion and added a dedicated paragraph on the lack of external validation to the Limitations; (ii) we now describe the handling of remaining missing values (Section 2.3) and report a sensitivity analysis comparing excluded and included patients; (iii) Table 2 now reports bootstrap 95% confidence intervals for sensitivity and specificity; (iv) the logistic regression baseline has been re-fitted with L2 regularization and cross-validated hyperparameter selection, and the corresponding methods, results and Table 2 have been updated; and (v) the manuscript has undergone language editing.

We hope that the revised manuscript is now suitable for publication.

Sincerely,
The Authors

---

## Reviewer 1

**R1-1.** *The study is single-center and lacks external validation. The authors should either validate the model on an independent cohort or substantially temper their claims about clinical applicability.*

**Response:** We thank the reviewer for raising this important point. We do not have access to an independent external cohort, and external validation is therefore not possible within the present study. We agree that our original wording overstated the clinical applicability of the model. In the revised manuscript we have substantially tempered these claims: statements that the model "can support clinical decision-making" have been replaced in both the Abstract and the Discussion with wording indicating that the model shows potential but requires external validation before any clinical use. In addition, we have added a dedicated paragraph to the Limitations section explicitly acknowledging the single-center design and the absence of external validation.

**Changes:** Abstract (Conclusions); Discussion; Limitations (new paragraph).

**R1-2.** *The exclusion of patients with more than 30% missing key laboratory values may introduce selection bias. How were the remaining missing values handled? This is not described.*

**Response:** We apologize for this omission. Remaining missing values were imputed using the median of the training set; this was indeed not described in the original manuscript and has now been added to Section 2.3.

Regarding potential selection bias, we have performed an additional sensitivity analysis comparing the baseline characteristics of the 279 excluded patients with those of the included patients. There were no significant differences in age or sex between the two groups; however, excluded patients had a longer length of hospital stay (median 9 days vs 7 days, P = 0.01). We now report this comparison and acknowledge in the Limitations that the exclusion criterion may have preferentially removed patients with longer hospitalizations, which should be considered when interpreting our results.

**Changes:** Section 2.3 (missing-value handling); Limitations (sensitivity analysis and selection bias).

**R1-3.** *Table 2: please report 95% confidence intervals for sensitivity and specificity, not only for AUC.*

**Response:** We agree. We have computed 95% confidence intervals for sensitivity and specificity using 1000 bootstrap resamples. The sensitivity was 0.79 (95% CI 0.73–0.85) and the specificity was 0.77 (95% CI 0.72–0.82). Table 2 has been updated accordingly.

**Changes:** Table 2.

## Reviewer 2

**R2-1.** *The comparison with logistic regression is unfair because no regularization or feature selection was applied to the logistic model. Please clarify or re-run with a tuned baseline.*

**Response:** The reviewer is correct; in the original analysis the logistic regression model was fitted without hyperparameter tuning. We have re-run the logistic regression baseline with L2 regularization, selecting the regularization parameter C by five-fold cross-validation. With this tuned baseline, the AUC of logistic regression increased from 0.76 to 0.78, which remains lower than the AUC of 0.84 achieved by XGBoost. The Methods (Section 2.4), Results (Section 3.2) and Table 2 have been updated to reflect the tuned baseline.

**Changes:** Section 2.4; Section 3.2; Table 2.

**R2-2.** *The Introduction cites LACE and HOSPITAL scores but does not report their performance on the present cohort. A direct comparison would strengthen the paper.*

**Response:** We agree that a direct comparison would be informative. Unfortunately, our dataset does not contain all of the variables required to compute the LACE and HOSPITAL scores (for example, the number of emergency department visits and the presence of a cancer diagnosis), so these scores cannot be calculated for the present cohort. We have therefore added a statement in the Discussion explaining this limitation, and we now cite the published performance of the LACE and HOSPITAL scores in diabetic populations as an indirect point of comparison. We hope the reviewer will understand that a direct comparison is not feasible with the available data.

**Changes:** Discussion (indirect comparison with LACE and HOSPITAL scores and statement of this limitation).

**R2-3.** *Minor: several sentences in the Discussion begin with "And" or "So"; the manuscript would benefit from language editing.*

**Response:** We thank the reviewer for pointing this out. The sentences in question have been revised, and the entire manuscript has undergone language editing.

**Changes:** Discussion; throughout the manuscript.

---

## 处理说明(中文)

- **只用作者给的事实**:全部数字(279 例、中位住院 9 天 vs 7 天、P=0.01、bootstrap 1000 次、灵敏度 0.79(0.73–0.85)、特异度 0.77(0.72–0.82)、AUC 0.76→0.78 vs 0.84、五折交叉验证、L2 正则化)和修改位置(2.3、2.4、3.2、表 2、摘要、讨论、局限)均直接来自作者说明,没有新增分析、数据或承诺。
- **R1-1 和 R2-2 是"做不到"的两条**,采用"坦诚说明原因 + 已做的替代修改"的写法:R1-1 明确没有外部队列,落到减弱结论和新增局限段;R2-2 明确变量缺失算不出评分,只做文献间接比较,并按作者意愿不承诺新增实验。
- **R1-2 的敏感性分析结果如实写出不利发现**(排除组住院更长),按作者说明放在局限里,不淡化。
- **给编辑的开头段**按编辑"逐条回复并标出修改位置"的要求,概括五类主要修改,并说明使用了标注版稿件;每条回复末尾单列 "Changes" 标明位置。
- 作者说明未指明具体页码/行号,故修改位置只写到章节和表格级别,未杜撰行号。
