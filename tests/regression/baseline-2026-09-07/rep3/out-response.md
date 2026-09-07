# Response to Reviewers

Dear Editor,

Thank you for the opportunity to revise our manuscript, and please convey our thanks to the two reviewers for their careful and constructive comments. We have addressed every point raised. Below, each comment is reproduced in full, followed by our response and an indication of where the corresponding changes appear in the revised manuscript. All changes are marked in the revised files.

In brief, the main revisions are: (i) the claims regarding clinical applicability have been tempered throughout the Abstract and Discussion, and a dedicated paragraph on the absence of external validation has been added to the Limitations; (ii) the handling of missing data is now fully described in Section 2.3, and a sensitivity analysis comparing excluded and included patients has been added; (iii) 95% confidence intervals for sensitivity and specificity have been added to Table 2; (iv) the logistic regression baseline has been re-run with L2 regularization and cross-validated hyperparameter tuning, and Sections 2.4 and 3.2 and Table 2 have been updated accordingly; (v) the manuscript has undergone language editing.

We hope the revised manuscript is now suitable for publication.

Sincerely,
The Authors

---

## Reviewer 1

**R1-1.** *The study is single-center and lacks external validation. The authors should either validate the model on an independent cohort or substantially temper their claims about clinical applicability.*

**Response:** We thank the reviewer for this important point and fully agree. We do not have access to an independent external cohort, so external validation is not possible within the present study. We have therefore substantially tempered our claims. Specifically, statements to the effect that the model "can help clinicians make decisions" have been revised in both the Abstract and the Discussion to state that the model "has potential" and "requires external validation before clinical use." In addition, we have added a dedicated paragraph to the Limitations section that explicitly discusses the single-center design and the absence of external validation.

**Changes:** Abstract; Discussion; Limitations (new paragraph).

**R1-2.** *The exclusion of patients with more than 30% missing key laboratory values may introduce selection bias. How were the remaining missing values handled? This is not described.*

**Response:** We thank the reviewer for identifying this omission. Remaining missing values were imputed using the median of the training set. This was indeed omitted from the original Methods and has now been added to Section 2.3.

To address the concern about selection bias, we have added a sensitivity analysis comparing the baseline characteristics of the 279 excluded patients with those of the included patients. There were no significant differences in age or sex. However, the excluded patients had a longer length of hospital stay (median 9 days vs. 7 days, P = 0.01). We now report this finding and acknowledge the possibility of selection bias in the Limitations section.

**Changes:** Section 2.3 (imputation procedure); sensitivity analysis added; Limitations.

**R1-3.** *Table 2: please report 95% confidence intervals for sensitivity and specificity, not only for AUC.*

**Response:** We agree and have added 95% confidence intervals for sensitivity and specificity, estimated by bootstrapping with 1000 resamples. Sensitivity was 0.79 (95% CI 0.73–0.85) and specificity was 0.77 (95% CI 0.72–0.82). Table 2 has been updated accordingly.

**Changes:** Table 2.

---

## Reviewer 2

**R2-1.** *The comparison with logistic regression is unfair because no regularization or feature selection was applied to the logistic model. Please clarify or re-run with a tuned baseline.*

**Response:** The reviewer is correct; the original logistic regression model was not tuned. We have re-run the logistic regression baseline with L2 regularization, selecting the regularization parameter C by five-fold cross-validation. The AUC of the tuned logistic regression model increased from 0.76 to 0.78, which remains below the AUC of 0.84 achieved by XGBoost. Section 2.4 (Methods), Section 3.2 (Results), and Table 2 have been updated to reflect the tuned baseline.

**Changes:** Section 2.4; Section 3.2; Table 2.

**R2-2.** *The Introduction cites LACE and HOSPITAL scores but does not report their performance on the present cohort. A direct comparison would strengthen the paper.*

**Response:** We appreciate this suggestion and agree that a direct comparison would be informative. Unfortunately, our dataset does not contain all of the variables required to compute the LACE and HOSPITAL scores (for example, the number of emergency department visits and the presence of an oncology diagnosis), so these scores cannot be calculated on the present cohort. We have therefore added a statement of this limitation to the Discussion and, as an indirect comparison, we now cite the published performance of the LACE and HOSPITAL scores in diabetic populations.

**Changes:** Discussion.

**R2-3.** *Minor: several sentences in the Discussion begin with "And" or "So"; the manuscript would benefit from language editing.*

**Response:** We agree. The sentences in the Discussion beginning with "And" or "So" have been rewritten, and the entire manuscript has undergone language editing.

**Changes:** Discussion; throughout the manuscript.

---

## 处理决定说明(中文)

1. **只用作者给出的事实与数字**:所有数值(279 例、中位住院 9 天 vs 7 天、P=0.01、bootstrap 1000 次、灵敏度/特异度及其 CI、AUC 0.76→0.78 vs 0.84、五折交叉验证选 C 值)均直接来自作者说明,未新增任何分析、数据或承诺(例如没有承诺未来做外部验证,只说"需要外部验证")。
2. **修改位置的标注**:编辑要求标出修改位置,但作者只给了章节号(2.3、2.4、3.2、表 2)和部位(摘要、讨论、局限),我没有编造页码或行号,每条只写到章节/部位一级,作者可在提交前自行补页码/行号。
3. **R1-1 的措辞**:严格按作者意思,把"可以帮助医生做决策"改弱为"有潜力、需外部验证",并明说没有独立队列,没有回避这一点。
4. **R1-2 的敏感性分析**:如实写出"住院天数有差异"这一对作者不利的结果,并按作者要求把它放进局限,而不是只报告"年龄性别无差异"。
5. **R2-2 的拒绝口吻**:作者不打算加新实验,我用"变量不可得、无法计算"这一客观原因说明,并给出替代做法(引用已发表结果作间接比较),没有说"不愿做"。
6. **R2-3**:作者只说"做了语言修改",因此只写 language editing,没有声称使用了专业润色机构或母语编辑。
7. **格式**:给编辑的开头段先做总览,再逐条重现审稿意见原文、回复、修改位置,方便编辑与审稿人对照。
