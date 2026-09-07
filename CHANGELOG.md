# CHANGELOG

## 2026-09-06

- 建库:仓库骨架、`.gitignore`(PDF 与 `sources/` 不入库)、`AGENTS.md` 规则、实施计划。
- 脚本:`extract_text.sh`(书A 逐页抽文字、书B 逐页渲染图片)、`check_overlap.py`(12 词连续重合检查,含全角英文归一化)、`verify.sh` 完整版。
- 读书笔记:书A 9 份(前言引言 + 8 单元)、书B 11 份(10 章 + 附录),均通过重合检查。
- skill:`SKILL.md` 路由与硬规则 + 13 个 reference 文件(00–12),两书分歧已逐条裁决并记录在各文件末节。
- 测试样例:`samples/methods-draft-zh.md`、`expected-points-methods.md`。
- 实测:用中文方法段草稿走完 SKILL.md 全流程,评审要点 10/10 覆盖(`samples/test-grading-2026-09-06.md`);按测试代理 9 条反馈回写 SKILL.md(不编造优先级、引用占位界线、拼写口径、直接产出不阻塞、自检与衔接提示格式)与 00/02/08/11 号文件(02 新增数据驱动研究功能步与统计分析小节)。
- 分批审阅:4 个只读审阅代理按批出报告(`docs/reviews/2026-09-06-review-R1..R4.md`,blocker 15 / major 46 / minor 78),跨文件冲突统一裁决为 16 条(`docs/reviews/2026-09-06-decisions.md`),4 个修复代理按文件所有权落实全部 blocker 与 major。要点:步骤编号以 00 为准;句长段长唯一数字源 09;确定性阶梯以 03 为母表、could 归中档;每句一个避险成分;结果节只与本文预测比较;局限性位置链式规则写入 02/03/04;伦理批准日期按前瞻/回顾区分;机检抓不到的三处"整表沿用原书结构"(频率十级表、五句梯度、情态动词六功能表)已重组或删除,10 号易混词表缩减并补书外条目;全部英文统一美式拼写与 ASCII。
- 复测:审阅修复后重跑 Methods 实测,评审要点 10/10(`samples/test-grading-2026-09-06-retest.md`);按复测代理 10 条反馈微调 SKILL.md、00、02、08。
- 回归集扩充:新增引言、摘要、审稿回复三份样例与评审要点(`samples/README.md` 为索引;`expected-points.md` 改名 `expected-points-methods.md`)。首测 Introduction 10/10、Abstract 9/11、Response 8/10;4 处 ✗ 均为规则缝隙(05 篇幅口径不一致与缺"不以局限收尾"、12 对信件缺修改句来源与汇总格式),连同 32 条代理反馈回写 SKILL.md、00、01、05、08、09、10、12;复测 Abstract 11/11、Response 10/10。
- README 重写安装章节:marketplace 安装(新增 `.claude-plugin/marketplace.json`,本机已验证 `marketplace add` 可识别)、拷目录/软链接(Claude Code 用户级、项目级、Codex)、其它 agent 手动加载;补验证安装方法与用法概览。
- 一行安装:README 安装章节改为 `npx skills add Zenine/SCI-Writingskill -g -y`(已验证能从仓库发现 skill)、`curl ... scripts/install.sh | bash`(新增脚本,支持拷贝/软链接、TARGET/DEST/REF,临时 HOME 下实测两种模式)、marketplace 一行版、对 agent 说一句;手动安装下沉为备选。

## 2026-09-07

- skill 工程审阅(writing-skills / 官方规范口径)与两项后续:
  - RED 基线:四个样例用不加载 skill 的裸代理跑一遍,同一评审要点打分 8/10、7/10、8/11、6/10;skill 侧 10/10、10/10、11/11、10/10。增量全部落在不编造/不越权、篇幅与收尾、引用占位说明、自检输出,语言能力类要点裸代理本来就过。见 `tests/regression/baseline-delta-2026-09-07.md`。
  - 减重:13 个 reference 的「两书分歧的处理」整节抽到 `docs/decisions/two-book-divergences.md`(约 14 KB),reference 只留一行指针;句长段长口径表拆成 `references/09a-metrics-table.md`(28 行),01/05/12 的指针改指它;测试输出与判定从 `samples/` 挪到 `tests/regression/`,随 skill 分发的 samples 从 ~140 KB 降到 40 KB。references 总量 242 KB → 216 KB,单节任务加载约 124 KB → 99 KB。
- 基线补跑至 5 次/样例(共 16 个裸代理):Methods 8/10 ×5、Introduction 7/10 ×5、Abstract 8/7/8/7/7 /11、Response 6/6/6/7/7 /10,失败点高度一致(领域惯例当事实写进正文、引用只给编号、摘要超 60% 且以局限收尾、回复信签名位置与承诺句、无自检);时态/语态/数字/术语类要点 5/5 通过。结论与减重指引写入 `tests/regression/baseline-delta-2026-09-07.md`。
- SKILL.md description 补英文触发句(571 字符,仍远低于 1024 上限)。
- reference 互指上提:14 个 reference 中"执行必读"的跨文件指针 5 处内联(06 二级标题规则、03 三档口径、08 can 合法情形、09 形式主语例外)、7 处上提到 SKILL.md 路由表「再读」列,其余 64 处统一改为"另见"或删除;每个 reference「何时读本文件」加一句"必读范围以 SKILL.md 路由表为准";10 与 09a 改为路由表下总则(每次都读)。各文件只增 1 行。
- 第二轮减重(按基线增量指引,规则见 `docs/reviews/2026-09-07-slimming-round2-rules.md`):三个代理按文件所有权压缩裸代理 5/5 已过的护栏细则,增值规则逐字冻结;references 2,609 → 2,032 行、216 KB → 188 KB,Methods 任务加载约 91 KB。四份回归 10/10、10/10、10/11、10/10(`tests/regression/test-grading-2026-09-07-r2.md`);顺带修 05 细则 13 截断、10 误报表两条白名单。
- 清理两轮回归代理反馈的小缝隙:SKILL.md(09 何时算“需”、再读文件自检范围、引言路由对 11 括注小节);10 W11 comprise/include 默认译 include;11/02 豁免依据最小合格写法;09a 加“叠加判据”行与两项固定搭配豁免;08 引言 develop/developed 口径;09 规则 10 对统计量与位置括号豁免;12 修改位置到节号即合格、语言编辑意见不另致谢、150 词不含摘述与占位;05 细则 5 背景材料极少时的取舍。
- 缝隙修复后 Abstract 回归 11/11(`tests/regression/test-grading-2026-09-07-abstract-r3.md`),60% 取舍新口径生效;顺带把 05 句数上限放宽为 8–12 句、09a 的 and 豁免补两项对比对象。
- 新增 `README.en.md`(英文版,含安装、用法、结构、来源与版权口径);中文 README 顶部加链接并同步样例数、09a、docs/decisions 与 tests/regression 说明。
- 回归集补齐 Results / Discussion / Title 三份样例与评审要点(七份样例全覆盖);skill 首测 10/10、10/10、10/10,同输入裸代理 7/10、4/10、5/10(`tests/regression/test-grading-2026-09-07-set2.md`、`baseline-delta` 第三节)。08 总表“suggest / indicate + may / could”字面双避险改为二选一。
- 清掉第二组回归反馈的 6 条微调:09 结果节不用情绪副词;09a 加结论词数行;SKILL.md 硬规则 4 单节写作时已在 Methods 提及的算法不再占位;03 加 CI 分隔符口径;06 无样本时一行声明、结果方向未知时占位标 N/A;04 自检 10 加 N/A 出口。
- 微调后 Results 回归 10/10(`tests/regression/test-grading-2026-09-07-results-r2.md`)。发现"情绪副词"规则放在 09 对 Results 路由不生效,补进 03 常见错误表;另修 03 模板 was→reached、03 细则 13 三选一、of 计数豁免 n of N、SKILL.md 硬规则 4 命名统计检验占位、09a 统计表达式计词。
- 两书三条悬决项由用户拍板(2026-09-07):引言默认不预告主要结果(期刊惯例明确时加一句无数字);方法理由维持"非显而易见才需、不补造";谨慎副词一律删。已写入 `docs/decisions/two-book-divergences.md` 与 01/02 正文,TODO 该项关闭。
