# 回归评审要点:Title、Keywords 与二级标题(对应 title-draft-zh.md)

1. **标题表达产出**:三个候选都点出"产出"(模型/工具/预测)而不只命名对象或研究活动;不用 "A study on" / "Research on" 起头。
2. **形式与长度**:名词短语为默认,含动作名词或动词优先;长度 12–18 词(按未知期刊取常见区间,并注明以目标期刊样本为准);无缩写(XGBoost 可保留,其余如 T2DM 展开)。
3. **无据强词**:不出现 novel / first / robust / accurate 一类无证据评价词;可解释性(interpretable)有 SHAP 支撑可用。
4. **三候选有差异并给推荐**:分别侧重(如强调可解释 / 强调人群 / 强调方法对比),说明各自适合的期刊类型,给出推荐与理由;标"请确认"。
5. **关键词**:5–6 个;至少一半是标题里没有的词;含 MeSH 风格术语(如 Patient Readmission, Machine Learning, Diabetes Mellitus, Type 2);与标题、摘要用同一套核心术语。
6. **Methods 二级标题**:每个含动作或方法名(Selection of patients / Splitting of the data / Development and tuning of models …),覆盖材料列的九项内容,顺序合理,形式一致。
7. **Results 二级标题**:优先用动词说出关系(XGBoost outperformed … / Calibration was adequate …),并给短语式备选,注明按期刊选;覆盖五项内容;与 Methods 标题能一一对应。
8. **逆向工程提示**:说明本应对目标期刊近期 20–30 条标题做统计(词数、冒号、缩写等),目标期刊未知时给默认值并在「建议补充」请作者提供期刊或样文。
9. **不编造**:不添加材料没有的结果或人群描述(如 "multicenter"、"prospective");不替作者定期刊。
10. **自检结果**:五项核心(术语项为主)+ 06 号清单 ✗/N/A + 建议补充 + 衔接提示(标题关键词与摘要用词一致)。
