# 测试输出:一般式英文 Abstract(2026-09-06)

> 输入:`samples/abstract-draft-zh.md`;路由:SKILL.md 路由表「写或压缩 Abstract」→ `references/05-abstract.md` → `06-title-keywords.md`;另按 SKILL.md 第 29 行读 `00-workflow.md` 切入点表,按第 49 行用 `10-chinese-author-pitfalls.md` 做逐句扫描,时态语态按 `08-verbs-tense-voice.md`。

## 1. 理解确认

- 故事线(从中文材料反推,请确认):数据 = 单中心 1,563 例 2 型糖尿病住院患者的入院 24 小时内常规数据;信息 = XGBoost 模型测试集 AUC 0.84,高于逻辑回归 0.76 与随机森林 0.81;新知识 = 仅凭入院常规数据即可对中国 2 型糖尿病住院患者的 90 天再入院风险分层,糖化血红蛋白、住院天数、既往一年住院次数、eGFR、胰岛素使用贡献最大;新理解 = 针对糖尿病人群的专用模型可替代判别力有限的通用再入院评分,支持出院前干预决策。
- 张力陈述(请确认):Existing general-purpose readmission scores discriminate poorly in patients with diabetes and Chinese data are scarce; here a diabetes-specific model built on routine admission data in a Chinese cohort reached an AUC of 0.84.
- 假设(SKILL.md 硬规则 10,均标"请确认"):目标期刊未知 → 按专业刊(临床 / 医学信息学)通用惯例;形态 = 一般式非结构化;字数 = 200–250 词;拼写 = 美式;读者档 = 同行(步 1 只留 1 句、步 2 省略);结果句时态 = 过去时(05 分歧 2 默认);摘要内不放引文与 `[REF]`(05 细则 12)。本次只处理 Abstract 一节。

## 2. 结构(05「九步统一模型」→ 一般摘要取舍)

| 步 | 功能 | 对应句 |
|---|---|---|
| 1 | 宏观入口 | 第 1 句 |
| 2 | 具体背景 | 省略(一般摘要可选;材料无对应内容) |
| 3 | 问题 / 空白(已知—但未知) | 第 2 句 |
| 4 | 本文做了什么(带归属标记) | 第 3 句 |
| 5 | 方法(只留决定是否读全文的信息) | 第 4–5 句 |
| 6 | 主要结果 | 第 6–8 句 |
| 7 | 含义 | 第 9 句 |
| 8 + 9 | 贡献 + 应用 / 展望(按 05 细则 13 合并),并带单中心局限 | 第 10 句 |

## 3. 正文

Patients with type 2 diabetes mellitus (T2DM) are frequently readmitted within 90 days of hospital discharge. However, existing general-purpose readmission scores show limited discrimination in diabetic populations, and evidence from Chinese patients remains scarce. In this study, we developed an XGBoost model to predict 90-day readmission in Chinese inpatients with T2DM. This single-center retrospective study included 1,563 inpatients with T2DM from one tertiary hospital (2021-2023), randomly split 7:3 into training and test sets. Using demographics, 27 laboratory tests within 24 hours of admission, and medication records, we trained the XGBoost model and compared it with logistic regression and random forest. On the test set, the XGBoost model reached an area under the receiver operating characteristic curve of 0.84 (95% confidence interval 0.80-0.88), higher than logistic regression (0.76) and random forest (0.81). The XGBoost model reached a sensitivity of 0.79 and a specificity of 0.77, with calibration close to the diagonal. Shapley additive explanations ranked glycated hemoglobin, length of stay, prior-year hospitalizations, estimated glomerular filtration rate, and insulin use as the five most influential features. These findings suggest that 90-day readmission risk in Chinese inpatients with T2DM is predictable from data routinely collected at admission. The XGBoost model provides a diabetes-specific tool for identifying high-risk patients and could support intervention decisions before discharge, although external validation is needed because the model was derived from a single center.

**词数统计**:226 词(`wc -w`);10 句;平均句长 22.6 词;最长句 32 词(第 10 句);全部为 ASCII 半角字符。

## 4. 改动说明(中文材料 → 英文稿的关键处理)

- 第一句用宏观入口而非样本量或方法开头(05 细则 1)。
- "判别力有限"译为 show limited discrimination,"研究少"译为 evidence ... remains scarce,写成"已知—但未知"陈述句,不用疑问句(05 细则 2)。
- 步 4 用 In this study, we developed 作归属标记;不用 Here we show(05 分歧 9:目标期刊无先例时不用)。
- 方法只保留单中心 / 回顾性 / 样本量 / 划分比例 / 三类输入 / 对比模型;时间范围压缩为 (2021-2023)(05 细则 6、13)。
- 模型全篇只叫 the XGBoost model,不换 approach / method / classifier(05 细则 9;SKILL.md 硬规则 7)。
- AUC、CI、SHAP、eGFR 在摘要内各只出现 1 次,按 05 细则 11 全部展开不缩写;T2DM 出现 4 次,首次给全称后缩写。
- 结果句一律过去时(reached / ranked),含义句现在时 + suggest,贡献句现在时 provides,展望用 could(08 各节时态总表 Abstract 行)。
- "比较准确地识别高风险患者、可以帮助医生做出院前干预决策"降到 provides a tool for identifying ... and could support ...,每句一个避险词;"还没有外部验证"写进最后一句(SKILL.md 硬规则 6;08 确定性阶梯规则 1、2)。
- 原稿 "SHAP 前五个特征是 ..." 改为 Shapley additive explanations ranked ... as the five most influential features,避免 were 作主要动词描述结果(08 懒惰动词条)。
- 摘要内不放 `[REF]`(05 细则 12 默认无引文);XGBoost、随机森林、SHAP 的引用占位留待 Methods 节处理(见「衔接提示」)。

## 5. 自检结果

### 五项核心

- 时态 ✓:背景句现在时,本研究动作与结果过去时,含义与贡献现在时,未来工作 is needed;同段内无"我们做了"用现在时。
- 语态 / 所有权 ✓:第 3、5 句用 we;第 6–8 句主语为 the XGBoost model / Shapley additive explanations 且为过去时,归属可辨;无 It is shown that 类无主语起句。
- 结构 ✓:九步中必写的步 3、4、6、8 各有一句;步 8 与 9 按细则 13 合并;第一句为宏观入口。
- 强度匹配 ✓:结论句各只一个避险词(suggest / could);无 cause、demonstrate、novel、first;单中心与未外部验证已写入。
- 术语缩写 ✓:模型全篇一名;T2DM 首次给全称,其余只出现一次的术语不缩写;美式拼写(randomly、hospitalizations)。

### 05-abstract.md 自检清单中判为 ✗ 的条目

- 05-1 ✗:摘要不是在全文定稿后重写的(仅有中文摘要材料,无正文);按 SKILL.md 硬规则 10 直接产出。
- 05-2 ✗:目标期刊未知,未核对字数 / 形态 / 小标题要求;已按 200–250 词一般式默认值处理,请确认。
- 05-8 ✗(部分):AUC 有参照对象(0.76、0.81);灵敏度 0.79 与特异度 0.77 原稿无参照值或阈值说明,无法加限定语而不编造,已进「建议补充」。
- 05-20 ✗:标题、关键词、正文结论尚不存在,无法核对术语一致;核心术语已列于「衔接提示」供后续统一。
- 另:05 细则 5(方法 + 结果合计不超过一半)未达标 —— 方法 49 词 + 结果 74 词 = 123 / 226 ≈ 54%。在不删除原稿给出的结果数字、也不编造背景内容(硬规则 3)的前提下压不到 50%;保留并在此说明。该条不在 05 自检清单内(清单第 7 条只查结果句,结果句 74 / 226 ≈ 33% ✓)。

### 10-chinese-author-pitfalls.md 逐句扫描

- E1–E23:全部清零(无 there be、无 can 描述观察事实、无双重 to、of 每句 ≤ 2 且 area under the ... curve 按固定术语不计、无 ≥ 4 名词堆叠、无同义词轮换、无多重 hedging、无缩写体、无 etc.)。
- W7 保留:第 6 句 "On the test set," 主题化开头;保留理由 = 说明评估数据集是读者判断 AUC 含义的必要条件,移到句尾会让"higher than ... (0.81)"的比较范围不清。
- W1 保留:第 5 句 "compared it with" 的 it,先行单数名词唯一(the XGBoost model),所指唯一。
- 10-17 ✗:尚未由合著者或同事通读(agent 无法完成)。

## 6. 建议补充(原稿缺失、需作者提供;不写进正文)

1. 再入院的定义:全因还是糖尿病相关、是否限于非计划再入院、是否含同院他科。
2. 灵敏度 / 特异度对应的阈值及选取方式(Youden 指数、固定灵敏度等),以便给数字加限定语。
3. 与现有通用再入院评分(如 LACE、HOSPITAL 等)在同一队列上的直接对比数据;摘要第 2 句"limited discrimination"与最后一句"diabetes-specific tool"目前只依托背景陈述,缺本队列证据。
4. 缺失值处理方式、随机种子、超参数调优与交叉验证方式、类别不平衡处理(Methods 需要,摘要不写)。
5. 伦理批准号与知情同意豁免情况(Methods 与声明需要)。
6. 目标期刊及其摘要字数 / 形态 / 是否禁用缩写;若为结构化摘要,按 05 结构化列重排。
7. 若期刊近 5 年摘要普遍用现在时报告结果,可整体改现在时(05 分歧 2)。
8. 长期建议(00 分歧 10):后续各节直接用英文起草,减少中译英带来的母语溢出。

## 7. 衔接提示

- Methods 须逐项回应摘要中的方法要素:纳入标准与时间范围、7:3 随机划分、三类输入(人口学 / 27 项化验 / 用药)、三种模型、SHAP;XGBoost、random forest、SHAP 在 Methods 首次出现处需 `[REF]` 占位(SKILL.md 硬规则 4)。
- Results 中的 AUC、95% CI、灵敏度、特异度、校准、前五特征必须与摘要数字逐一相同;摘要用了 0.84 / 0.80-0.88 / 0.76 / 0.81 / 0.79 / 0.77。
- Discussion / Conclusion 的强度不得高于摘要:predictable、could support、external validation is needed 三处口径保持一致。
- Title 与 Keywords 应与摘要共用核心术语:type 2 diabetes mellitus、90-day readmission、XGBoost、prediction model、Chinese inpatients、routinely collected admission data(06 前置约定;05 自检 20)。

## 使用体验反馈

1. `SKILL.md` 第 56 行硬规则 4 要求命名算法(XGBoost、random forest)处放 `[REF]`,而 `references/05-abstract.md` 第 56 行细则 12 说摘要默认不含引文;两者在摘要场景下谁优先没有写明,我自行裁定摘要不放 `[REF]`、留给 Methods。
2. `references/05-abstract.md` 第 48 行细则 5 要求"方法与结果句合计不超过一半",但第 195 行自检清单第 7 条只查"结果句不超过一半";细则与清单口径不一致,不知合计超一半算不算不合格;本例在硬规则 3 不编造背景的约束下压不到 50%。
3. `references/05-abstract.md` 第 49 行细则 6 与第 196 行自检第 8 条要求"每个数字旁有限定语或参照对象",未说明方法数字(1,563、27、7:3)是否也算,也未说明原稿无参照值时(灵敏度 / 特异度)该怎么办,只能判 ✗ 并进「建议补充」。
4. `references/00-workflow.md` 第 53 行切入点表"只要摘要或标题 → 全文各节须已成稿;未成稿的先写正文",与本次"只有中文摘要材料、直接出摘要"的任务直接冲突;`SKILL.md` 硬规则 10 只降级了"停下来问",没有降级"先写正文",我只能借用第 52 行"只要写某一节"那一行的口径。
5. `SKILL.md` 第 68 行「理解确认」限 1–3 句,而第 62 行硬规则 10 与 `00-workflow.md` 第 55 行要求把期刊、读者档、形态、拼写、张力陈述等所有假设都写进「理解确认」并标"请确认";两者装不进 3 句,我改成了要点列表。
6. `SKILL.md` 第 49 行要求按 10 号清单逐句扫描并"并入自检",`references/10-chinese-author-pitfalls.md` 第 16 行与第 163 行要求报告格式为"位置 / 原句 / 条目号 / 级别 / 改法",而 `SKILL.md` 第 72 行「自检结果」又说只列 ✗ 不逐条罗列;扫描全绿时该输出什么没有约定,我只列了保留的 warning 与其理由。
7. `references/05-abstract.md` 第 52 行细则 9 要求同一对象一个名字,但没说 "the XGBoost model" 与简称 "the model" 是否算换名;我全篇统一用 the XGBoost model,读起来略重复。
8. `SKILL.md` 第 72 行"涉及 Methods 时加伦理声明项":摘要含方法句(单中心回顾性研究)是否算"涉及 Methods"不明确;我按不算处理,只把伦理批准号放进「建议补充」。
9. `references/10-chinese-author-pitfalls.md` 第 164 行自检第 17 条"已请至少一位合著者或同事通读"agent 永远无法完成,每次都只能判 ✗;建议标为"作者项"或移出 agent 自检。
10. `references/05-abstract.md` 第 33 行步 6 时态栏写"摘要中允许一般现在时以增强即时感",但默认过去时的裁决要翻到第 212 行分歧 2 才看到;表格单元格内没有指针,首次阅读容易误以为两者任选。
