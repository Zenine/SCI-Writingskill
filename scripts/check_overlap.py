#!/usr/bin/env python3
"""检查 notes/ 与 skills/ 中的英文是否与原书文本(sources/text/)有 ≥12 个连续单词的重合。

用法:python3 scripts/check_overlap.py <目录或文件>...
退出码:0 无重合(或无源文本时 SKIPPED);1 有重合。
"""
import re
import sys
import unicodedata
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
SRC = ROOT / "sources" / "text"
N = 12
WORD = re.compile(r"[A-Za-z][A-Za-z'\-]*")


def words(text: str) -> list[str]:
    # 原书英文多为全角字符,先 NFKC 归一化为 ASCII
    return [w.lower() for w in WORD.findall(unicodedata.normalize("NFKC", text))]


def ngrams(ws: list[str]):
    for i in range(len(ws) - N + 1):
        yield tuple(ws[i : i + N])


def main(argv: list[str]) -> int:
    if not SRC.is_dir() or not any(SRC.glob("*.txt")):
        print("SKIPPED: sources/text/ 不存在,跳过重合检查")
        return 0
    corpus = set()
    for f in sorted(SRC.glob("*.txt")):
        corpus.update(ngrams(words(f.read_text(errors="ignore"))))
    targets = []
    for a in argv or ["notes", "skills"]:
        p = ROOT / a if not Path(a).is_absolute() else Path(a)
        if p.is_dir():
            targets += sorted(p.rglob("*.md"))
        elif p.is_file():
            targets.append(p)
    hits = 0
    for f in targets:
        for lineno, line in enumerate(f.read_text(errors="ignore").splitlines(), 1):
            ws = words(line)
            seen = set()
            for g in ngrams(ws):
                if g in corpus and g not in seen:
                    seen.add(g)
                    hits += 1
                    print(f"{f.relative_to(ROOT)}:{lineno}: 与原书重合: {' '.join(g)}")
                    break
    if hits:
        print(f"FAIL: {hits} 处与原书 ≥{N} 词连续重合")
        return 1
    print(f"OK: {len(targets)} 个文件无 ≥{N} 词重合")
    return 0


if __name__ == "__main__":
    sys.exit(main(sys.argv[1:]))
