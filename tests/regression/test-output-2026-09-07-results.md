# Results 节产出(回归测试 2026-09-07)

## 理解确认

- 故事线(请确认):在单中心住院的 2 型糖尿病患者中,用入院 24 小时内的电子病历数据(人口学、27 项化验、用药)建立 XGBoost 模型预测出院后 90 天再入院,并与逻辑回归、随机森林比较。张力陈述原稿未给,我按材料末尾的备注假设为"前人用 LACE 等通用评分在糖尿病人群判别力有限(AUC 0.6–0.7),本文表明基于入院早期数据的机器学习模型判别与校准更好"——请确认。
- 目标期刊未知(请确认):按通用医学期刊惯例处理——结果与讨论分写、美式拼写、小节用带动词的短句标题、主指标附 95% CI 或 P 值。与 LACE 评分的文献比较按 `03-results.md` 前置约定放到 Discussion,不写进本节。
- 本次只处理 Results 节(含二级标题);Methods 草稿只作背景,不改写。

## 结构

| 位置 | 功能步(03 号文件层次) | 内容 |
|---|---|---|
| 开场段 | (c) 整体模式宽泛陈述 + (b) 回顾方法要点 | 一句总判断;纳入与分组人数;再入院比例;说明指标均为测试集 |
| 3.1 | 块:基线比较 —— 目标句 / 位置句 / 核心发现(带评价与 P 值)/ 含义句 | 表 1 |
| 3.2 | 块:判别力 —— 目标句 / 位置句 / 三模型 AUC 与 DeLong 比较 / 阈值下灵敏度特异度 / 含义句 | 表 2、图 2 |
| 3.3 | 块:校准 —— 目标句 / 位置句 / 校准曲线与 Brier score / 含义句 | 图 3 |
| 3.4 | 块:特征贡献 —— 目标句 / 位置句 / 前五特征与方向 / 与 3.1 呼应 / 含义句 | 图 4 |
| 3.5 | 块:亚组 —— 目标句 / 核心发现 / (h) 承认缺口并给方向 / 含义句 | 正文数字 |

## 正文

# 3. Results

Overall, the XGBoost model discriminated 90-day readmission more accurately than logistic regression, was better calibrated than both comparator models, and relied mainly on markers of glycemic control and prior health-care use. Of the 1,563 patients included, 1,094 were allocated to the training set and 469 to the test set. Readmission within 90 days occurred in 292 patients (18.7%) overall, with virtually identical rates in the training set (205 of 1,094; 18.7%) and the test set (87 of 469; 18.6%). Unless otherwise stated, all performance metrics below refer to the test set.

## 3.1 Readmitted patients were older and had poorer glycemic control

To characterize the cohort, we compared baseline characteristics between patients who were and were not readmitted (Table 1). Readmitted patients were older (median 68 vs 63 years; P < 0.001) and had higher glycated hemoglobin (HbA1c; median 9.1% vs 8.2%; P < 0.001). They had also been hospitalized more often in the preceding year (median 1 vs 0 admissions; P < 0.001). In contrast, the sex distribution did not differ between the two groups (P = 0.41). These differences indicate that age, glycemic control, and prior hospitalization already separated the two groups before any modeling.

## 3.2 XGBoost discriminated readmission better than logistic regression

To assess discrimination, we compared the three models on the test set (Table 2); Fig. 2 shows the corresponding ROC curves. XGBoost achieved an AUC of 0.84 (95% CI 0.80 to 0.88), compared with 0.76 (95% CI 0.71 to 0.81) for logistic regression and 0.81 (95% CI 0.77 to 0.85) for random forest. The advantage over logistic regression was substantial and statistically significant (DeLong test, P = 0.003), whereas the difference from random forest was small and not significant (P = 0.12). At the threshold of 0.21, selected by the Youden index on the training set, XGBoost reached a sensitivity of 0.79 (95% CI 0.73 to 0.85) and a specificity of 0.77 (95% CI 0.72 to 0.82). These results indicate that XGBoost captured predictive information that logistic regression did not, whereas XGBoost and random forest performed comparably.

## 3.3 XGBoost produced the best-calibrated risk estimates

To evaluate whether predicted probabilities matched observed readmission rates, we plotted calibration curves for the three models (Fig. 3). The XGBoost curve lay close to the diagonal, and its Brier score of 0.118 was the lowest of the three (0.139 for logistic regression and 0.124 for random forest). XGBoost therefore appears to offer not only better discrimination but also more reliable risk estimates than logistic regression.

## 3.4 Glycemic control and prior health-care use dominated the predictions

To identify which inputs drove the XGBoost predictions, we ranked the features by their SHAP values; Fig. 4 shows the SHAP summary plot. The five most influential features were, in descending order, HbA1c, length of hospital stay, number of hospitalizations in the preceding year, estimated glomerular filtration rate (eGFR), and insulin use. Higher HbA1c, longer stays, more prior hospitalizations, lower eGFR, and insulin use were each associated with a higher predicted risk. Notably, HbA1c and prior hospitalizations were also among the characteristics that differed significantly between readmitted and non-readmitted patients at baseline (Table 1). This ranking suggests that the model relied predominantly on glycemic control, hospital utilization, and renal function rather than on demographic variables.

## 3.5 Discrimination held across age and sex subgroups

To test whether discrimination depended on patient subgroup, we recomputed the AUC of XGBoost by age and by sex. Performance was broadly similar across subgroups. The AUC was 0.82 (95% CI 0.76 to 0.88) in patients older than 65 years and 0.85 (95% CI 0.79 to 0.91) in those aged 65 years or younger, with widely overlapping confidence intervals. The AUC was 0.83 in men and 0.85 in women. Unfortunately, confidence intervals for the sex-specific estimates and formal comparisons between subgroups are not reported here; nevertheless, the consistency of the point estimates suggests that the model performed similarly in the age and sex strata examined.

## 改动说明

- 开场不以第一个原始数据点起句,先给整体模式,再给纳入人数与再入院比例(03 细则 1、层次 1 c/b)。
- 五个二级标题都含动词并说出关系,不只给主题名词(03 细则 16;SKILL 总流程第 3 步)。
- 每块按"目标句 → 位置句 → 核心发现 → 含义句"四要素写,含义句只留一个避险成分(indicate / appears to / suggests)(03 四要素段落、细则 13)。
- 每次引用图表都附一句评价;图表引用动词统一为 shows(03 细则 4;08 规则 4)。
- 裸比较级加评价修饰并带对比基准:substantial / small / virtually identical / broadly similar / widely overlapping(03 细则 6、评价词表)。
- "发生"陈述带具体比例:292 of 1,563 (18.7%)、205 of 1,094、87 of 469(03 细则 7)。
- 与 LACE 评分的文献比较移出本节,留给 Discussion(03 前置约定;12 第 22 条出处指引)。
- 亚组缺 CI 与组间检验在本节承认,并用去责(Unfortunately)+ 转向好的方面(nevertheless)措辞(03 细则 9)。
- SHAP 方向用 associated with 一档,不用因果动词(03 因果动词强弱谱)。
- HbA1c、eGFR 在本节首次出现,给出标准全称;AUC、CI、ROC、SHAP、XGBoost 视为已在 Methods 定义,不再展开(SKILL 硬规则 7;见衔接提示)。
- 命名算法(XGBoost、random forest)不在本节放 `[REF]`:首次提及与引用位置在 Methods(SKILL 硬规则 4;见使用体验反馈第 1 条)。
- CI 写法统一为 "95% CI a to b",按 03 报告格式模板;原稿的连字符区间未沿用(见使用体验反馈第 3 条)。

## 自检结果

核心五项:

- 时态 ✓:本研究观察全部过去时(compared / achieved / lay / were);图表内容现在时(Fig. 2 shows);含义句现在时 + 单一避险成分。
- 语态/所有权 ✓:每个小节首句用 we + 过去时;全节无无施动被动句;非人类主语(XGBoost、the model)均指本文模型且有上下文定位。
- 结构 ✓:开场三句内有整体模式概述;五块按研究问题(基线 → 判别 → 校准 → 特征 → 亚组)而非实验时间顺序;每块含目标句、结果句、含义句。
- 强度匹配 ✓:每个含义句仅一个避险词(indicate / appears to / suggests);相关性与 SHAP 方向只用 associated with;无 prove、无 cause。
- 术语缩写 ✓:三个模型名全篇各一个名称;test set / training set / 90-day readmission 不做同义替换;HbA1c、eGFR 首次出现给全称;其余缩写依赖 Methods(见衔接提示)。

03 号自检清单中判为 ✗ 或 N/A 的条目:

- 第 8 条 N/A:原稿未给出本文的预测或假设,无法做显式比较;本节只与本文的对照模型比较(已进「建议补充」)。
- 第 16 条 N/A:引言未提供,无法核对含义句是否回应引言目标用词。
- 第 18 条 N/A:同上,无引言可回头核对。
- 第 19 条 N/A:目标期刊未知,小节数与图表顺序按通用惯例。
- 第 20 条 ✗:Brier score(三模型)、按性别的 AUC 均无 CI 或 P 值;组间 AUC 差异(亚组)无检验;原稿未给,已进「建议补充」而非补造。

08 号(确定性阶梯,只报与本节直接相关的 ✗):无 ✗;第 3 条(前人发现时态)N/A,本节不引前人。

10 号清单逐句扫描:E1–E23 无命中。保留的 warning 及理由:

- W3(无信息修饰词):"substantial"(3.2)、"best-calibrated"(3.3 标题)、"widely overlapping"(3.5)保留——各有紧邻数字支撑(P = 0.003;Brier 0.118 vs 0.139/0.124;0.76–0.88 与 0.79–0.91)。
- W9(副词位置):"They had also been hospitalized" 中 also 紧贴助动词,合法。
- W13(冠词):"the lowest of the three" 唯一性成立(三值可比)。

09a 口径(按脚本实测,空白分隔 token 计词):正文不含标题共 609 词,26 句,平均约 23 词/句,落在 20–26 词区间。> 30 词触发检查的句子 5 句(开场首句 31、3.2 AUC 句 32、3.2 阈值句 35、3.5 亚组 AUC 句 34、3.5 缺口句 36),均 < 40 不强制拆;保留理由:每句只有一个主谓结构,超长来自"估计值 + 95% CI + 分组"的括注,拆开会打断一一对应;开场首句为三项列举句。段长六段为 91 / 95 / 137 / 66 / 115 / 105 词,3.3 段(66 词)低于 80 词下限,属短草稿改写情形,不作硬指标。

待作者确认(单独汇总):

- 请合著者通读全节;确认目标期刊后核对小节形式(是否允许句式小标题)、图表编号顺序与 CI 分隔符。
- 确认 HbA1c、eGFR 的全称写法与本文 Methods 一致;确认 AUC、CI、ROC、SHAP、XGBoost 在 Methods 已给全称(SHAP 全称原稿未给)。
- 确认 3.4 中"renal function / hospital utilization"这两个概括词是否符合作者本意(原稿只给了特征名,概括词是本节含义句的最小归纳)。

## 建议补充

1. Brier score 的 95% CI(或 bootstrap 区间)与三模型间校准差异的检验(03 第 20 条要求主指标带 CI 或 P 值)。
2. 按性别亚组 AUC 的 95% CI;年龄与性别亚组间 AUC 差异的正式检验(如 DeLong 或交互检验)。
3. 本文的预先假设或预期(例如"预期机器学习模型判别力优于逻辑回归"),以便结果节与本文预测显式比较(03 细则 8)。
4. SHAP 值在哪个数据集上计算(训练集 / 测试集);Methods 草稿未说明。
5. LACE 的全称与出处,供 Discussion 中与文献比较时使用(本节不放);比较时需 `[REF]` 占位。
6. 训练集上 Youden 指数阈值 0.21 对应的训练集灵敏度/特异度(可选,便于读者判断阈值迁移到测试集的稳定性)。
7. 表 1 的完整变量列表与再入院组 / 非再入院组人数(292 vs 1,271),以便正文引用时读者可核对。

## 衔接提示

- Methods 中列出的每个评价指标(AUC、灵敏度、特异度、校准曲线、SHAP)在本节均有对应小节;Methods 提到的"五折交叉验证网格搜索"在本节无回应,若期刊要求可在 3.2 加一句最终超参数或以补充材料引用。
- 本节含义句用词(discriminate / better calibrated / risk estimates / glycemic control)应与引言目标句和摘要一致;摘要与结论的强度不得高于本节(indicate / suggest 档)。
- LACE 评分 AUC 0.6–0.7 的文献比较放 Discussion 首段镜像 3.2;Discussion 同时承接 3.5 承认的亚组缺 CI 与检验的问题,不在结论重复。
- AUC、CI、ROC、SHAP、XGBoost 的全称应在 Methods 首次出现处给出;HbA1c、eGFR 若已在 Methods 的 27 项化验中点名,本节的全称应删去以免重复定义。

## 使用体验反馈

1. SKILL.md 第 56 行硬规则 4 要求命名算法用 `[REF]` 占位,但未说明"只写 Results 时,首次提及在 Methods 的算法名是否仍需占位",本次按不占位处理并写进改动说明——建议补一句"占位只在全文首次提及处"。
2. `references/03-results.md` 第 35 行细则 8 与第 161 行自检 8 要求"至少一处与本文预测/假设显式比较",原稿无假设时只能标 N/A,建议在细则中注明"原稿无假设时进「建议补充」,自检标 N/A"。
3. `references/03-results.md` 第 97 行模板 CI 写作 "95% CI [a] to [b]",而样例原稿用连字符 "0.80–0.88",SKILL.md 与 03 均未说明 CI 分隔符口径,agent 只能自选。
4. `references/08-verbs-tense-voice.md` 第 24 行 Results 行写"段末含义句:现在时 + suggest / indicate + may / could",字面读作两个避险成分并用,与 `03-results.md` 第 40 行细则 13"二选一"冲突,建议改为"suggest / indicate 或 may / could"。
5. SKILL.md 第 59 行硬规则 7 只举 LACE / HOSPITAL 类专名缩写,未说明 HbA1c / eGFR 这类有标准全称的医学缩写在原稿未给全称时能否直接展开,本次展开后列入待作者确认。
6. `references/09a-metrics-table.md` 第 22 行段长均值 150–170 词对结果节多小节写法难以满足(本次实测每小节 66–137 词),虽有"短草稿不作硬指标"的豁免,但建议明确"结果节按小节分段时只看区间下限是否合理"。

## 读取清单

- /home/zenine/github/SCI-Writingskill/skills/sci-writing/SKILL.md(全文)
- /home/zenine/github/SCI-Writingskill/skills/sci-writing/references/03-results.md(全文,先读)
- /home/zenine/github/SCI-Writingskill/skills/sci-writing/references/08-verbs-tense-voice.md(全文,再读;重点确定性阶梯)
- /home/zenine/github/SCI-Writingskill/skills/sci-writing/references/10-chinese-author-pitfalls.md(全文,总则必读)
- /home/zenine/github/SCI-Writingskill/skills/sci-writing/references/09a-metrics-table.md(全文,总则必读)
- /home/zenine/github/SCI-Writingskill/skills/sci-writing/samples/results-draft-zh.md(输入材料)
- /home/zenine/github/SCI-Writingskill/skills/sci-writing/samples/methods-draft-zh.md(背景)
- 未读:09-academic-style.md(10 号扫描未命中 W3/W12/W16 需改项,用户未要求风格润色)、其它 references、samples/expected-points-*、samples/README.md、tests/、notes/、docs/
