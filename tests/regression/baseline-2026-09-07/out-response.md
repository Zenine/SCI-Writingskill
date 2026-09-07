# Response to Reviewers

Dear Editor,

Thank you for the opportunity to submit a revised version of our manuscript, and please convey our thanks to both reviewers for their careful and constructive comments. We have addressed every point raised. In brief, we have (i) tempered our claims about clinical applicability throughout the Abstract and Discussion and added a dedicated limitations paragraph on the absence of external validation; (ii) described the handling of missing data (Section 2.3) and added a sensitivity analysis comparing excluded and included patients; (iii) added bootstrap 95% confidence intervals for sensitivity and specificity (Table 2); (iv) re-run the logistic regression baseline with L2 regularization and cross-validated tuning (Sections 2.4 and 3.2, Table 2); (v) added a discussion of why the LACE and HOSPITAL scores could not be computed in our cohort, with an indirect comparison to published performance; and (vi) performed language editing of the whole manuscript.

Our point-by-point responses follow. Reviewer comments are reproduced in italics; the location of each change in the revised manuscript is indicated at the end of each response. All changes are marked in the tracked-changes version of the manuscript.

Sincerely,
The Authors

---

## Reviewer 1

**R1-1.** *The study is single-center and lacks external validation. The authors should either validate the model on an independent cohort or substantially temper their claims about clinical applicability.*

**Response:** We agree with the reviewer. We do not have access to an independent external cohort, so external validation is not possible within the present study. We have therefore substantially tempered our claims. Statements that the model "can help clinicians make decisions" have been revised in both the Abstract and the Discussion to state that the model "shows potential but requires external validation before clinical use." In addition, we have added a dedicated paragraph to the Limitations section explaining that the study is single-center, that model performance has not been assessed in an independent cohort, and that generalizability therefore remains to be established.

*Changes:* Abstract (Conclusions); Discussion; Limitations (new paragraph on external validation).

**R1-2.** *The exclusion of patients with more than 30% missing key laboratory values may introduce selection bias. How were the remaining missing values handled? This is not described.*

**Response:** We thank the reviewer for pointing out this omission. The remaining missing values were imputed with the median of the corresponding variable in the training set. This was indeed not described in the original submission and has now been added to Section 2.3.

Regarding possible selection bias, we have added a sensitivity analysis comparing the baseline characteristics of the 279 excluded patients with those of the included patients. Age and sex did not differ significantly between the two groups; however, the excluded patients had a longer length of stay (median 9 days vs. 7 days, P = 0.01). We now report this comparison and acknowledge in the Limitations section that the exclusion criterion may have preferentially removed patients with longer hospital stays, which should be considered when interpreting the results.

*Changes:* Section 2.3 (imputation method); Results (comparison of excluded vs. included patients); Limitations.

**R1-3.** *Table 2: please report 95% confidence intervals for sensitivity and specificity, not only for AUC.*

**Response:** We agree and have added 95% confidence intervals for sensitivity and specificity, estimated by bootstrap resampling with 1000 iterations. The sensitivity is 0.79 (95% CI 0.73–0.85) and the specificity is 0.77 (95% CI 0.72–0.82). Table 2 has been updated accordingly.

*Changes:* Table 2; corresponding text in the Results.

---

## Reviewer 2

**R2-1.** *The comparison with logistic regression is unfair because no regularization or feature selection was applied to the logistic model. Please clarify or re-run with a tuned baseline.*

**Response:** The reviewer is correct; the logistic regression model in the original submission was not tuned. We have re-run the logistic regression with L2 regularization, selecting the regularization parameter C by five-fold cross-validation. With this tuned baseline, the AUC of the logistic regression model increased from 0.76 to 0.78, which remains below the AUC of 0.84 obtained with XGBoost. The methods (Section 2.4), the results (Section 3.2), and Table 2 have all been updated to reflect the tuned baseline.

*Changes:* Section 2.4; Section 3.2; Table 2.

**R2-2.** *The Introduction cites LACE and HOSPITAL scores but does not report their performance on the present cohort. A direct comparison would strengthen the paper.*

**Response:** We agree that a direct comparison would be informative. Unfortunately, our dataset does not contain all of the variables required to compute the LACE and HOSPITAL scores (for example, the number of emergency department visits and the presence of a cancer diagnosis), so these scores cannot be calculated in the present cohort. We have added a statement to the Discussion explaining this limitation. As an indirect comparison, we now cite the published performance of the LACE and HOSPITAL scores in diabetic populations and discuss our results in that context, while noting that such a comparison across different cohorts must be interpreted with caution.

*Changes:* Discussion (new text on LACE and HOSPITAL scores, with added references); Limitations.

**R2-3.** *Minor: several sentences in the Discussion begin with "And" or "So"; the manuscript would benefit from language editing.*

**Response:** We agree. The sentences in the Discussion beginning with "And" or "So" have been rewritten, and the entire manuscript has undergone language editing.

*Changes:* Throughout the manuscript, in particular the Discussion.
