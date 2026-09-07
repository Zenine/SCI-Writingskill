# 回归评审要点:Results(对应 results-draft-zh.md)

1. **二级标题**:按研究问题分块(基线特征 / 模型判别力 / 校准 / 特征重要性 / 亚组),小标题优先含动词或说出关系(如 "XGBoost outperformed the baseline models"),形式一致;不用纯主题名词堆叠。
2. **每块四要素**:目标句或位置句 → 核心发现 → 数字 → 至多一句含义;不是数字罗列。
3. **图表引用带评价**:每处 Table/Figure 引用附作者的读法(如 "as shown in Table 2, XGBoost achieved the highest AUC"),不出现只写 "is shown in Fig. 2" 的句子。
4. **只与本文预测/模型比较**:LACE 0.6–0.7 的文献对比**不出现在 Results**(留给讨论);三模型互比用 DeLong 结果支撑,不用 "significantly better" 无据词。
5. **数字与统计格式**:AUC 带 95% CI,写法一致(0.84 (95% CI 0.80–0.88) 或全篇同一格式);P 值格式一致(P < 0.001 / P = 0.003);阈值 0.21、Brier 三个值、亚组四个 AUC 全部出现且不改。
6. **时态**:本研究观察过去时;指图表现在时(Figure 2 shows);不混用。
7. **含义句避险**:每个含义句一个避险成分(suggest / may 二选一),相关性不写 cause;"随机森林差异不显著"写成 did not differ significantly,不写 "equivalent"。
8. **不编造**:不添加材料没有的统计量(如未给的 NRI、置信区间外推)、不给亚组 CI 之外的数字、不解释机制(留讨论);缺项(男性/女性 AUC 的 CI、样本量)进「建议补充」。
9. **术语与缩写**:AUC、CI、eGFR、SHAP、HbA1c 首次全称或按公认缩写口径;同一对象一个名字(the XGBoost model)。
10. **自检结果**:五项核心 + 03 号清单 ✗/N/A 项 + 10 号扫描 + 建议补充 + 衔接提示(与讨论对应)。
