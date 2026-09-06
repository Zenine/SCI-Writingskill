# samples:回归测试集

每份样例 = 一个中文输入(或审稿意见)+ 一份评审要点。四份样例属同一篇论文(2 型糖尿病 90 天再入院 XGBoost 预测),可单独跑也可连起来跑。

| 输入 | 评审要点 | 考核的 reference |
|---|---|---|
| `methods-draft-zh.md` | `expected-points-methods.md` | 00、02、08、11 |
| `introduction-draft-zh.md` | `expected-points-introduction.md` | 00、01、07、08、11 |
| `abstract-draft-zh.md` | `expected-points-abstract.md` | 05、06、08 |
| `reviewer-comments.md` | `expected-points-response.md` | 12、08、09 |

跑法:起一个只读 `skills/sci-writing/`(不读 expected-points-*、test-* 与仓库其它文件)的子代理,按 SKILL.md 处理输入,输出写到 `test-output-YYYY-MM-DD-<节>.md`;主会话对照评审要点逐条判定写 `test-grading-YYYY-MM-DD-<节>.md`,✗ 项回写对应 reference。

历史:2026-09-06 四份样例全部实测;Methods 两次 10/10,Introduction 10/10,Abstract 9/11 → 复测 11/11,Response 8/10 → 复测 10/10,判定见各 test-grading-*.md。
