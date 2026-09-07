## Discussion

In this retrospective cohort of hospitalized patients with type 2 diabetes, we developed and internally validated a machine learning model to predict readmission using routinely collected data available within 24 hours of admission. The XGBoost model achieved an AUC of 0.84 in the held-out test set, significantly outperforming logistic regression (AUC 0.76; DeLong P = 0.003), whereas its advantage over random forest (AUC 0.81) did not reach statistical significance. The model was well calibrated (Brier score 0.118). The five most influential predictors were glycated hemoglobin (HbA1c), length of stay, number of hospitalizations in the preceding year, estimated glomerular filtration rate (eGFR), and insulin use.

### Comparison with previous studies

Conventional readmission tools such as the LACE and HOSPITAL scores have shown only modest discrimination in diabetic populations, with reported AUCs of 0.6–0.7. Machine learning models developed in European and North American cohorts have generally reported AUCs of 0.75–0.82, typically based on 500–3,000 patients. To our knowledge, only two previous studies have addressed readmission prediction specifically in Chinese inpatients with type 2 diabetes; both used traditional regression approaches and reported AUCs of approximately 0.70. The discrimination observed in the present study is therefore at the upper end of that reported in the literature. Several factors may account for this, including the ability of gradient boosting to capture non-linear relationships and interactions among predictors, and the use of a relatively homogeneous single-center population, which may also limit generalizability. Direct comparison across studies should nevertheless be interpreted with caution given differences in case mix, readmission definitions, follow-up windows, and healthcare systems.

### Interpretation of key predictors

The predictors identified by the model are clinically plausible and largely consistent with prior evidence. Elevated HbA1c reflects poor glycemic control, which has been repeatedly associated with readmission in patients with diabetes. A greater number of hospitalizations in the preceding year is among the most robust predictors across readmission models in virtually all patient populations, likely serving as a marker of disease burden and frailty. Reduced eGFR indicates impaired renal function, and patients with diabetic kidney disease are known to be at elevated risk of readmission. Insulin use may reflect longer disease duration and greater disease severity; it may also be linked to hypoglycemic events, which are themselves a recognized cause of readmission. However, hypoglycemia was not recorded in our dataset, so this mechanism could not be examined and remains speculative. Finally, a prolonged length of stay may indicate greater clinical complexity or complications during the index admission.

### Clinical implications

All variables in the model are routinely collected and available within 24 hours of admission, without requiring additional tests or questionnaires. The model could therefore be integrated into the electronic health record to flag high-risk patients before discharge, enabling physicians to arrange early follow-up and pharmacists to provide targeted medication education. Importantly, the model is intended as a screening tool to support, not replace, clinical judgment; risk estimates should be interpreted in the context of each patient's overall clinical picture.

### Limitations

This study has several limitations. First, it was a single-center, retrospective study, and the model has not been externally validated; its performance in other institutions and populations remains to be established. Second, missing values were imputed using the median, which may have introduced bias if data were not missing at random. Third, socioeconomic status, family support, and other social determinants of health, which are known to influence readmission, were not available and could not be included. Fourth, readmissions were ascertained only within our institution; patients readmitted to other hospitals were not captured, which may have led to underestimation of the outcome and misclassification of some patients. Finally, this was a prediction study; we did not conduct a prospective interventional trial, and therefore cannot demonstrate that use of the model reduces readmission rates.

### Future directions

Future work should include external validation in multicenter cohorts to assess generalizability, and prospective studies to evaluate whether embedding the model in clinical workflows reduces readmission rates. Incorporating social and behavioral variables may further improve predictive performance.

## Conclusion

Using routinely available clinical data collected within 24 hours of admission, an XGBoost model identified hospitalized patients with type 2 diabetes at high risk of readmission with good discrimination and calibration, outperforming conventional logistic regression. The key predictors were clinically interpretable and consistent with existing evidence. The model has the potential to support pre-discharge decision-making and targeted follow-up, but external validation and prospective evaluation are required before clinical implementation.

---

## 处理说明(中文)

1. **结构**:Discussion 按医学 AI 期刊常见顺序组织——主要发现总结、与前人比较、预测因子解释、临床意义、局限、未来方向,并用小标题分隔;Conclusion 单独一节、一段收束,不引入新信息。
2. **忠实原材料**:所有数字(AUC 0.84/0.76/0.81、DeLong P=0.003、Brier 0.118、文献 AUC 区间、样本量区间、"仅两篇中国研究")均按原文保留,未添加任何原文没有的结果或引用。胰岛素与低血糖的关系按原文措辞明确写为"未记录、无法检验、属推测"。
3. **适度补充过渡性论证**:在"与前人比较"一段补了对 AUC 偏高的可能解释(梯度提升捕捉非线性、单中心人群较同质)以及"跨研究比较需谨慎"的提醒,这属于 Discussion 惯例性表述,不涉及新数据;如作者认为不妥可删。
4. **局限部分**:把原文"缺失值用中位数填补"扩展为可能偏倚的原因(非随机缺失),"只统计本院再入院"扩展为结局低估/误分类;这是对原意的展开而非新增局限。
5. **术语**:首次出现给出全称(HbA1c、eGFR),再入院工具 LACE/HOSPITAL 按文献惯例保留大写名称。
6. **占位**:文中未写文献编号,请按目标期刊格式在"与前人比较""预测因子解释"两处补引用。原稿的"随机森林差异不显著"未给 P 值,英文中亦未编造 P 值,如有请补入。
