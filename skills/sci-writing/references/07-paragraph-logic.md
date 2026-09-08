# 段落逻辑与句间衔接

## 何时读本文件

- 总流程(`00-workflow.md`)进入第 5 步:各节初稿已有,要检查段落是否"读得顺"。
- 审稿意见说 "hard to follow""logic unclear""paragraphs are disconnected",或用户说"感觉像句子堆在一起"。
- 中文稿翻译成英文后,句子各自正确但读不出前后关系(中文的"和、同时、所以"直译成 and / meanwhile / so)。
- 写任何一节前,决定这一段用哪种逻辑模型、首句怎么开、句与句怎么接。
- 本文件提到的其它 reference 只是出处指引;执行时以 SKILL.md 路由表的「先读 / 再读」为必读范围。

前置约定:新段 = 换话题,一段一功能、一段一模型,整篇可混用模型;显式逻辑(连接词、重复、this + 概括名词)优先于"语感",清晰是目标、优雅不是;段长与句长的数字见 `09a-metrics-table.md`,本文件只管段内逻辑。

## 结构与规则

### 段落基本约束

1. 每段有且只有一个功能,段内每句都推动该功能;无关句删除或另起段。
2. 首句是入口句,预告段落走向;检查方法:只读各段首句能否复述该节脉络。
3. 已知信息在前、新信息在句尾;上一句句尾的新信息成为下一句的已知。
4. 不得从很宽泛直接跳到很具体,尤其在小节开头;每句只比上句具体一步。

### 四种段落模型

| 模型 | 适用位置 | 步骤 | 合格判据 | 例(首句 → 承接) |
|---|---|---|---|---|
| General-Specific(G-S) | 摘要、引言、各小节开头;反向 S-G 用于摘要结尾、讨论与结论收尾 | 普遍陈述(公认事实 / 定义 / 有出处的数据)→ 解释 → 更具体的论据 → 挂到本文对象 | 首句能被"不做本研究的同行"直接认同;S-G 的末句超出本文数据、指向更广领域 | Lung cancer remains the leading cause of cancer death [ref]. → Early detection on CT ... |
| Old-to-New | 引言、文献综述 | 早期已知 → 近期前沿 → 本文问题;时间状语打头,引文按年份递进 | 时间模式下段内年份单调递增;按方法分组时以方法逻辑组织。每句主语是上句已出现的信息或其延伸 | Early CAD systems relied on hand-crafted features [2005]. → Deep networks later replaced ... [2017]. |
| Problem-Solution(P-S) | 结果、讨论;摘要中段、引言末段 | 问题句(However / Despite this)→ 方案句(One approach is / We therefore ...)→ 结果或评价 | 能指出问题句与方案句各在哪里;二者之间有转折或因果连接词 | However, no public dataset covers both vendors. → We therefore assembled a paired cohort from two hospitals. |
| Process | 方法;结果中的操作性描述 | 按实际顺序 First / Next / Then / Finally 铺陈;默认被动 + 过去时 | 步骤动词具体可操作;顺序标记数与步骤数一致 | First, scans were resampled to 1 mm. Next, intensities were clipped. Finally, volumes were cropped. |

与功能步的对应:功能步决定"这段写什么、排在哪",模型决定"段内句子怎么排"。引言功能步 1 = G-S 开头,功能步 2 = Old-to-New,功能步 3 = P-S 问题句,功能步 4 = P-S 方案句;结果的"回顾—展示—评论—含义" = P-S 加一句 S-G 收尾;摘要九步(`05-abstract.md`)大致为步 1–3 G-S、步 4–6 P-S、步 7–9 S-G。

### 句间承接三件套(外加分号)

| 手段 | 做法 | 规则 |
|---|---|---|
| 重叠重复 | 下一句开头重复上一句结尾的词或概念;被动动词改"过去分词 + 名词"放到下句主语位置(was pretrained → This pretrained network) | 优先手段;不为避免重复而换新名词指同一对象;不用 in which / which 长从句代替 |
| this / these + 概括名词 | this process / this decrease / these findings / this discrepancy | 裸 This / These 开头视为错误;It / They 须所指唯一(形式主语 it 除外;另见 `09-academic-style.md` 规则 4);概括名词与首次出现时的名词一致 |
| 信号词 | However / Therefore / In addition 等直接告诉读者本句功能 | 先定关系类型再选词;用错比不用更糟;不必每句都用 |
| 分号 | 两句关系极紧且其中一句很短时代替句号 | 合并后重新检查总句长 |

### 连接词密度与约束语义

1. 同一段以连接副词起句的句子不超过一半,超过即改用重叠重复或 this + 名词;不允许连续两句以同类连接词起句(However ... However ...)。计数范围为补充 / 让步 / 对比 / 因果 / 解释 / 举例 / 强调 / 总结八类;顺序标记(First / Next / Finally)与定位词(In this study / Here)不计、允许连续。
2. 每个连接词都必须能归入"补充 / 让步 / 对比 / 因果 / 解释 / 举例 / 强调 / 顺序 / 总结 / 转题"十类之一,归不进去的删除;转题类(Regarding X, / Turning to X,)只在小节内换对象时用(另见 `10-chinese-author-pitfalls.md` W7)。
3. 信号词自带约束:Moreover / Furthermore 要求本句与上句功能相同;Therefore / Consequently 之后必须是读者能看出因果的结果,因果链只在作者脑中时先补信息;For example 之前必须有概括语;In other words 必须真是同义改述。
4. 转折与评价信号(However / Unfortunately / Interestingly)放句首,不放句末。

### 易混对裁决

| 易混对 | 规则 |
|---|---|
| because / as / since | 三者都允许;as / since 有歧义(when / from that time)时改 because(句中)或 Given that(句首) |
| in contrast / on the contrary / conversely | 一般对比一律 in contrast / in comparison;on the contrary 与 conversely 只表"恰好相反",用于反驳同一议题;不得写 on the contrast |
| while / whereas / meanwhile | 学术对比优先 whereas;while 有 at the same time 歧义,用时放句首;真正同时发生用 simultaneously;不用 meanwhile |
| however / but | 句首 But 改 However / In contrast;强调"意外"选 Nevertheless / Unexpectedly |
| moreover / in addition / besides | 默认 In addition / Furthermore;moreover 要求功能相同;besides 偏论辩,正文默认不用(按本文件规则) |
| on the other hand | 只用于权衡同一议题的两个考虑(warning,另见 `10-chinese-author-pitfalls.md` W15);并列两个对象的数据优先 whereas / in contrast(按本文件规则) |
| in fact / indeed | 只用于强化前句;可删则删,不作句间连接 |
| thus + -ing / which(表结果) | 表结果优先 ", thus / thereby + -ing";", which" 所指唯一时可保留(另见 `10-chinese-author-pitfalls.md` W2);每句最多一个 -ing 从句 |

## 英文模板与短语

**补充 / 递进**(替代句首 and、besides、what's more)
- In addition, ... / In addition to X, ...
- Furthermore, ... / Moreover, ...(Moreover 仅当本句与上句功能相同)
- Importantly, ... / Notably, ...
- 例:In addition, the calibrated model retained its sensitivity on portable radiographs.

**让步 / 转折**(替代句首 but、though)
- However, ... / Nevertheless, ... / Nonetheless, ...
- Despite this, ... / Despite + 名词 / Although + 从句
- Unexpectedly, ... / Surprisingly, ...
- 例:Although the two cohorts shared the same inclusion criteria, their age distributions differed markedly.

**对比**(替代 meanwhile、on the contrast)
- Whereas + 从句 / Unlike X, ...
- In contrast, ... / In contrast to X, ...
- Conversely, ...(仅"恰好相反")
- 例:Whereas the CNN missed most sub-centimeter nodules, the transformer detected 84% of them.

**因果 / 结果**(替代 so)
- Therefore, ... / Thus, ... / Hence, ... / Consequently, ... / As a result, ...
- Because of / Owing to + 名词
- ..., thus + -ing / ..., thereby + -ing
- 例:Label noise inflated the training loss, thereby driving the optimizer toward outliers.

**解释 / 举例 / 强调**
- In other words, ... / That is, ...
- For example, ... / For instance, ... / Specifically, ...
- It is noteworthy that ...(每段 ≤ 1 处,后接具体内容;另见 `09-academic-style.md` 规则 7)

**顺序(Process 模型)与总结收束**
- First, ... / Next, ... / Finally, ...;then / subsequently 进入句中(the masks were then refined),不作句首模板
- Once X had been completed, ...
- In summary, ... / Taken together, these results ... / In conclusion, ...(替代 all in all、in a word、last but not least)

**G-S 开头与 S-G 收尾**
- X is a leading cause of ... / X is defined as ... / Approximately N% of ... [ref]
- Beyond the present cohort, these findings suggest that ... / More broadly, ...
- 例:Beyond chest radiography, the same vendor effect is likely to affect any imaging model deployed across sites.

**Problem-Solution 骨架**
- However, whether X holds under Y remains open.
- One approach to this problem is to ... / Two strategies have been proposed: the first ..., the second ...
- We therefore ... / To address this, we ...

## 常见错误

| 错误模式 | 修正原则 |
|---|---|
| 一段承担两个功能(既讲背景又报结果) | 拆段;每段一功能一模型 |
| 首句是细节,或段落从宏观一句跳到具体技术细节 | 首句改为入口句;补中间层过渡句 |
| 引言综述按作者名或年份罗列,不指向本文 | 选 Old-to-New 或按方法分组;每条文献都通向本文动机 |
| 结果段只有发现,没有问题句或目的句 | 用 P-S:目的/问题 → 发现 → 一句含义 |
| 方法步骤 ≥ 3 无顺序标记 | 加 First / Next / Finally,标记数与步骤数一致 |
| 用 and 硬连两个无逻辑关系的事实 | 拆句;按作者态度选 Notably / Interestingly / In addition |
| 句首 And / But / So、meanwhile、on the contrary 表一般对比、裸 This / It、which 指代不明、-ing 从句堆叠、转折词放句末、in fact 作连接 | 逐句规则另见 `09-academic-style.md` 规则 3、7 与 `10-chinese-author-pitfalls.md` E19 / E7 / E3 / W1 / W2 / W8 / W9,本文件不重复维护 |

## 自检清单

1. 每段只有一个功能,且能用一句功能句说出。✓/✗
2. 每段已标注所用模型(G-S / Old-to-New / P-S / Process),且段内只用一种。✓/✗
3. 只读各段首句能复述本节脉络。✓/✗
4. 每句的主语或开头承接上句已出现的信息;新信息在句尾。✓/✗
5. G-S 段首句能被不做本研究的同行认同;S-G 段末句指向更广领域。✓/✗
6. Old-to-New 段内引文年份单调递增。✓/✗
7. P-S 段能指出问题句与方案句,且二者由转折或因果词相连。✓/✗
8. Process 段步骤 ≥ 3 时有顺序标记,标记数与步骤数一致。✓/✗
9. 每个连接词都能归入十类逻辑关系之一。✓/✗
10. 同一段以连接副词起句的句子不超过一半;无连续两句同类连接词(顺序标记与定位词不计、允许连续)。✓/✗
11. Moreover / Therefore / For example / In other words 各自满足约束语义。✓/✗
12. 句首无 And / But / So / Though;全文无 meanwhile。✓/✗
13. on the contrary 只用于反驳同一议题;on the other hand 只用于权衡两个考虑,并列两个对象的数据已改 whereas / in contrast。✓/✗
14. 所有 This / These 后紧跟概括名词;It / They 所指唯一(另见 `09-academic-style.md` 规则 4)。✓/✗
15. 表结果的关系优先 thus / thereby + -ing,保留的 ", which" 所指唯一;每句最多一个 -ing 从句。✓/✗
16. 同一对象全段用同一名词承接,没有为变化而换词。✓/✗
17. 转折与评价信号词都在句首。✓/✗
