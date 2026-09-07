# Results

## Patient characteristics

A total of 1,563 patients were included in the final analysis and were split into a training set (n = 1,094) and a test set (n = 469). Ninety-day readmission occurred in 292 patients (18.7%) in the overall cohort, with comparable rates in the training set (205/1,094, 18.7%) and the test set (87/469, 18.6%). Compared with patients who were not readmitted, those readmitted within 90 days were older (median age 68 vs. 63 years, P < 0.001), had higher glycated hemoglobin (HbA1c) levels (median 9.1% vs. 8.2%, P < 0.001), and had more hospitalizations in the preceding year (median 1 vs. 0, P < 0.001). Sex distribution did not differ between the two groups (P = 0.41). Baseline characteristics are summarized in Table 1.

## Model discrimination

In the test set, the XGBoost model achieved an area under the receiver operating characteristic curve (AUC) of 0.84 (95% confidence interval [CI], 0.80–0.88), compared with 0.76 (95% CI, 0.71–0.81) for logistic regression and 0.81 (95% CI, 0.77–0.85) for random forest. At the classification threshold of 0.21, selected by maximizing the Youden index in the training set, XGBoost yielded a sensitivity of 0.79 (95% CI, 0.73–0.85) and a specificity of 0.77 (95% CI, 0.72–0.82). DeLong's test showed that the AUC of XGBoost was significantly higher than that of logistic regression (P = 0.003), whereas the difference between XGBoost and random forest was not statistically significant (P = 0.12). Receiver operating characteristic curves are shown in Figure 2, and performance metrics for the three models are listed in Table 2.

## Model calibration

The calibration curve of the XGBoost model lay close to the diagonal line of perfect calibration, with a Brier score of 0.118. The Brier scores for logistic regression and random forest were 0.139 and 0.124, respectively. Calibration curves are presented in Figure 3.

## Feature importance

SHapley Additive exPlanations (SHAP) analysis identified HbA1c, length of hospital stay, number of hospitalizations in the preceding year, estimated glomerular filtration rate (eGFR), and insulin use as the five most influential predictors, in descending order of importance. Higher HbA1c, longer length of stay, more prior hospitalizations, lower eGFR, and insulin use were each associated with a higher predicted risk of readmission. The SHAP summary plot is shown in Figure 4.

## Subgroup analysis

The discriminative performance of the XGBoost model was consistent across subgroups. The AUC was 0.82 (95% CI, 0.76–0.88) in patients older than 65 years and 0.85 (95% CI, 0.79–0.91) in those aged 65 years or younger. The AUC was 0.83 in men and 0.85 in women.

---

## 处理说明(中文)

1. **结构**:按医学 AI 期刊惯例分为五个二级小节——患者特征、模型判别力(discrimination)、校准(calibration)、特征重要性(SHAP)、亚组分析,顺序与原材料一致。
2. **与 LACE 评分的文献对比未写入 Results**。原材料末尾的"文献里 LACE 评分 AUC 0.6–0.7、我们的模型明显更好"属于与既往研究的比较和解读,按惯例应放在 Discussion,Results 只报告本研究数据。建议作者在 Discussion 中引用文献后再做此对比。
3. **补充了可从原文直接推算的分子/分母**(如 205/1,094、87/469),便于审稿人核对;未新增任何原材料没有的数字。
4. **缩写首次出现处给出全称**(AUC、CI、HbA1c、eGFR、SHAP);"糖化血红蛋白"统一译为 HbA1c。
5. **亚组分析的性别 AUC 原材料未给 95% CI**,英文稿如实只报点估计;建议作者补齐 CI 以保持与年龄亚组一致。另,原材料"65 岁以上/65 岁及以下"按字面译为 >65 与 ≤65 years,若实际切点为 ≥65,请作者核对。
6. 阈值 0.21 的选择方式(训练集 Youden 指数)保留在 Results 中,因其直接影响灵敏度/特异度的解读;更详细的方法学描述应在 Methods 中出现。
