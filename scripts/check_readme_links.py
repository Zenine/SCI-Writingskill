#!/usr/bin/env python3
"""检查 Markdown 内联链接和图片的本地目标是否存在。"""

import re
import sys
from pathlib import Path
from urllib.parse import unquote, urlsplit


FENCE = re.compile(r"^\s{0,3}(`{3,}|~{3,})")
ROOT = Path(__file__).resolve().parent.parent


def in_fenced_code(lines: list[str]):
    """逐行产出不在 Markdown 代码围栏内的行。"""
    opening: str | None = None
    for lineno, line in enumerate(lines, 1):
        match = FENCE.match(line)
        if opening is None:
            if match:
                opening = match.group(1)
            else:
                yield lineno, line
        elif match and match.group(1)[0] == opening[0] and len(match.group(1)) >= len(opening):
            opening = None


def inline_destinations(line: str):
    """提取内联链接的 destination，不处理参考式链接。"""
    index = 0
    while index < len(line):
        start = index + 1 if line[index:index + 2] == "![" else index
        if line[start:start + 1] != "[":
            index += 1
            continue
        label_end, label_depth = start + 1, 1
        while label_end < len(line) and label_depth:
            if line[label_end] == "\\":
                label_end += 2
                continue
            if line[label_end] == "[":
                label_depth += 1
            elif line[label_end] == "]":
                label_depth -= 1
                if not label_depth:
                    break
            label_end += 1
        if label_depth or line[label_end + 1:label_end + 2] != "(":
            index = start + 1
            continue

        depth, end = 1, label_end + 2
        while end < len(line) and depth:
            if line[end] == "\\":
                end += 2
                continue
            if line[end] == "(":
                depth += 1
            elif line[end] == ")":
                depth -= 1
            end += 1
        if depth:
            index = label_end + 1
            continue
        body = line[label_end + 2:end - 1].strip()
        if body.startswith("<") and ">" in body:
            yield body[1:body.index(">")]
        else:
            destination, nested, cursor = [], 0, 0
            while cursor < len(body):
                char = body[cursor]
                if char == "\\" and cursor + 1 < len(body):
                    destination.extend((char, body[cursor + 1]))
                    cursor += 2
                    continue
                if char == "(":
                    nested += 1
                elif char == ")" and nested:
                    nested -= 1
                elif char.isspace() and not nested:
                    break
                destination.append(char)
                cursor += 1
            if destination:
                yield "".join(destination)
        index = end


def local_target(target: str) -> tuple[str, Path | None] | None:
    """返回本地目标状态；外部、邮件与页内锚点返回 None。"""
    if not target or target.startswith("#") or target.startswith("//"):
        return None
    if re.match(r"^[A-Za-z]:[\\/]", target) or target.startswith("\\\\"):
        return "invalid", None
    parsed = urlsplit(target)
    if parsed.scheme and parsed.scheme != "file":
        return None
    path_text = unquote(parsed.path)
    path_text = re.sub(r"\\([\\()])", r"\1", path_text)
    if parsed.scheme == "file" or Path(path_text).is_absolute():
        return "invalid", None
    return "relative", Path(path_text)


def check(path: Path) -> int:
    errors = 0
    if not path.is_file():
        print(f"{path}: 缺失 Markdown 文件", file=sys.stderr)
        return 1
    for lineno, line in in_fenced_code(path.read_text(encoding="utf-8").splitlines()):
        for target in inline_destinations(line):
            local = local_target(target)
            if local is None:
                continue
            status, relative = local
            candidate = (path.parent / relative).resolve() if relative is not None else None
            if status == "invalid" or candidate is None or not candidate.is_relative_to(ROOT):
                print(f"{path}:{lineno}: 非法本地链接: {target}")
                errors += 1
            elif not candidate.exists():
                print(f"{path}:{lineno}: 缺失本地链接: {target}")
                errors += 1
    return errors


def main(argv: list[str]) -> int:
    if not argv:
        print("用法: check_readme_links.py <Markdown 文件>...", file=sys.stderr)
        return 2
    errors = sum(check(Path(arg)) for arg in argv)
    return 1 if errors else 0


if __name__ == "__main__":
    sys.exit(main(sys.argv[1:]))
