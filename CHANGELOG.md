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
