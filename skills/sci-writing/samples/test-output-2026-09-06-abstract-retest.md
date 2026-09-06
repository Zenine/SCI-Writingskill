# 测试输出:一般式英文 Abstract(2026-09-06 复测)

> 输入:`samples/abstract-draft-zh.md`。路由:`SKILL.md` 路由表「写或压缩 Abstract」→ 先读 `05-abstract.md`,再读 `06-title-keywords.md`;切入点按 `00-workflow.md` 切入点表「只要摘要且正文未成稿(用户直接给材料)」一行,按 `SKILL.md` 硬规则 10 直接产出;起草后按 `08-verbs-tense-voice.md` 与 `10-chinese-author-pitfalls.md` 逐句扫描,句长口径读 `09-academic-style.md` 统一口径表。

## 1. 理解确认

假设超过 3 条,改为要点列表(均为按硬规则 10 取的默认值,**请确认**):

- 故事线(张力陈述):Existing generic readmission scores discriminate poorly among patients with type 2 diabetes and Chinese evidence is scarce; here we show that an XGBoost model built from routinely collected admission data reaches an AUC of 0.84 for 90-day readmission in a Chinese cohort.
- 目标期刊未知 → 按通用惯例取默认:一般式(非结构化)摘要、200–250 词、美式拼写、无引文、无小标题;读者档取专业刊(临床 / 医学信息学同行),步 1 只留 1 句宏观入口。**请确认**。
- 本次只处理 Abstract 一节;正文各节未成稿。按 `00-workflow.md` 切入点表第 55 行:**全文定稿后须按 `05-abstract.md` 重写本摘要**,本稿是基于材料的先行稿。
- 材料未给的参照值、外部对照、伦理批号等一律不写进正文,进「建议补充」。

## 2. 结构(`05-abstract.md` 九步序列 → 本稿句子)

| 步 | 功能 | 本稿句 |
|---|---|---|
| 1 | 宏观入口 | S1 |
| 2 | 具体背景 | 省略(专业刊可省;背景已由 S1–S2 覆盖) |
| 3 | 问题 / 空白(已知—但未知) | S2 |
| 4 | 本文做了什么(带归属标记 in this study, we) | S3 |
| 5 | 方法(只给决定是否读全文的信息) | S4–S5 |
| 6 | 主要结果(数字带参照) | S6–S8 |
| 7 | 含义(suggest) | S9 |
| 8 + 9 | 贡献 / 应用(合并,局限前置半句) | S10 |

## 3. 正文

Patients with type 2 diabetes face a high risk of 90-day readmission after hospital discharge. Existing generic readmission scores offer only limited discrimination in this population, and evidence from Chinese patients remains scarce. In this study, we developed and tested a machine learning model to predict 90-day readmission in Chinese inpatients with type 2 diabetes. We retrospectively included 1,563 patients admitted to the endocrinology department of a tertiary hospital from January 2021 to December 2023 and randomly split them 7:3 into training and test sets. Using demographic data, 27 laboratory tests within 24 hours of admission, and medication records, we trained an XGBoost model, compared it with logistic regression and random forest, and ranked feature importance with Shapley additive explanations. In the test set, the XGBoost model reached an area under the receiver operating characteristic curve of 0.84 (95% confidence interval 0.80-0.88), higher than logistic regression (0.76) and random forest (0.81). The model achieved a sensitivity of 0.79 and a specificity of 0.77, and its calibration curve lay close to the diagonal. Shapley additive explanations ranked glycated hemoglobin, length of stay, hospitalizations in the preceding year, estimated glomerular filtration rate, and insulin use as the five most influential features. These results suggest that routinely collected admission data identify, with reasonable accuracy, patients with type 2 diabetes at high risk of readmission. Although derived from a single center and not yet externally validated, the model could help clinicians target pre-discharge interventions to these patients.

### 词数统计

计数口径:按空白分隔的 token 计一词(`0.80-0.88`、`(0.76)`、`7:3`、`90-day` 各计 1 词)。

- S1: 15
- S2: 18
- S3: 22
- S4: 30
- S5: 35
- S6: 31
- S7: 21
- S8: 27
- S9: 22
- S10: 22
- **合计 243 词,10 句,平均 24.3 词/句;最长 35 词(S5)**。
- 篇幅占比:方法句 S4–S5 = 65 词(26.7%);结果句 S6–S8 = 79 词(32.5%,≤ 50%);方法 + 结果 = 144 词(59.3%,≤ 60%,已到上限边缘)。

## 4. 改动说明(材料 → 英文稿的关键处理及依据)

- 第一句用宏观入口而非样本量或方法(05 细则 1);"针对中国人群研究少"并入 S2 作空白句,写成陈述句(05 细则 2)。
- S3 用 In this study, we 认领贡献(05 细则 3;SKILL 硬规则 5)。
- 方法数字(1,563、7:3、27 项、24 小时)保留且不加限定语(05 细则 6 豁免);AUC 以逻辑回归与随机森林作参照并用 higher than(05 细则 6)。
- AUC、CI、SHAP、HbA1c、eGFR 全篇各出现 1–2 次,按 05 细则 11 一律写全称、不引入缩写;XGBoost 是算法专名保留;XGBoost 不放 `[REF]`(05 细则 12,SKILL 硬规则 4 例外)。
- 结果句用过去时(05 分歧 2 默认;08 总表 Abstract 行);含义句用 suggest 一个避险词,末句 could 一个避险词(08 确定性阶梯规则 1)。
- 原稿"能比较准确地识别""可以帮助医生"中的"能 / 可以"不译成 can(08 can / could 裁决 1;10 E20),改为过去时数字 + suggest / could。
- 局限"单中心、未外部验证"压成 Although 前置半句,末句落在应用(05 细则 18)。
- 原稿 "sensitivity and specificity were 0.79 and 0.77" 类写法改为 achieved a sensitivity of ... (08 懒惰动词 be 清理)。
- 原稿 11 句 263 词超出 05 第 38 行"8–10 句、200–250 词"边界,按 05 细则 13 优先级合并步 5 + 步 6 的两句(输入数据句并入建模句),得 10 句 243 词。

## 5. 自检结果

### 五项核心

- 时态 ✓:S1–S2 背景现在时;S3–S8 本研究动作与结果过去时;S9 含义现在时 + suggest;S10 应用 could;无"我们做了"用现在时的句子(08 自检 1、2)。
- 语态 / 所有权 ✓:S3–S5 主动 we;S6–S8 以 the XGBoost model / the model 作主语 + 过去时 + In the test set 定位,可辨认为本研究结果;无无施动被动句;无 It is shown that 起句(SKILL 硬规则 5;08 自检 5、6)。
- 结构 ✓:步 1、3、4、5、6、7、8 齐全,步 2、9 按字数取舍;首句为宏观入口;末句落在应用(05 自检 3、4、5、6、21)。
- 强度匹配 ✓:S9 仅 suggest,S10 仅 could;"reasonable accuracy" 对应 AUC 0.84 与灵敏度 / 特异度 0.79 / 0.77;未用 novel / first / robust(05 自检 9;08 自检 15)。
- 术语缩写 ✓:type 2 diabetes、90-day readmission、the XGBoost model → the model、test set、Shapley additive explanations 全篇各一名;无缩写引入,无需给全称(SKILL 硬规则 7;05 自检 14、16)。

### 05-abstract.md 清单中判为 ✗ 的条目

无。

### N/A 项(不计 ✗)

- 05-1「摘要在全文定稿后重写」N/A:正文未成稿,本稿按 00 切入点表第 55 行先行产出,定稿后须重写。
- 05-2「已核对目标期刊字数、形态」N/A:目标期刊未知,按默认 200–250 词一般式处理。
- 05-8 灵敏度 0.79 / 特异度 0.77 与"校准曲线贴近对角线"无参照对象:原稿未给对照模型的对应数值,按细则 6 进「建议补充」,标 N/A。
- 05-20「摘要、标题、关键词、正文结论用同一套术语」N/A:标题、关键词、正文均未成稿。
- 08-3「引用前人发现的时态按最新文献核对」N/A:摘要无引文。

### 10 号清单逐句扫描(新起草文本,格式:位置 / 句子 / 条目号 / 级别 / 改法)

error 级 E1–E23 无命中。保留的 warning 及理由:

- S6 / "In the test set, the XGBoost model reached ..." / W7 / warning / 保留:句首介词短语是结果的定位语(与白名单 In this study 同功能),与主句关系唯一,不并入主句以免主语后移。
- S5 / "Using demographic data, ..., we trained ..., compared it with ..., and ranked ..." / 09 统一口径表"一句 and > 1"超载信号 + E10 逗号 ≥ 4 触发检查 / warning / 保留:35 词 ≤ 40 词上限,三个 and 分属列举与并列谓语,读者无需猜关系;拆句会使总句数回到 11 句,超出 05 第 38 行边界。
- S9 / "identify, with reasonable accuracy, patients ..." / W9(副词性短语位置)/ warning / 保留:插入语紧贴动词 identify,避免原写法 "patients with type 2 diabetes with reasonable accuracy" 的 with 挂接歧义(E2)。
- S3 与 S9 / "Chinese inpatients" 与 "Chinese patients"(S2)/ E11 同义词轮换检查 / 裁决:inpatients 在 S3 指纳入对象(住院患者),patients 在 S2 指人群证据,含义确有差异,保留。

其余 W1–W16 无命中;拼写全篇美式(W16)。

### 待作者确认

- 目标期刊的摘要字数、形态(一般 / 结构化)与是否允许 XGBoost 一类算法名不加说明(05-2)。
- 至少一位合著者通读(10-17)。
- "reasonable accuracy" 是否与正文讨论节最终措辞一致(05-20)。

## 6. 建议补充

- 灵敏度 0.79 与特异度 0.77 的参照对象(逻辑回归、随机森林的对应值,或所用阈值),以便结果数字加限定语;当前按 N/A 处理。
- 校准的量化指标(如 Brier score 或 calibration slope),"贴近对角线"是定性描述。
- 训练集 / 测试集各自样本量、90 天再入院事件数与发生率(摘要可选,但审稿人常要求)。
- "现有通用再入院评分判别力有限"的依据(具体评分名与其在糖尿病人群中的 AUC),供引言使用;摘要不放引文。
- 伦理批准与知情同意豁免信息(供方法节;摘要不写)。
- 缺失值处理、超参数调优方式、随机种子(供方法节)。
- 目标期刊名或 2–3 篇同类近 5 年摘要样文,以校正形态与拼写。

## 7. 衔接提示

- 正文 Results 须给出摘要中每个数字的来源表格(AUC 三模型对比、灵敏度 / 特异度、校准曲线图、SHAP 前五特征),且强度不得低于摘要;Discussion 与 Conclusion 中对"识别高风险患者、辅助出院前干预"的表述须与 S9–S10 用同一强度(suggest / could)。
- Introduction 末段的研究目的须与 S3 一致(develop and test a model to predict 90-day readmission in Chinese inpatients with type 2 diabetes);Methods 中"单中心、2021-01 至 2023-12、7:3 划分、27 项化验、24 小时窗"须与 S4–S5 逐项对应。

## 使用体验反馈

- `SKILL.md` 第 40 行路由表把摘要任务的「再读」定为 06,但 06 对只写摘要的任务只有第 17 行"标题、关键词、摘要、正文结论同一套术语"一句可用,读完全文成本高而产出低;建议路由表直接指向 `06-title-keywords.md` 第 17 行或改为"06(仅术语一致条)"。
- `SKILL.md` 第 49 行把 09 标为"按需",但第 72 行与 `05-abstract.md` 第 53 行、第 203 行(自检 15 句长)使任何摘要任务都必须读 09 的口径表;建议在路由表第 40 行把 09 的统一口径表列为摘要任务的必读项。
- `05-abstract.md` 第 54 行"只出现一两次的不缩写"迫使本稿把 AUC 写成 8 个词的全称、把 SHAP 写成 Shapley additive explanations 两次,在 250 词上限内消耗约 10 词;`06-title-keywords.md` 第 205 行对标题给了"领域公认缩写(DNA、MRI、CT)"豁免,05 没有对应豁免,建议补一条(AUC、CI、HbA1c 一类临床公认缩写)。
- `05-abstract.md` 第 56 行细则 13 的合并优先级只列了步 4+8、5+6、6+7 三种,短摘要最常需要合并的步 1+3(背景直接接空白)未列入,执行时不知是否允许;建议补充。
- `05-abstract.md` 第 189 行自检 1"摘要在全文定稿后重写"在 `00-workflow.md` 第 55 行"正文未成稿直接写摘要"场景下必然不成立,只能靠 `SKILL.md` 第 72 行的 N/A 档兜底;建议在 05 自检 1 后注明"正文未成稿时标 N/A"。
- `SKILL.md`、`05-abstract.md` 第 60 行、`09-academic-style.md` 第 34 行都给词数上限但都没有计数口径(`0.80-0.88`、`(0.76)`、`7:3`、`90-day` 算几词),不同 agent 会得到不同词数;建议在 `09-academic-style.md` 第 21 行口径表加一行计数约定。
- `05-abstract.md` 第 61 行细则 18 的例句 "Although validated at a single center, the model offers ..." 与本测试输入(单中心、未外部验证的模型)几乎同题,agent 会自然复用该句式,测试判分时区分不出"按规则写"与"照抄例句";建议 samples 的期望点或例句改用不同领域的例子。
- `05-abstract.md` 第 49 行细则 6 与第 196 行自检 8 对"结果数字无参照值"给 N/A 出口,但没说三模型 AUC 对比是否能兼作灵敏度 / 特异度的参照(同一测试集、同一模型),本稿按保守口径判 N/A 并进「建议补充」;建议明确。
- `09-academic-style.md` 第 31 行"一句中 and > 1"为超载信号,与 `05-abstract.md` 第 56 行"合并功能省句数"在 250 词摘要里直接冲突(合并必然增加 and);本稿只能一边合并一边把 and > 1 记为保留的 warning,建议 05 或 09 说明摘要中列举式 and 是否计入。

## 实际读取的文件

- `/home/zenine/github/SCI-Writingskill/skills/sci-writing/SKILL.md`(全文)
- `/home/zenine/github/SCI-Writingskill/skills/sci-writing/samples/abstract-draft-zh.md`(全文)
- `/home/zenine/github/SCI-Writingskill/skills/sci-writing/references/00-workflow.md`(全文,重点切入点表第 45–57 行)
- `/home/zenine/github/SCI-Writingskill/skills/sci-writing/references/05-abstract.md`(全文)
- `/home/zenine/github/SCI-Writingskill/skills/sci-writing/references/06-title-keywords.md`(全文)
- `/home/zenine/github/SCI-Writingskill/skills/sci-writing/references/08-verbs-tense-voice.md`(全文)
- `/home/zenine/github/SCI-Writingskill/skills/sci-writing/references/10-chinese-author-pitfalls.md`(全文)
- `/home/zenine/github/SCI-Writingskill/skills/sci-writing/references/09-academic-style.md`(只 grep 了句长 / 口径 / 词数相关行,未读全文;依据 `SKILL.md` 第 49 行"凡自检涉及句长数字读 09 口径表")
