# samples:回归测试集

每份样例 = 一个中文输入(或审稿意见)+ 一份评审要点。四份样例属同一篇论文(2 型糖尿病 90 天再入院 XGBoost 预测),可单独跑也可连起来跑。

| 输入 | 评审要点 | 考核的 reference |
|---|---|---|
| `methods-draft-zh.md` | `expected-points-methods.md` | 00、02、08、11 |
| `introduction-draft-zh.md` | `expected-points-introduction.md` | 00、01、07、08、11 |
| `abstract-draft-zh.md` | `expected-points-abstract.md` | 05、06、08 |
| `reviewer-comments.md` | `expected-points-response.md` | 12、08、09 |

跑法:起一个只读 `skills/sci-writing/`(不读 expected-points-*、test-* 与仓库其它文件)的子代理,按 SKILL.md 处理输入,输出写到仓库 `tests/regression/test-output-YYYY-MM-DD-<节>.md`;主会话对照评审要点逐条判定写 `tests/regression/test-grading-YYYY-MM-DD-<节>.md`,✗ 项回写对应 reference。本目录只放输入与评审要点,随 skill 分发。

历史与基线对照见仓库 `tests/regression/`(2026-09-06 四份样例实测均达满分;2026-09-07 裸代理基线 8/10、7/10、8/11、6/10,增量分析见 `tests/regression/baseline-delta-2026-09-07.md`)。
