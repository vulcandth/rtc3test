import re
import pathlib

def process(text):
    # Update macro syntax: "name: MACRO" -> "MACRO name"
    text = re.sub(r'^(\s*)([A-Za-z_][A-Za-z0-9_]*)\s*:\s*MACRO', r'\1MACRO \2', text, flags=re.MULTILINE)
    lines = []
    for line in text.splitlines():
        m = re.match(r'^(\s*)(?!DEF\b)([A-Za-z_][A-Za-z0-9_]*)\s+EQU\b', line)
        if m:
            indent = m.group(1)
            rest = line[len(indent):]
            line = indent + 'DEF ' + rest
        lines.append(line)
    return '\n'.join(lines) + ('\n' if text.endswith('\n') else '')

for path in pathlib.Path('src').glob('*.asm'):
    content = path.read_text()
    new_content = process(content)
    if content != new_content:
        path.write_text(new_content)
        print('Updated', path)
