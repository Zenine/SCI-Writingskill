# 实测评审要点(对应 methods-draft-zh.md)

合格输出必须同时满足以下各条。逐条打 ✓/✗,任一 ✗ 需回写对应 reference 或 SKILL.md 路由。

1. **结构顺序**:研究设计与数据来源 → 纳入/排除 → 数据划分 → 变量与结局定义 → 模型与对比方法 → 评价指标 → 可解释性分析 → 伦理声明 → 统计软件。顺序可微调,但伦理声明与软件版本不得夹在模型描述中间。
2. **时态**:描述本研究已完成的操作用一般过去时(were collected / was approved);描述通用事实或指代本文图表用一般现在时。不得混用。
3. **语态**:以被动语态或「无人称主动」为主,不出现 "we think / we want";若用 we 只用于研究决策(we randomly split…)且全段一致。
4. **纳入排除写法**:排除标准写成并列清单式一句或分号列表,数字保留(1,842 → 1,563),给出最终样本量。
5. **结局定义精确**:90-day readmission 作为二分类结局被明确定义,含时间窗与起点(after discharge)。
6. **模型与调参可复现**:XGBoost、five-fold cross-validation、grid search、对比基线(logistic regression, random forest)全部出现;不得省略任何一个。
7. **伦理声明**:含 approved by the ethics committee、批号、waived informed consent 及理由(retrospective design)。
8. **术语与缩写**:AUC、SHAP 首次出现给全称(area under the receiver operating characteristic curve;SHapley Additive exPlanations);Python/scikit-learn 带版本号。
9. **不编造**:不得添加原文没有的信息(如医院名称、随访方式、缺失值填补方法);若认为缺关键信息(如缺失值处理、随机种子),应在输出后以「建议补充」列出而非直接编进正文。
10. **自检结果**:输出末尾附按 SKILL.md 要求的自检清单结果(至少覆盖时态、语态、结构、伦理、缩写五项)。
