# 动词、时态与语态

> 来源:书A 第1–4单元语法节、第8单元 8.3;书B 第6章、附录三与附录十一

## 何时读本文件

- 总流程(`00-workflow.md`)进入第 6 步:段落逻辑已通,要逐句核对时态、语态、动词。
- 审稿意见说 "tense inconsistent""unclear who did what""overclaiming / too many hedges"。
- 用户问"这里该用过去时还是现在时""能不能用 we""can 和 may 有什么区别"。
- 中文稿转英文后,出现大量 there be、名词化、can、of 串、双重 to 不定式。
- 本文件提到的其它 reference 只是出处指引;执行时以 SKILL.md 路由表的「先读 / 再读」为必读范围。

前置约定:

- 时态是事实地位的标记,不是语法习惯:过去时 = 某人某时做过或观察到;现在时 = 学界接受的事实、系统固有行为、图表内容;现在完成时 = 跨越到现在仍成立的状态或积累。同一信息换时态就换了含义,语法正确不等于意思正确。
- 校对与翻译工具抓不到时态错位;润色或翻译后要重新核对情态动词与程度副词是否被无意加强。
- 目标期刊近 5 年同类文章的用法优先于本文件默认值;领域整篇现在时(数学模型、算法描述)属合法例外,但仍须用定位词标明哪些是本文贡献。

## 结构与规则

### 各节时态 / 语态总表

| 节 | 描述本研究(做了什么 / 发现了什么) | 通用事实 / 系统固有行为 | 指图表 | 他人工作 |
|---|---|---|---|---|
| Abstract | 动作与结果:过去时(we trained / X improved);论文本身与主张:现在时(this study presents / these results suggest);已完成的开发与贡献认领:现在完成时(we have developed)或现在时 | 现在时;带时间短语的重要性声明:现在完成时(has become) | 摘要一般不指图表 | 具体研究:过去时;领域积累或空白:现在完成时 |
| Introduction | 本文做什么:现在时(we propose / this paper presents);研究目的可用过去时(the aim was to),全篇统一 | 现在时;带时间短语的重要性声明:现在完成时(has attracted considerable attention in recent years) | 现在时(Fig. 1 shows the overall architecture) | 某研究当时的发现:过去时;已成公认事实:现在时(常带引文);仍影响现状、引出空白:现在完成时(little attention has been paid) |
| Methods | 过去时;默认无施动者被动 + 定位词(here / in this study);归属易混处切换为 we | 标准流程、设备工作原理、算法固有行为:现在时 | 现在时(the workflow is shown in Fig. 2) | 采用他人方法:过去时;引用已建立的方法可写 as described in [12] / following [12] |
| Results | 本研究的观察:过去时;主动(we observed)或被动皆可,主动优先;段末含义句:现在时 + suggest / indicate + may / could(另见 `03-results.md` 收束层) | 解释结果的背景事实:现在时 | 图中可见的内容:现在时(Fig. 3 shows);数据如何得到:过去时 | 用于比较:过去时或现在完成时 |
| Discussion | 成就 / 贡献:现在时(this study provides);本研究发现:默认过去时;升级为现在时 = 声称它是独立于本研究的事实,需证据够硬且能自圆其说;含义与应用:现在时 + 情态动词 | 现在时 | 应少见;持续出现 as shown in Fig. 是"讨论写成了结果"的信号 | 具体研究:过去时;已被接受的结论:现在时;对文献的概括:现在完成时 |
| Conclusion | 已完成的工作:现在完成时(we have shown)或过去时;贡献与主张:现在时(this study provides) | 现在时 | 不应出现 | 相关背景公认事实:现在时;领域积累:现在完成时 |
| 投稿信 / 回复信 | 已完成的修改:现在完成时(we have revised / has been updated);为回应而重跑的分析:过去时(we re-ran, the tuned model reached);描述修改稿现状:现在时(Section 2.3 now describes);对审稿人观点表态:现在时(we agree) | 现在时 | 指修改稿中的图表位置:现在时(Table 4 now reports) | 审稿人引用的文献:过去时;已成公认事实:现在时 |

未来工作(Discussion 中后段与 Conclusion):should be investigated / would be of interest / will be;不属于"他人工作"列。

### 时态判定四步(逐句执行)

1. 这句说的是"学界接受的事实 / 规律 / 图表内容 / 系统固有行为",还是"某人在某时做过或观察到的事"?前者现在时,后者过去时。
2. 若是"观察",它是否跨越到现在仍成立(has long been viewed / has been limited)?是则现在完成时。
3. 同一段内,凡是"我们做了"的动作不得用现在时;每处时态切换都要能说出前后功能有何不同。
4. 引用前人发现时先查最新文献里该事实的写法:五年前用过去时报告的发现,今天可能已"升级"为现在时的背景事实。

### 语态与主语规则

1. Methods:无施动者被动 + 过去时为默认;句中必须有 here / in this study / in our model 等定位词,让读者分清是本文做的还是他人做的。
2. Methods 以外:主动优先;we 只指作者团队,用于陈述作者的动作或发现。泛指"本领域 / 任何人"不用 we,改 It is known that / It is now possible to。
3. 无施动者被动(it was found / it is suggested)出现时问一句"谁做的";上下文答不出就改主动并补主语;摘要中禁止 It is argued / It is suggested that 起句。
4. 非人称主语第三条路:This paper describes / This study presents / Section 2 reviews;单作者不想用 I 时用这一路。
5. 被动动词不得放在超过 20 词的句子末尾;长主语拆分或改主动。
6. 非人类主语描述本文工作时加 our / here 表明所有权(Our model predicts ...;Modeling here suggests ...)。

### 五类"藏动作"写法清理

| 类型 | 识别信号 | 清理规则 | 例 |
|---|---|---|---|
| there be | 句首 There is / are / was / were | 删掉 there be,让承载动作的名词还原为动词并找回主语 | ✗ There was a marked decrease in false positives after calibration. → ✓ Calibration markedly decreased false positives. |
| 懒惰动词 be / do / have | is / are / has / have / did 作主要动词描述数值、关系、性质 | 换成描述具体关系的动词:range from / contain / constitute / exhibit / achieve / perform;否定式用 fail to / lack / yield no;"is + 评价形容词 + to 不定式"(it is essential to)是合法例外 | ✗ The model has a sensitivity of 0.91 but does not have good specificity. → ✓ The model reached a sensitivity of 0.91 but a specificity of only 0.62. |
| 名词化 | -tion / -ment / -ity / -ness / -ance 名词 + of;一句中 of ≥ 3 | 找出名词里藏的动作,还原为动词并给它主语;Methods 中的固定流程名(segmentation, normalization)保留 | ✗ The evaluation of the robustness of the model was performed through the addition of noise. → ✓ We evaluated model robustness by adding noise. |
| 模糊介词 of / by / with / in / at | 名词 + with / of + 名词,关系(使用?含有?伴随?来自?)靠猜;一句内 with ≥ 3 | 换成表明关系的分词或动词短语:using / containing / characterized by / derived from / located at / provided by;换不出唯一关系就重写 | ✗ A pipeline with three encoders with different resolutions was built. → ✓ We built a pipeline containing three encoders that operate at different resolutions. |
| 双重不定式 | 一句内 ≥ 2 个表目的的 to + 动词 | 只留一个目的 to,顺序为"目的 → 主动动作 → using / by -ing 手段";主语非研究者(基因、蛋白、装置)时不用 to 表目的,改 resulting in / that + 动词 | ✗ To assess drift, a holdout set was used to compare predictions to evaluate calibration. → ✓ To assess drift, we compared predictions on a holdout set and evaluated calibration. |

### 汇报动词接 that 从句

- 指示类(说图表在哪):shown in Fig. 2 / listed in Table 1 / Table 3 summarizes ... ——不接 that。
- 汇报类(交代事实或发现):show / indicate / suggest / confirm / demonstrate / reveal / report ——默认接 that + 完整主谓从句。
- 例外:宾语是具体可测对象时允许接名词短语(showed a 12% increase / revealed two clusters / demonstrated the potential of X for Y);宾语是抽象关系名词(the distinction / relation / importance / possibility / role / association)时读者猜不出"谁怎么样",改 that 从句。
- 例:✗ These results confirm the benefit of pretraining. → ✓ These results confirm that pretraining improves accuracy on small datasets.

### 确定性阶梯与委婉的单点选择

母表另见 `03-results.md` 确定性连续统,本表只引用、不另立档位;一句只在一个杠杆上选一个点,其余杠杆保持中性。

| 杠杆 | 强 | 中 | 弱 |
|---|---|---|---|
| 汇报动词 | demonstrate / show / establish(prove 仅限数学证明) | indicate / suggest / support | (无专属弱档;弱化靠降险短语或引导结构) |
| 降险短语 | 无 | appear to / seem to / tend to | it could be inferred that / there is evidence to suggest that |
| 因果动词 | cause / result in / give rise to | lead to / contribute to / drive | be associated with / correlate with / be related to |
| 时态 | 现在时(独立于本研究的事实) | — | 过去时(仅在本研究中所见) |
| 情态与范围 | 无 | may / could / is likely to;in most cases | might;in some cases;possibly / perhaps / presumably |
| 引导结构 | it is evident that / it may be concluded that | it is likely that / we propose that | it is possible that / we speculate that |

规则:

1. 一个结论句只保留一个避险词;we believe + may + possibly + putative 叠加视为错误。
2. 强度与证据匹配:不为保险一律 may / might;数据支持时升级到 is likely / demonstrate;结论强度不得高于 Results 所支撑的程度。
3. 动词自带强度,通常不再加副词(strongly suggest 可接受,clearly demonstrate 多余)。
4. 同一含义的动作全文用同一个动词(图表引用统一 shows);只在含义确实不同时换词(indicate ≠ demonstrate)。

### 情态动词六功能与 can / could 裁决

| 功能 | 现在 | 过去 | 替代结构(有歧义时优先) |
|---|---|---|---|
| 能力 | can / cannot | could / could not(不确定时 was able to) | be able to / be capable of |
| 可能 | may / might / could(否定只用 may not / might not;cannot 是"不可能") | may have / might have | it is possible that |
| 预期 | should | should have | is expected to / is likely to |
| 显然 / 不可能 | must / cannot | must have / cannot have | it is obvious that / it is impossible that |
| 建议 | should | should have | it is advisable to |
| 必要 | must / need to | had to | it is necessary to |

can / could 裁决:

1. 描述本研究已观察到的事实不用 can / could;用简单过去时加具体数字(detected ... in 92% of cases)。
2. can 只在两种情形合法:列举明确可选项(the model can be run on CPU or GPU);Discussion 中推断普适能力且已写出条件(can generalize to portable radiographs when calibrated)。
3. "X can occur" 有三义(有能力 / 有时 / 可能);有歧义就换 may、is able to 或 sometimes。
4. could 表过去能力时优先 was able to;表假设可能时优先 may / might;could have 默认读作"本可以但没有"。
5. must 只用于推断(说 must be 等于承认无直接证据);有证据就用陈述句。must not = 不允许,"不必"用 need not / do not need to。
6. have to 偏口语,正式写作少用;might / perhaps / presumably 比 may 更不确定,是正规的弱档用法(另见 `03-results.md`)。

## 英文模板与短语

**汇报发现(默认接 that)**
- Our results show that ...
- These findings indicate that ...
- The data suggest that ...
- This analysis confirms that ...
- Previous work demonstrated that ...
- A recent study reported that ...
- 例:These findings indicate that vendor calibration accounts for most of the recovered sensitivity.

**指示图表(不接 that)**
- ... is shown in Fig. 2
- ... are listed in Table 1
- Table 3 summarizes ...
- Fig. 4 presents ...

**替代懒惰动词与短语动词的精确动词**
- obtain / acquire(替代 get)
- perform / conduct(替代 do)
- identify / determine / quantify(替代 find out)
- constitute / comprise / represent(替代 is)
- exhibit / display / achieve(替代 has)
- contain / range from ... to ...
- yield / generate(替代 give)
- retain / maintain(替代 keep)

**否定含义动词(替代 did not + 懒惰动词)**
- failed to detect / failed to reach
- lacked / yielded no
- received little / few
- is inconsistent with / does not support

**目的 → 动作 → 手段(单不定式)**
- To evaluate ..., we measured ... using ...
- To test whether ..., we compared ... by -ing ...
- We achieved ... by -ing ...
- 例:To test whether calibration transfers across sites, we compared sensitivity on a third hospital using the same thresholds.

**替代模糊介词的分词与动词短语**
- using / employing
- containing / comprising
- characterized by
- derived from / obtained from
- located at / positioned at
- provided by / issued by
- combined with / together with

**确定性三档引导结构**
- 强:it is evident that / this provides strong evidence that / it may be concluded that
- 中:this suggests that / it is likely that / we propose that
- 弱:it is possible that / we speculate that / presumably

**"is + 评价形容词"合法结构**
- It is essential / critical / necessary to ...
- It remains unclear whether ...
- It is advisable to ...

## 常见错误

| 错误模式 | 修正原则 |
|---|---|
| 把写论文前做过的步骤写成现在时(We train ... and evaluate ...) | 过去时;只有系统固有行为(The classifier outputs a probability map)用现在时 |
| 把某研究当时的发现写成一般现在时 | 先查最新文献;未成公认事实用过去时 |
| Discussion 用现在时陈述本研究发现却无足够证据 | 回到过去时,或加 in most cases / appear to 软化 |
| Methods 无施动被动没有定位词,读者分不清谁做的 | 加 here / in this study,或改 we |
| we 一会儿指作者一会儿泛指领域 | we 只指作者;泛指改 It is known that |
| 摘要以 It is argued / suggested that 起句 | We argue / suggest that |
| There is / are 起句 | 删 there be,名词还原为动词 |
| has / is / does 描述数值或性质 | achieves / ranges from / exhibits / lacks |
| 名词化 + of 串(the determination of the effect of X on Y) | 还原为动词(we determined how X affects Y) |
| 名词 + with + 名词关系不明 | using / containing / characterized by |
| 一句两个目的 to | 目的 → 主动动作 → using / by -ing |
| indicate / confirm + the + 抽象关系名词(role / importance / association) | + that + 主谓从句;具体可测对象(a 12% increase)可作宾语 |
| 主谓一致跟着最近名词走(The set of images were) | 找中心词(The set ... was) |
| we believe + may + possibly 叠加 | 一句一个避险词 |
| 用 can 描述已观察到的事实 | 简单过去时 + 数字 |
| could 表过去能力却被读作假设 | was able to |
| must 用于有证据的陈述 | 直接陈述句 |
| 悬垂修饰语(With limited data, transfer learning was adopted) | 补主语:Because data were limited, we adopted ... |

## 自检清单

1. 每句已按四步法判定时态,同一段内"我们做了"的动作无现在时。✓/✗
2. 各节时态与总表一致;每处切换能说出功能差异。✓/✗
3. 引用前人发现的时态已按最新文献核对(过去时 / 现在时 / 现在完成时)(离线或无引用时标 N/A)。✓/✗
4. Methods 无施动被动句都有定位词。✓/✗
5. Methods 以外默认主动;每个无主语被动都能回答"谁做的"。✓/✗
6. we 全篇只指作者;摘要无 It is argued / suggested that 起句。✓/✗
7. 全文无 There is / are 起句。✓/✗
8. is / has / does 不作主要动词描述数值、关系、性质(it is essential to 除外)。✓/✗
9. 一句中 of ≤ 2(固定量词短语 a total of / in terms of / the number of、专名 University of、固定术语 area under the ... curve / Department of X of Y 均不计);-tion / -ment / -ity 名词已还原为动词(固定流程名除外)。✓/✗
10. 名词 + with / of / by 结构都能替换为唯一的分词或动词短语。✓/✗
11. 一句只有一个目的 to;非研究者主语不接 to 表目的。✓/✗
12. show / indicate / suggest / confirm / demonstrate 汇报发现时接 that 从句;接名词短语的宾语都是具体可测对象。✓/✗
13. 同一含义全文用同一个动词。✓/✗
14. 每个含后置修饰的主语已核对中心词与动词单复数。✓/✗
15. 每个结论句只有一个避险词,强度与证据匹配。✓/✗
16. prove 只出现在数学证明。✓/✗
17. can / could 只用于列举可选项或已写明条件的普适推断;观察事实用简单时态。✓/✗
18. 句首 As / For / With / By / Based on 短语与主句主语明确对应。✓/✗
19. 润色或翻译后重新核对情态动词与程度副词未被加强。✓/✗

## 两书分歧的处理

裁决与理由见仓库 `docs/decisions/two-book-divergences.md` 对应小节;本文件正文已按裁决写定,执行时不必回看。
