#!/usr/bin/env python3
"""检查公开文本中不应发布的本机路径与凭证痕迹。"""

from __future__ import annotations

import argparse
import re
import sys
from pathlib import Path
from typing import Iterable


TEXT_SUFFIXES = {".md", ".sh", ".py", ".json", ".yml", ".yaml"}
RULES = (
    ("Unix 本机绝对路径", re.compile(r"(?<![\w.-])/(?:Users|home)/[^/\s]+(?:/[^\s]*)?")),
    ("Windows 本机绝对路径", re.compile(r"(?i)\b[A-Z]:\\+Users\\+[^\\\s]+(?:\\+[^\s]*)?")),
    ("UNC 网络路径", re.compile(r"\\\\[^\\\s]+\\+[^\\\s]+")),
    # 常见凭证：OpenAI、GitHub、Slack、AWS access key ID、Stripe secret key 与私钥标记。
    ("OpenAI API 密钥", re.compile(r"\bsk-[A-Za-z0-9_-]{20,}\b")),
    ("GitHub 访问令牌", re.compile(r"\b(?:ghp_[A-Za-z0-9]{20,}|github_pat_[A-Za-z0-9_]{20,})\b")),
    ("Slack 访问令牌", re.compile(r"\bxoxb-[0-9]{6,}-[0-9]{6,}-[A-Za-z0-9-]{20,}\b")),
    ("AWS 访问密钥 ID", re.compile(r"\b(?:AKIA|ASIA)[0-9A-Z]{16}\b")),
    ("Stripe 密钥", re.compile(r"\bsk_live_[A-Za-z0-9]{16,}\b")),
    ("私钥标记", re.compile(r"-----BEGIN (?:[A-Z0-9 ]+ )?PRIVATE KEY-----")),
)


def public_text_files(paths: Iterable[Path]) -> Iterable[Path]:
    """迭代待扫描文本；不跟随符号链接，也不进入排除目录。"""
    for path in paths:
        if path.is_symlink() or path.name in {".git", "sources"}:
            continue
        if path.is_file():
            if path.suffix.lower() in TEXT_SUFFIXES:
                yield path
            continue
        if not path.is_dir():
            continue
        for child in path.rglob("*"):
            if child.is_symlink() or any(parent.name in {".git", "sources"} for parent in child.parents):
                continue
            if child.is_file() and child.suffix.lower() in TEXT_SUFFIXES:
                yield child


def scan_file(path: Path) -> bool:
    """输出 path:line 格式的风险类别；从不输出命中的敏感原文。"""
    found = False
    try:
        lines = path.read_text(encoding="utf-8", errors="replace").splitlines()
    except OSError as error:
        print(f"{path}: 读取失败: {error}", file=sys.stderr)
        return True

    for line_number, line in enumerate(lines, start=1):
        for category, pattern in RULES:
            if pattern.search(line):
                print(f"{path}:{line_number}: 发现公开隐私风险: {category}")
                found = True
    return found


def main(argv: list[str] | None = None) -> int:
    parser = argparse.ArgumentParser(description="扫描公开文本中的隐私风险")
    parser.add_argument("paths", nargs="+", type=Path, help="待扫描文件或目录")
    args = parser.parse_args(argv)

    found = False
    for path in public_text_files(args.paths):
        found = scan_file(path) or found
    return 1 if found else 0


if __name__ == "__main__":
    raise SystemExit(main())
