# 回归测试输出:一般式英文 Abstract(输入 samples/abstract-draft-zh.md)

> 生成日期:2026-09-07。任务:按 SKILL.md 路由表「写或压缩 Abstract」行,把中文摘要材料写成 200–250 词的一般式(非结构化)英文 Abstract;目标期刊未知,按硬规则 10 直接产出。

## 理解确认

- 故事线:2 型糖尿病患者出院后 90 天再入院率高,通用再入院评分在该人群判别力有限、中国人群研究少(前人认为 X);本文用单中心 1,563 例住院数据训练 XGBoost 模型,测试集 AUC 0.84,优于逻辑回归与随机森林,并给出前五重要特征(本文表明 Y)。
- 目标期刊 / 读者:未知(请确认)。按通用惯例处理:一般式摘要、默认 200–250 词、美式拼写、AUC / CI 视为领域公认缩写直接使用、不放引文。
- 本次处理的节:仅 Abstract;正文各节未成稿,摘要按九步序列独立写成,不是各节拼接。

## 结构(05 号文件九步序列在本稿的落位)

| 句 | 功能步 | 说明 |
|---|---|---|
| S1 | 步 1 + 步 3(合并) | 宏观入口(再入院率高)直接接"已知—但未知"空白(通用评分判别力有限、中国人群研究少);短摘要允许 1 + 3 合并(05 细则 13) |
| S2 | 步 4 | 本文做了什么,带归属标记 In this study, we |
| S3–S5 | 步 5 | 方法:研究设计与样本、输入变量、对比模型与特征重要性方法 |
| S6–S8 | 步 6 | 主要结果:AUC 带 95% CI 与两个参照模型;灵敏度、特异度、校准;前五特征 |
| S9 | 步 7 | 含义,单一避险词 suggest |
| S10 | 步 8 + 步 9 | 贡献认领(this work provides)+ 半句局限前置 + 以应用价值收尾(could) |

步 2(具体背景)按字数取舍省略(一般摘要可选)。

## 正文

Patients with type 2 diabetes face a high rate of readmission within 90 days of hospital discharge, yet generic readmission scores show limited discrimination in this population and few studies have focused on Chinese patients. In this study, we developed an XGBoost model to predict 90-day readmission in Chinese patients with type 2 diabetes. We retrospectively included 1,563 patients admitted to the endocrinology department of a tertiary hospital from January 2021 to December 2023, who were randomly split 7:3 into training and test sets. Model inputs comprised demographic data, 27 laboratory tests obtained within 24 hours of admission, and medication records. We compared the model with logistic regression and random forest; feature importance was ranked using Shapley additive explanations. The model reached an AUC of 0.84 (95% CI 0.80-0.88) on the test set, higher than that of logistic regression (0.76) and random forest (0.81). The model also reached a sensitivity of 0.79 and a specificity of 0.77; its calibration curve lay close to the diagonal. Shapley additive explanations ranked glycated hemoglobin, length of stay, number of hospitalizations in the previous year, estimated glomerular filtration rate, and insulin use as the five most influential features. These results suggest that the model identifies patients at high risk of readmission with reasonable accuracy. This work provides a readmission prediction model tailored to Chinese patients with type 2 diabetes; although developed at a single center without external validation, the model could support decisions on pre-discharge intervention.

### 词数统计(按 09a 口径:空白分隔 token 计 1 词,`0.80-0.88`、`(0.76)`、`7:3`、`90-day` 各计 1 词)

- 总词数:242(目标 200–250 ✓);句数:10(05 细则:8–10 句 ✓)
- 平均句长:24.2 词(摘要特例 ≤ 25 ✓);最长句 35 词(≤ 40 ✓)
- 各句词数:S1 35 / S2 19 / S3 30 / S4 17 / S5 18 / S6 25 / S7 21 / S8 29 / S9 16 / S10 32
- 结果句(S6–S8)75 词,占 31%(≤ 50% ✓);方法 + 结果句(S3–S8)140 词,占 57.9%(≤ 60% ✓)

## 改动说明

新起草,无原英文稿可对照;与中文材料相比的取舍只有两处:(1)"能比较准确地识别高风险患者"译为 suggest + with reasonable accuracy,把"能"从 can 改为一般现在时陈述并只留一个避险词(08 情态动词裁决 1、确定性规则 1);(2)"只有一个中心的数据,还没有外部验证"压成半句让步前置,末句落在应用价值(05 细则 18)。

## 自检结果

**核心五项**

1. 时态 ✓ —— 背景用一般现在时 / 现在完成时(face、show、have focused),本研究动作与结果用过去时(developed、included、compared、reached、ranked),含义与贡献用一般现在时(suggest、provides、could),与 08 总表 Abstract 行一致。
2. 语态 / 所有权 ✓ —— 每个发现句含 we / the model(S2 已由 we developed 认领)/ 过去时至少一项;唯一无施动被动句 "feature importance was ranked" 与 "We compared" 同句,施动者可辨认。
3. 结构 ✓ —— 第一句为宏观入口 + 空白;步 3、4、6、8 必写项齐全;末句以价值收尾。
4. 强度匹配 ✓ —— 结论句各只一个避险词(S9 suggest;S10 could);未用 cause、first、novel;摘要强度未高于原稿结果(原稿"比较准确" → reasonable accuracy)。
5. 术语缩写 ✓ —— 全篇只用 the model / the XGBoost model 指代本模型,不与 approach / algorithm 轮换;type 2 diabetes、readmission 全篇同名;AUC、CI 为领域公认缩写直接用(05 细则 11 括注);Shapley additive explanations 出现两次,按细则 11 不缩写。

**05 号自检清单中非 ✓ 的条目**

- 第 1 条 N/A:正文未成稿,摘要按九步序列独立写成,无法核对"全文定稿后重写"。
- 第 2 条 N/A:目标期刊未知,无法核对字数、形态与小标题要求;按默认 200–250 词一般式处理。
- 第 8 条 N/A(部分):AUC 有 95% CI 与两个参照模型;灵敏度 0.79 / 特异度 0.77 原稿未给参照值或阈值,已进「建议补充」,不计 ✗。
- 第 20 条 N/A:标题、关键词、正文结论尚不存在,无法核对术语一致。

**08 号自检清单中非 ✓ 的条目**

- 第 3 条 N/A:摘要无引文,无前人发现时态可核。

**10 号清单逐句扫描**(新起草文本口径:位置 / 句子 / 条目号 / 级别 / 改法)

- error 级 E1–E23:无命中。
- 保留的 warning:
  - S9 / "with reasonable accuracy" / W3 / warning / 保留:评价词对应 S6–S7 的 AUC、灵敏度、特异度数据,且译自原稿"比较准确",不属无信息修饰。
  - S5 / "feature importance was ranked using Shapley additive explanations" / W14 / warning / 保留:同句前半有 We compared,施动者唯一;拆成 we ranked 会使句内 and 计数升到 2(09a 超载信号)。
  - S3 / "..., who were randomly split 7:3 ..." / W1(关系词先行词距离)/ warning / 保留:who 只能指 patients,不存在第二个人称先行词。

**待作者确认**

- 05 第 6 条后半:评价词 reasonable accuracy 需在正文结果 / 讨论中有对应表述。
- 05 第 20 条:标题与关键词定稿后回头核对与本摘要术语一致(type 2 diabetes、90-day readmission、XGBoost)。
- 10 第 17 条:提交前请至少一位合著者通读。

## 建议补充

1. 灵敏度 0.79 / 特异度 0.77 所用的判定阈值,以及是否有参照(如逻辑回归 / 随机森林在同一阈值下的值),用于给结果数字加限定语(05 细则 6)。
2. 校准的量化指标(如 Brier score 或校准斜率 / 截距),"贴近对角线"为定性描述。
3. 90 天再入院的定义(全因 / 糖尿病相关;同院 / 任意医院),摘要中目前只写 readmission。
4. "现有通用再入院评分判别力有限"是否有本研究内的对比数据(如 LACE、HOSPITAL 在本队列的 AUC);若有可把 S1 的空白句升级为直接对比,若无则维持现写法。
5. 目标期刊名称与摘要字数 / 形态要求(是否结构化、是否允许缩写),以便按硬规则 8 调整。
6. 是否希望在摘要中使用缩写 SHAP;按 05 细则 11,只出现两次时默认不缩写,若正文大量使用可在摘要首次给全称并缩写。

## 衔接提示

- 方法节须逐一回应摘要中的每个方法要素:回顾性单中心设计与纳入时间窗、7:3 随机划分、三类输入(人口学、27 项化验、用药)、三种模型对比、Shapley 特征重要性;结果节须回应 AUC 与 95% CI、两个基线 AUC、灵敏度 / 特异度、校准曲线、前五特征。
- 讨论 / 结论节的强度不得超过摘要:保留 suggest / could 档;局限(单中心、无外部验证)在讨论中展开,摘要中只留半句。
- 标题与关键词定稿后按 06「术语一致」条与本摘要统一核心术语。

## 使用体验反馈

1. SKILL.md 第 40 行把 06 的必读范围写成"仅术语一致条",但未指出该条在 06 的哪一行;06 中相关内容分散在第 18 行(前置约定)与第 200 行(自检第 20 条),不通读无法定位,建议在路由表标注行号或小节名。
2. 05-abstract.md 第 57 行细则 13 结尾有多余标点"。;",且"短摘要常需合并步 1 + 3(背景直接接空白),允许"这半句缺谓语宾语,读起来像未写完。
3. 09a-metrics-table.md 第 20 行"and > 1"超载信号只豁免"三项以上的列举式 and";两项固定搭配(training and test sets、logistic regression and random forest)与"目的—动作"并列一叠加就触发,几乎每个方法句都要为规避它而拆句,与 05 第 39 行"8–10 句"上限形成拉扯,建议豁免两项并列的固定名词对。
4. 05-abstract.md 第 55 行细则 11 的"领域公认缩写"举例(AUC、CI、HbA1c、MRI、CT)未覆盖方法名缩写(SHAP、XGBoost 一类),执行时要自行裁决 SHAP 是否属于"只出现一两次的不缩写",建议补一句方法名缩写的处理。
5. 05-abstract.md 第 191 行自检第 2 条(已核对目标期刊)在期刊未知时没有像第 1 条那样给 N/A 说明,只能靠 SKILL.md 第 72 行的通用 N/A 规则兜底,建议同样加括注。
6. SKILL.md 第 71 行"改动说明(按需)"对新起草任务是否需要写没有说明;本次按"只写取舍点"处理,建议注明新起草时可省或只写取舍。
7. 05-abstract.md 第 50 行细则 6 的方法数字豁免与第 197 行自检第 8 条一致,可执行性好;但 08-verbs-tense-voice.md 第 199 行的 of ≤ 2 规则会与摘要中常见的 "a sensitivity of X and a specificity of Y ... an AUC of Z" 结果句冲突,本次靠拆句解决,建议 05 或 08 给一条摘要结果句的处理例。

## 实际读取清单

- `skills/sci-writing/SKILL.md` —— 完整读(77 行)。
- `skills/sci-writing/references/05-abstract.md` —— 完整读(214 行)。
- `skills/sci-writing/references/06-title-keywords.md` —— 完整读(203 行;路由表只要求"术语一致条",因无法预先定位该条所在位置而整文件读完,实际用到第 18 行与第 200 行)。
- `skills/sci-writing/references/08-verbs-tense-voice.md` —— 完整读(213 行)。
- `skills/sci-writing/references/10-chinese-author-pitfalls.md` —— 完整读(169 行)。
- `skills/sci-writing/references/09a-metrics-table.md` —— 完整读(29 行)。
- `skills/sci-writing/samples/abstract-draft-zh.md` —— 完整读(8 行)。
- 未读:`references/09-academic-style.md`(总则标"按需",本次未触发)、其它 references、samples 下 expected-points-* 与 README.md、tests/、notes/、docs/。未运行 git。
