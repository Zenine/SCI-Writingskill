# 中国作者常见错误逐句扫描清单

> 来源:书A 第8单元 8.3;书B 第6章、第8章、附录二

## 何时读本文件

- 总流程(`00-workflow.md`)第 7 步:与 `09-academic-style.md` 同轮,对稿件逐句扫描。
- 用户说"帮我看看有没有 Chinglish""改一下中式英语""这是中文翻过来的"。
- 用户给的是中译英稿件,或稿件中出现 there be、with 串、名词堆叠、多重 hedging 等母语溢出信号。
- 审稿意见含 "awkward phrasing""non-native expressions""language needs polishing"。
- 本文件提到的其它 reference 只是出处指引;执行时以 SKILL.md 路由表的「先读 / 再读」为必读范围。

前置约定:本文件是清单而非替换词典,每条给"识别信号(可 grep 或肉眼定位)→ 修正原则 → 1 个自写对比例"。两档:**error 级** = 语法错或读者无法确定含义,必须改;**warning 级** = 语法正确但别扭或有歧义风险,逐条裁决后可保留。扫描先 error 再 warning,报告格式见自检第 16 条;误报处理见「常见错误」一节,规则与语境冲突时以"读者是否需要猜"为最终判据。动词、时态、语态的规则本体另见 `08-verbs-tense-voice.md`,本文件只收母语溢出最集中的条目。

## 结构与规则

### error 级(必须改)

| 编号 | 错误模式 | 识别信号 | 修正原则 | 自写对比例 |
|---|---|---|---|---|
| E1 | 谈话标记进入正文 | 句首 `So` / `Well` / `OK` / `Let me`;`actually` / `basically` | 删除,直接陈述事实 | ✗ So basically the attention module actually improves recall. → ✓ The attention module improves recall. |
| E2 | 模糊介词 with / of 连接两个名词 | `名词 with 名词`;一句内 `with` ≥ 3(动词固定搭配 compared with / associated with / consistent with / together with 不计);`of` 表"携带 / 影响 / 来自" | 换成表明关系的分词或动词:associated with / containing / derived from / affecting;连续 with 改 between ... and | ✗ Features with the tumor region of the scans were compared with those with healthy tissue. → ✓ Features extracted from the tumor region were compared with those extracted from healthy tissue. |
| E3 | 模糊代词 it / they / them / their | `It` 指上一整句或 ≥ 2 个候选名词;`they` 无复数先行词 | this / these + 概括名词,或重复名词;it / they 所指唯一或 it 作形式主语即合法(另见 `09-academic-style.md` 规则 4) | ✗ The model was trained on two centers. It improved the AUC, but they differed in scanner type. → ✓ The model, trained on data from two centers, improved the AUC; however, the two centers differed in scanner type. |
| E4 | 双重目标句 | 一句内 `to + 动词` 表目的 ≥ 2;`To ..., X was used to ...` | 一句一个目的 to;顺序 目的 → 主动动作 → using / by | ✗ To assess drift, a holdout set was used to compare predictions to evaluate calibration. → ✓ To assess drift, we compared predictions on a holdout set and evaluated calibration. |
| E5 | 非研究者主语 + to 表目的 | 主语为基因 / 蛋白 / 装置 / 模型 + `to + 动词` | 改 resulting in / that + 动词 陈述因果 | ✗ The transporter accumulates at the membrane to import glucose. → ✓ The transporter accumulates at the membrane, resulting in increased glucose import. |
| E6 | 主谓不一致 | 主语含 `of` / `with` / 分词后置修饰;动词跟着最近名词变 | 找主语中心词再定单复数;每个含后置修饰的主语逐个核对 | ✗ The set of hyperparameters selected by the two folds were fixed. → ✓ The set of hyperparameters selected by the two folds was fixed. |
| E7 | 词性 / 近形词错用 | `In consistent with`;`consistently` 表"与前人一致";`administrate`;`on the contrast`;`on the contrary` 表一般对比 | in agreement with / in line with;administer;in contrast(on the contrary 仅反驳同一议题) | ✗ In consistent with prior work, the ensemble was better. → ✓ In agreement with prior work, the ensemble performed better. |
| E8 | 汇报动词 + 抽象关系名词 | `indicate` / `show` / `reveal` / `confirm` + `the` + distinction / relation / importance / possibility / role / association(接具体可测对象 showed a 12% increase 不报) | + that + 主谓从句;另见 `08-verbs-tense-voice.md` | ✗ Our findings indicate the association of scanner type with degradation. → ✓ Our findings indicate that performance degraded on certain scanner types. |
| E9 | 动词 + the + 名词化 + of | `perform the determination of`;`achieve the improvement of`;-tion / -ment / -ity 名词 + `of`;一句 `of` ≥ 3 | 还原为动词(determine / improve);Methods 固定流程名除外 | ✗ We performed the evaluation of the robustness of the model. → ✓ We evaluated the robustness of the model. |
| E10 | 长句 / run-on | 单句 > 40 词;逗号 ≥ 4 只触发检查(拆不拆由句意定,数字见 `09a-metrics-table.md`);一句内出现 ≥ 2 个 `, and then` / `, and as a result` / `, and so` / `, therefore` 类逗号连接(单个 `, which` 非限定从句与单个 `, but` 并列句不报) | 一句一个想法;逗号后的这些词是句号候选点;句间用连接短语保留逻辑 | ✗ Masks were fragmented in apical slices, and as a result volumes were biased, and so we added post-processing, therefore the bias decreased. → ✓ Masks were fragmented in apical slices. As a result, volume estimates were biased. We therefore added a post-processing step, thereby reducing the bias. |
| E11 | 同义词轮换 | 同一概念用 ≥ 2 个动词或名词:`depict` / `illustrate` / `display` / `demonstrate`;method / approach / framework 混用 | 一个概念一个词,选最简单的(show)并全篇坚持 | ✗ Fig. 2 depicts ..., Fig. 3 illustrates ..., Fig. 4 demonstrates ... → ✓ Fig. 2 shows ..., Fig. 3 shows ..., Fig. 4 shows ... |
| E12 | 重复主语 | `For X, its Y ...`;`As for X, it ...`;主题短语后主句再用代词 | 名词直接做主语或定语,删代词 | ✗ For the validation cohort, its sample size was too small. → ✓ The validation cohort was too small. |
| E13 | 名词堆叠 / 自创术语串 | 连续 ≥ 4 个名词且非领域公认缩写术语 | 用 of / for / that + 动词 解开;只有核心贡献才允许命名 | ✗ a multicenter CT lung nodule malignancy risk stratification pipeline → ✓ a pipeline that stratifies malignancy risk of lung nodules on CT scans from multiple centers |
| E14 | 多重 hedging | 一个结论句内 `believe` / `suggest` / `likely` / `may` / `might` / `possibly` / `potential` / `putative` ≥ 2 | 一个结论一个避险词,按证据在 demonstrate / show / indicate / suggest / may 中选一个 | ✗ We believe these results may possibly suggest a potential role of X. → ✓ These results suggest that X contributes to Y. |
| E15 | 平行 / 选择结构误译 | `both ... not` / `both ... did not`;`or ... not` / `X or Y were not`;`with ... and ... respectively` 拼接多个选项 | neither ... nor;both ... and;两项用 either ... or,三项以上用 one of X, Y, or Z | ✗ Both augmentation and dropout did not improve the AUC. → ✓ Neither augmentation nor dropout improved the AUC. |
| E16 | there be 起句 | 句首 `There is` / `are` / `was` / `were` | 删 there be,名词还原为动词并找回主语 | ✗ There was a significant reduction of false positives after calibration. → ✓ Calibration significantly reduced false positives. |
| E17 | 动词缩写 | `n't` / `'s`(作 is)/ `'ll` / `'re` | 展开;did not ... any → yielded no | ✗ The classifier didn't give us many false positives. → ✓ The classifier produced few false positives. |
| E18 | run-on 结尾 | `etc.` / `and so on` / `and so forth` / `and the like` | including / such as 前置;and other + 类别名;全列出用 namely | ✗ ...lung nodules, liver lesions, etc. → ✓ ...several lesion types, including lung nodules and liver lesions. |
| E19 | 口语连接词 | 句首 `And` / `But` / `So` / `Besides`;`meanwhile`;`nowadays`;`in a word`;`last but not least` | In addition / However / Therefore;whereas;currently;In summary;Finally | ✗ But the model failed on portable scans, meanwhile the baseline succeeded. → ✓ However, the model failed on portable scans, whereas the baseline succeeded. |
| E20 | can / could 直译"能" | `can` + 观察到的事实;`could` 表过去发生的事 | 简单过去时 + 数字;只在可选项或已写条件的推断中用 can;could → was able to / may | ✗ The model can detect nodules smaller than 5 mm. → ✓ The model detected nodules smaller than 5 mm in 92% of cases. |
| E21 | 悬垂修饰语 | 句首 `With` / `By` / `Based on` / `As` + 名词短语 + 逗号 + 被动主句,且短语的逻辑主语不是主句主语(`As shown in Fig. 2,` / `As described in [12],` 固定指示语不报) | 补主语,或改从句(Because ..., we ...) | ✗ With limited labeled data, transfer learning was adopted. → ✓ Because labeled data were limited, we adopted transfer learning. |
| E22 | 动名词搭配直译 | `learn knowledge` / `discover the contribution` / `obtain spectroscopy` / `make experiments` | 方法名词配 perform / conduct;贡献名词配 identify / quantify / investigate | ✗ We discovered the contribution of each module. → ✓ We quantified the contribution of each module by ablation. |
| E23 | 人称误用 | `you` / `your`;`As we all know`;`we can see` | 改被动或图表作主语;泛指改 It is well established that | ✗ As we all know, you can improve accuracy with more data. → ✓ Accuracy generally improves with larger training sets [refs]. |

### warning 级(逐条裁决,可保留)

| 编号 | 问题模式 | 识别信号 | 修正原则 | 自写对比例 |
|---|---|---|---|---|
| W1 | which 指代不明 | `which` 前有 ≥ 2 个名词;一句 `which` > 1 | 移动 which 紧跟唯一先行词;能不用就不用 | ✗ We fed the embeddings from the encoder into the head, which was frozen. → ✓ We fed the encoder embeddings into a frozen classification head. |
| W2 | which 表结果 / 因果 | `, which` 指代整句 | thus / thereby + -ing | ✗ The encoder compresses slices into embeddings, which reduces memory. → ✓ The encoder compresses slices into embeddings, thereby reducing memory use. |
| W3 | 无信息修饰词 | `carefully` / `robust` / `plausible` / `novel` / `sophisticated` / `dramatically` / `very` / `really`(引言 / 摘要中有结果节证据支撑的评价词不报;另见 `01-introduction.md` 细则 10) | 问"反义词成立吗";不成立则删;保留改变操作含义的修饰 | ✗ We carefully designed a robust and novel pipeline. → ✓ The pipeline increased sensitivity from 0.71 to 0.86. |
| W4 | 错置修饰语 / 缺补语 | `superior N than`;`identical N with`;过去分词前置而读者需知施动者(cells released → cells released by X) | 修饰语紧邻名词并带出补语:superior to that of / identical to that of / N released by | ✗ The federated model showed superior accuracy than the baseline. → ✓ The federated model showed accuracy superior to that of the baseline. |
| W5 | among / between 误用 | `among` + 两三个可区分实体;`between` + 集合名词 | between 用于可区分实体(不限两个);among 用于"在一群中";拿不准改动词句(differ / vary) | ✗ The distinction among the three scanners was significant. → ✓ The three scanners differed significantly. |
| W6 | 从句堆叠 | 连接副词与主句相距 > 10 词;主信息前有 ≥ 2 个从句或状语 | 主信息前置紧邻连接副词;让步与背景用 despite / especially 推到句尾 | ✗ Similarly, in low-dose CT, although noise is higher, no consensus exists on the kernel. → ✓ Similarly, no consensus exists on the reconstruction kernel, despite the higher noise of low-dose CT. |
| W7 | 主题化开头 | 句首 `In` / `For` / `As for` / `With` / `Regarding` + 名词短语 + 逗号,与主句关系不明;白名单不报:定位词 `In this study,` / `Here,`、连接短语 `In addition,` / `In contrast to X,` / `For example,`、指示语 `As shown in Fig. 2,` | 并入主句;表目的改 To + 动词;表方法移到句尾 using | ✗ In the ablation experiments, the attention head mattered. → ✓ Ablation experiments showed that the attention head accounted for most of the gain. |
| W8 | -ing 开头或歧义 -ing | 句首 `-ing`;句中 -ing 的施动者或关系(通过 / 因而 / 当 / 如果)不唯一 | 改带主语的从句或明确连接词;表结果的 -ing 前加 thus / thereby | ✗ Using a larger batch, the loss decreased. → ✓ When we used a larger batch, the loss decreased. |
| W9 | 副词位置 | 方式 / 时间副词在句首(`Then,` / `Actually,`)或句尾(`... automatically.`);句中 ≥ 2 个动词;评价与连接类句子副词(`Interestingly,` / `Notably,` / `However,`)允许句首,不报 | 紧贴被修饰动词;被动放 be 与分词之间;only / just / simply 逐个核对 | ✗ Then the images were segmented and features were extracted automatically. → ✓ The images were then segmented, and the features were automatically extracted. |
| W10 | 易混词对 | 中国作者最常错的四对:`affect` / `effect`;`adapt` / `adopt`;`imply` / `infer`;`e.g.` / `i.e.`。书外补充:`principle` / `principal`;`less` / `fewer`(可数用 fewer);`data is` / `data are`(data 作复数);`comprise` / `compose`(X comprises parts / X is composed of parts) | 逐对核对词义与单复数;更长的易混清单见书A 8.3,逐对核对时以词典为准 | ✗ The effect of noise affected less samples, and the data was rechecked. → ✓ Noise affected fewer samples, and the data were rechecked. |
| W11 | 书A 8.3 三项语境判断条目(respectively / comprise vs include / 连字符;书A p485–486) | `respectively` 前后两组数量不等或顺序不一;`comprise` / `consist of` 后只列部分(中文“包括”完整性不明时默认译 include,只有作者确认列举完整才用 comprise);多词前置定语无连字符,或连字符位置与数量不符(`five centimeter wide`) | respectively:数量相等、顺序一一对应,否则拆句。comprise / consist of / be composed of 接全部成分,include 接部分。连字符:多词修饰语作前置定语时加连字符,且连到哪个词决定数量落在哪里——five centimeter-wide layers(五层,每层 1 cm 宽)vs five-centimeter-wide layers(若干层,每层 5 cm 宽) | ✗ AUC and sensitivity were 0.91, 0.84 and 0.88 respectively. → ✓ On the internal and external sets, AUC was 0.91 and 0.88, respectively. Sensitivity was 0.84 and 0.80, respectively. |
| W12 | for the first time 落点不明 | `for the first time` 不紧贴其修饰成分 | 移到被修饰成分旁,让新颖性落点唯一 | ✗ We applied for the first time attention to CT nodule detection. → ✓ We applied attention to CT nodule detection, a task to which it had not previously been applied. |
| W13 | 冠词 a / the 改变句义 | `the cause of`(唯一)vs `a cause of`;首次提及却用 the;不可数名词加 a | 首次提及且非共享知识用 a;共享知识或已提及用 the;不可数名词不加 a | ✗ Scanner drift is the cause of the degradation. → ✓ Scanner drift is a cause of the degradation. |
| W14 | Methods 以外的被动无锚定 | Results / Discussion 中 `it was found` / `was observed` 无 here / in this study | 改主动补 we,或加定位词 | ✗ It was found that recall dropped. → ✓ We found that recall dropped after month six. |
| W15 | on the one hand / on the other hand 用于并列两个对象的数据 | 该结构两侧是两个不同对象的测量结果,而非同一议题的两个考虑 | 用于权衡同一议题的两个考虑时可保留;单纯并列两个对象的数据优先 whereas / in contrast(两书分歧见分歧 11) | ✗ On the one hand the CNN was fast; on the other hand the transformer was accurate. → ✓ The CNN was faster, whereas the transformer was more accurate. |
| W16 | 拼写与英美变体混用 | `analyse` 与 `analyze` 同篇出现 | 按目标期刊统一;期刊未知默认美式,期刊要求英式时整篇改英式 | ✗ analysed ... analyzed → ✓ analyzed ... analyzed |

## 英文模板与短语

**替换模糊介词的关系词**(E2)
- associated with / bound to / derived from
- affecting / that affects;containing / comprising / characterized by
- resulting in / leading to;between A and B(可区分实体)
- 例:Features derived from the tumor region were compared with those derived from healthy tissue.

**指代替换**(E3 / W1 / W2;代替 it / they / which)
- this finding / these observations / this approach / this increase / this discrepancy
- the former / the latter(仅两项);thereby + -ing / thus + -ing(替代表结果的 which)

**平行与选择**(E15)
- neither X nor Y / both X and Y / X as well as Y / either X or Y;one of X, Y, or Z(三项以上)

**解开名词串**(E13)
- a model that predicts ... / a pipeline for stratifying ... / the risk of ... in patients with ...
- 例:a model that predicts malignancy of lung nodules in patients with a smoking history

目的 → 动作 → 方法(E4)、避险单点(E14)、否定动词化(E16 / E17)与对比连接(E7 / E19)的模板见 `08-verbs-tense-voice.md` 与 `07-paragraph-logic.md`,本文件不重复。

## 常见错误(使用本清单时的误报)

| 误报模式 | 处理 |
|---|---|
| 把形式主语 it(It is essential to / It remains unclear whether)判为 E3 | 合法结构,不报 |
| 把 it is essential / critical / advisable to 判为懒惰动词 | "is + 评价形容词 + to 不定式"允许,不报 |
| 把 Methods 中的固定流程名(segmentation was performed)判为 E9 | Methods 允许名词化流程名;只在 Results / Discussion 核心结论处报 |
| 把 gold standard / bottleneck / state of the art 判为习语 | 领域白名单,经本领域数据库确认通用即可用 |
| 把 between 后接三个可区分实体判为 W5 | between 不限于两个;可区分即合法 |
| 把"未做 A 而做了 B"的 did not 判为需改 yielded no | 表转折对比的 did not 保留 |
| 把领域公认缩写术语(CT lung nodule dataset)判为 E13 | 有公认缩写或引用的固定术语保留 |
| 把 Methods 的被动句判为 W14 | Methods 默认被动;只要有定位词即合法 |
| 把 CS / 社科引言末的研究问题列表判为问号句错误 | 按目标期刊惯例,可保留 |
| 把 Results 中"主动 + 过去时"的 we performed 判为不客观 | 合法,且是鼓励写法 |
| 把 strongly suggest 判为 E14 | 副词强化单一动词不算叠加;believe + may + suggest 才是 |
| 把 Discussion 中已写条件的 can generalize 判为 E20 | 条件已写明的普适推断允许 |
| 把所指唯一的 it / they(The model ... It reached 0.91)判为 E3 | 所指唯一即合法;只报指整句或 ≥ 2 候选名词的情形 |
| 把 compared with / associated with / consistent with 计入 E2 的 with 计数 | 动词固定搭配不计 |
| 把单个 ", which" 非限定从句或单个 ", but" 并列句判为 E10 | 只报一句内 ≥ 2 个逗号连接;", which" 所指唯一时按 W2 裁决,可保留 |
| 把 "In this study, we ..." / "In addition, ..." / "In contrast to X, ..." 判为 W7 | 定位词与连接短语在白名单,不报 |
| 把 "Interestingly, ..." / "Notably, ..." / "However, ..." 判为 W9 | 句子副词允许句首;W9 只报方式 / 时间副词 |
| 把 "As shown in Fig. 2, ..." 判为 E21 | 固定指示语,不报 |
| 把 a total of / in terms of / the number of 计入 of 计数 | 固定量词短语与专名(University of)不计 |
| `patients with diabetes` / `patients with T2DM`(疾病名作 with 的宾语) | E2 固定医学搭配,不报 |
| `Using X, we ...`(句首 -ing 短语后紧跟明确主语 we / the model) | W8 施动者唯一,不报 |

## 自检清单

1. E1–E23 已逐句扫描,全部清零或已改。✓/✗
2. W1–W16 已逐句扫描,每条保留项都写了保留理由。✓/✗
3. 全文无 there be 起句、无动词缩写、无 etc.。✓/✗
4. 一句内 with ≤ 2(固定搭配不计)、of ≤ 2(固定量词短语与专名不计)、目的 to ≤ 1。✓/✗
5. it / they / which 所指唯一(另见 `09-academic-style.md` 规则 4);this / these 后有名词。✓/✗
6. 汇报动词接 that 从句,接名词短语时宾语是具体可测对象;名词化已还原为动词(Methods 流程名除外)。✓/✗
7. 每个结论句只有一个避险词。✓/✗
8. 无 can 描述已观察事实;表过去发生的事的 could 已改 was able to,表推断的 could 已确认无歧义。✓/✗
9. 无句首 And / But / So;无 meanwhile / nowadays / in a word。✓/✗
10. 主谓一致已按中心词逐个核对。✓/✗
11. 同一概念全文一个词;图表引用统一动词。✓/✗
12. 连续 ≥ 4 名词的串已解开或确认为公认术语。✓/✗
13. 平行结构用 neither ... nor / both ... and / either ... or / one of 正确表达。✓/✗
14. 主题化开头与悬垂修饰语已并入主句或补主语(白名单内的定位词、连接短语、指示语除外)。✓/✗
15. among / between、respectively、comprise / include、连字符、for the first time 已核对。✓/✗
16. 报告格式:作为独立扫描任务时用"位置 / 原句 / 条目号 / 级别 / 改法";并入 `SKILL.md` 自检时只列命中项与保留的 warning 及理由,全绿写一句"10 号清单无命中";新起草文本无"原句"列,写"位置 / 句子 / 条目号 / 级别 / 改法"。✓/✗
17. 「待作者确认」项:提交前已请至少一位合著者或同事通读;agent 不判 ✗,原样列出交作者。

## 两书分歧的处理

裁决与理由见仓库 `docs/decisions/two-book-divergences.md` 对应小节;本文件正文已按裁决写定,执行时不必回看。
