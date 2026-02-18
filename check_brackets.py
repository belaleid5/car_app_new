
import sys

def check_brackets(filename):
    with open(filename, 'r', encoding='utf-8') as f:
        content = f.read()

    stack = []
    lines = content.splitlines()
    for i, line in enumerate(lines):
        for j, char in enumerate(line):
            if char in '({[':
                stack.append((char, i + 1, j + 1))
            elif char in ')}]':
                if not stack:
                    print(f"Error: Unexpected closing '{char}' at line {i + 1}, col {j + 1}")
                    return
                last_open, last_line, last_col = stack.pop()
                expected = {'(': ')', '{': '}', '[': ']'}[last_open]
                if char != expected:
                    print(f"Error: Expected '{expected}' but found '{char}' at line {i + 1}, col {j + 1}. Opened at line {last_line}, col {last_col}")
                    return

    if stack:
        last_open, last_line, last_col = stack[-1]
        expected = {'(': ')', '{': '}', '[': ']'}[last_open]
        print(f"Error: Unclosed '{last_open}' at line {last_line}, col {last_col}. Expected '{expected}'")
    else:
        print("Brackets are balanced.")

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Usage: python check_brackets.py <filename>")
    else:
        check_brackets(sys.argv[1])
