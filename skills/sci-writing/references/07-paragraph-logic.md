# 段落逻辑与句间衔接

> 来源:书A 第1单元 1.5.2、1.5.4,第8单元 8.1–8.2;书B 第5章

## 何时读本文件

- 总流程(`00-workflow.md`)进入第 5 步:各节初稿已有,要检查段落是否"读得顺"。
- 审稿意见说 "hard to follow""logic unclear""paragraphs are disconnected",或用户说"感觉像句子堆在一起"。
- 中文稿翻译成英文后,句子各自正确但读不出前后关系(中文的"和、同时、所以"直译成 and / meanwhile / so)。
- 写任何一节前,决定这一段用哪种逻辑模型、首句怎么开、句与句怎么接。

前置约定:

- 段落是给读者的视觉信号:新段 = 换话题。一段一功能、一段一模型;整篇可以混用模型。
- 显式逻辑优先于"语感":非母语作者把句间关系用连接词、重复、this + 概括名词钉在句子上,不算不专业;"清晰"是目标,"优雅"不是。
- 段长与句长的统一口径见 `09-academic-style.md`;本文件只管段内逻辑。

## 结构与规则

### 段落基本约束

1. 每段有且只有一个功能(给背景 / 比较方法 / 报告关键结果 / 解释某一发现等),段内每句都推动该功能;与功能无关的句子删除或另起段。
2. 首句是入口句,预告段落走向;检查方法:只读各段首句能否复述该节脉络。首句不得是要读到段尾才能理解的陈述。
3. 段内信息顺序:已知在前、新信息在句尾;上一句句尾的新信息成为下一句的已知。
4. 不得从很宽泛直接跳到很具体,尤其在小节开头;两句之间的"句号空白"是读者最容易掉链子的地方。

### 四种段落模型

| 模型 | 适用位置 | 步骤 | 合格判据 |
|---|---|---|---|
| General-Specific(G-S) | 摘要开头、引言开头、各节小节开头;反向 S-G 用于摘要结尾、讨论与结论收尾 | 普遍陈述(公认事实 / 定义 / 有出处的关键数据)→ 解释 → 更具体的细节或论据 → 挂到本文对象 | 首句能被"不做本研究的同行"直接认同;S-G 的末句超出本文数据、指向更广领域 |
| Old-to-New | 引言、文献综述 | 早期已知 → 近期前沿 → 本文问题;时间状语打头,引文按年份递进 | 抽出段内年份呈单调递增(仅时间模式;按方法分组时判据见分歧 6);每句主语是上句已出现的信息或其延伸 |
| Problem-Solution(P-S) | 结果、讨论;有时用于摘要中段和引言末段 | 问题句(However / Despite this)→ 方案句(One approach is / We therefore ...)→ 结果或评价 | 能指出问题句与方案句各在哪里;二者之间有一个转折或因果连接词 |
| Process | 方法;结果中的操作性描述 | 按实际顺序 First / Next / Then / Finally 逐步铺陈;方法默认被动 + 过去时 | 步骤动词具体可操作;顺序标记数与步骤数一致;读者按此顺序能复现 |

混用规则:引言与方法、结果的各小节默认 G-S;讨论小节可用 S-G 或 G-S-G;摘要句序见 `05-abstract.md` 九步表,大致对应:步 1–3 = G-S、步 4–6 = P-S、步 7–9 = S-G。

与书A 功能步(moves)的对应:功能步决定"这段写什么、排在哪",模型决定"段内句子怎么排"。引言功能步 1(进入领域)= G-S 开头;功能步 2(研究地图)= Old-to-New;功能步 3(空白)= P-S 的问题句;功能步 4(本文)= P-S 的方案句。结果的"回顾—展示—评论—含义"= P-S 加一句 S-G 收尾。

### 句间承接三件套(外加分号)

| 手段 | 做法 | 规则 |
|---|---|---|
| 重叠重复 | 下一句开头重复上一句结尾的词或概念;被动动词改"过去分词 + 名词"放到下句主语位置(was pretrained → This pretrained network) | 优先手段;不为避免重复而换新名词指同一对象;不用 in which / which 长从句代替 |
| this / these + 概括名词 | this process / this decrease / these findings / this discrepancy | 裸 This / These 开头视为错误;It / They 须所指唯一(唯一口径见 `09-academic-style.md` 规则 4);概括名词与首次出现时的名词一致(说了 a device 就写 this device) |
| 信号词 | However / Therefore / In addition 等直接告诉读者本句功能 | 先定关系类型再选词;用错比不用更糟;不必每句都用 |
| 分号 | 两句关系极紧且其中一句很短时代替句号 | 合并后重新检查总句长 |

### 连接词密度上限

1. 同一段落中以连接副词起句的句子不超过一半;超过即公式化,改用重叠重复或 this + 名词承接。计数范围:补充 / 让步 / 对比 / 因果 / 解释 / 举例 / 强调 / 总结八类信号词(However / Therefore / Moreover / In addition / In contrast / For example / Notably / In summary 等);顺序标记(First / Next / Finally)与表所有权的定位词(In this study / Here)不计。
2. 不允许连续两句以同一类连接词起句(However ... However ...;Moreover ... Furthermore ...)。豁免:顺序标记允许连续(First, ... Next, ... Finally, ...),不计入密度上限。
3. 每个连接词都必须能归入"补充 / 让步 / 对比 / 因果 / 解释 / 举例 / 强调 / 顺序 / 总结 / 转题"十类之一;归不进去的删除。转题类(Regarding X, / With respect to X, / Turning to X,)只在小节内换对象时用,是否保留按 `10-chinese-author-pitfalls.md` W7 裁决。
4. 信号词自带约束语义:Moreover / Furthermore 要求本句与上句功能相同(都是理由、都是例子);Therefore / Consequently 之后必须是读者能看出因果的结果,因果链只在作者脑中时先补信息;For example 之前必须有被举例的概括语;In other words 必须真是同义改述。
5. 转折与评价信号(However / Unfortunately / Interestingly)放句首,不放句末;放句末会迫使读者回读整句。

### 易混对裁决

| 易混对 | 区别 | 规则 |
|---|---|---|
| because / as / since | because 只表原因;as 也可表 when,since 也可表 from that time | 三者都允许;as / since 有歧义时改 because(句中)或 Given that(句首);不把 because 一律判错 |
| in contrast / on the contrary / conversely | in contrast 比较两个不同对象;on the contrary 与 conversely 表"恰好相反",用于反驳同一议题上的前述判断 | 一般对比一律 in contrast / in comparison;不得写 on the contrast |
| while / whereas / meanwhile | while 可表 at the same time,有歧义;whereas 只表对比;meanwhile 是时间词 | 学术对比优先 whereas;while 放句首让读者一开始就知道要比较;真正同时发生用 simultaneously;不用 meanwhile |
| however / but | 都可表对比或意外;句首 But 偏口语 | 句首 But 改 However / In contrast / Unexpectedly;要强调"意外"时选 Nevertheless / Unexpectedly |
| moreover / in addition / besides | moreover 要求功能相同;besides 语气更强、偏论辩 | 默认 In addition / Furthermore;besides 正文默认不用,论辩段落可用(见分歧 12) |
| on the other hand | on the one hand ... on the other hand 用于权衡同一议题的两个考虑;两书立场不同(见分歧 11) | 单纯并列两个对象的数据优先 whereas / in contrast;用于权衡时可保留(warning,与 `10-chinese-author-pitfalls.md` W15 同口径) |
| in fact / indeed | 只用于强化前句 | 可删则删;不作句间连接 |
| thus + -ing / which(表结果) | which 指代整句时所指不明 | 表结果优先 ", thus / thereby + -ing";", which" 所指唯一(前只有一个候选名词)时可保留(与 `10-chinese-author-pitfalls.md` W2 同口径);每句最多一个 -ing 从句 |

## 英文模板与短语

**补充 / 递进**(替代句首 and、besides、what's more)
- In addition, ...
- Furthermore, ...
- Moreover, ...(仅当本句与上句功能相同)
- Importantly, ... / Notably, ...
- In addition to X, ...
- 例:In addition, the calibrated model retained its sensitivity on portable radiographs.

**让步 / 转折**(替代句首 but、though)
- However, ...
- Nevertheless, ... / Nonetheless, ...
- Despite this, ... / Despite + 名词
- Although / Even though + 从句
- Unexpectedly, ... / Surprisingly, ...
- 例:Although the two cohorts shared the same inclusion criteria, their age distributions differed markedly.

**对比**(替代 meanwhile、on the contrast)
- Whereas + 从句
- In contrast, ... / In contrast to X, ...
- Unlike X, ...
- Conversely, ...(仅"恰好相反")
- 例:Whereas the CNN missed most sub-centimeter nodules, the transformer detected 84% of them.

**因果 / 结果**(替代 so)
- Therefore, ... / Thus, ... / Hence, ...
- As a result, ... / Consequently, ...
- Because of / Owing to + 名词
- ..., thus + -ing / ..., thereby + -ing
- 例:Label noise inflated the training loss, thereby driving the optimizer toward outliers.

**解释 / 举例 / 强调**
- In other words, ...
- That is, ... / i.e.
- For example, ... / For instance, ...
- Specifically, ... / More specifically, ...
- It is noteworthy that ...(每段 ≤ 1 处,后面必须跟具体内容;口径见 `09-academic-style.md` 规则 7)

**顺序(Process 模型)**
- First, ... / Second, ... / Third, ...
- Next, ...;then / subsequently 进入句中(the masks were then refined / was subsequently fine-tuned),不作句首模板
- Once X had been completed, ...
- Finally, ... / Lastly, ...
- 例:First, scans were resampled to 1 mm isotropic voxels. Next, intensities were clipped to the lung window. Finally, 64-slice volumes were cropped around each candidate.

**总结收束**(替代 all in all、in a word、last but not least)
- In summary, ... / In brief, ...
- Taken together, these results ...
- Together, these observations ...
- In conclusion, ...

**G-S 开头与 S-G 收尾**
- X is a leading cause of ... / X is defined as ...
- Approximately N% of ... [ref]
- Beyond the present cohort, these findings suggest that ...
- More broadly, ... / These results have implications for ...
- 例:Beyond chest radiography, the same vendor effect is likely to affect any imaging model deployed across sites.

**Problem-Solution 骨架**
- However, whether X holds under Y remains open.
- One approach to this problem is to ...
- Two strategies have been proposed: the first ..., the second ...
- We therefore ... / To address this, we ...
- 例:However, no public dataset covers both vendors. We therefore assembled a paired cohort from two hospitals.

**概括性指代**(this / these + 名词)
- This procedure / This step
- This decline / This increase / This shift
- These findings / These observations
- This discrepancy / This limitation
- 例:Recall fell after month six. This decline coincided with a scanner software upgrade.

## 常见错误

| 错误模式 | 修正原则 |
|---|---|
| 一段承担两个功能(既讲背景又报结果) | 拆段;每段一功能一模型 |
| 首句是细节或要读到段尾才懂的陈述 | 首句改为预告段落走向的入口句 |
| 段落从宏观一句跳到具体技术细节 | 补中间层过渡句;每句只比上句具体一步 |
| 引言综述按作者名或按年份罗列,不指向本文 | 选 Old-to-New 或按方法分组;每条文献都通向本文动机 |
| 结果段只有发现,没有问题句或目的句 | 用 P-S:目的/问题 → 发现 → 一句含义 |
| 方法步骤无顺序标记 | 步骤 ≥ 3 时加 First / Next / Finally,标记数与步骤数一致 |
| 每句都以连接副词起头 | 降到一半以下;改用重叠重复或 this + 名词 |
| 用 and 硬连两个无逻辑关系的事实 | 拆句;按作者态度选 Notably / Interestingly / In addition |
| Moreover 引出功能不同的句子 | 换 In addition,或先确认本句与上句同为理由/例子 |
| Therefore 之前没有明示原因 | 先补原因句,再用 Therefore |
| 为避免重复换新名词指同一对象 | 重复同一名词;学术写作鼓励重复 |
| 句首 And / But / So、meanwhile、on the contrary 表一般对比、裸 This / It、which 指代不明、-ing 从句堆叠、转折词放句末、in fact 作连接 | 逐句规则见 `09-academic-style.md` 规则 3、7 与 `10-chinese-author-pitfalls.md` E19 / E7 / E3 / W1 / W2 / W8 / W9,本文件不重复维护 |

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
14. 所有 This / These 后紧跟概括名词;It / They 所指唯一(口径见 `09-academic-style.md` 规则 4)。✓/✗
15. 表结果的关系优先 thus / thereby + -ing,保留的 ", which" 所指唯一;每句最多一个 -ing 从句。✓/✗
16. 同一对象全段用同一名词承接,没有为变化而换词。✓/✗
17. 转折与评价信号词都在句首。✓/✗

## 两书分歧的处理

1. **because 的地位**:书B 第 5 章把 because 列为不恰当表述并建议改 as;书A 与通行用法都接受 because。裁决:because 合法且比 as / since 更无歧义(as 可表 when,since 可表 from that time);句首优先 Given that / Because,不把 because 判错。
2. **in fact / on the contrary 的双重身份**:书B 同章既把二者列为强化类连接词又建议 in fact 直接删。裁决:可删则删;保留时 in fact 只强化前句,on the contrary 只反驳同一议题上的前述判断;不作硬禁。
3. **there be 的处理**:书B 第 5 章说"删除或改写",第 6 章更严;书A 模板偶见 there is a need for。裁决:P-S 骨架中默认用 "X remains open / few solutions exist" 替代;详细规则在 `08-verbs-tense-voice.md`。
4. **连接词密度**:书B 鼓励非母语作者主动多用连接词,书A 的示例更依赖信息流承接。裁决:两者不矛盾——显式逻辑必须有,但载体优先级为"重叠重复 > this + 名词 > 信号词",并设上限"以连接副词起句的句子 ≤ 段内一半"。
5. **一段一模型与功能步**:书A 按功能步拆段,书B 按逻辑模型拆段。裁决:并行使用,对应关系见上文;功能步管内容顺序,模型管句序。
6. **文献综述的组织模式**(01 待对照点):书B 的 Old-to-New 要求年份递增;书A 给出三种模式(一般到具体 / 按方法分组 / 按时间)。裁决:三种都允许;"年份单调递增"只在选了时间模式时作为判据,按方法分组时判据改为"同组文献相邻、组间有一次转折"。
7. **moreover / as / since / while 的歧义**(01 待对照点):书A 强调其约束语义与多义性,书B 只做口语替换。裁决:采书A 的更细规则,见易混对表。
8. **同义替换**(01 待对照点):书A 明确反对为避免重复而换词,书B 第 5 章同样鼓励重复承接。两书一致,采为硬规则。
9. **段长数字**(01 待对照点):书A 给出段 150–170 词、80–230 词区间,书B 未给数字。裁决:采书A,统一口径写在 `09-academic-style.md`,本文件不另立数字。
10. **Results 段以"主动 + 过去时"起句**:书B 第 5 章允许 we performed / we employed 起句;与书A 的时态规则不冲突,采纳;语态细则见 `08-verbs-tense-voice.md`。
11. **on the other hand 的适用对象**:书B 第 8 章限定为"同一对象的两个相反特征";书A 第 1 单元把 on the other hand 与 whereas / in contrast 并列为对比信号词,例句即比较两个不同对象。裁决:不作硬禁;口径为"on the one hand ... on the other hand 用于权衡同一议题的两个考虑,单纯并列两个对象的数据优先 whereas / in contrast",列 warning(`10-chinese-author-pitfalls.md` W15)。
12. **besides 的地位**:书A 视为语气更强、宜用于说服性语境的正规信号词;书B 归为口语连接词。裁决:正文默认不用,论辩段落(讨论中反驳某一解释)可用;句首 Besides 仍按 `10-chinese-author-pitfalls.md` E19 报。
