import os
import re


IGNORELIST = {
    '.git',
    '.gitignore',
    'files',
    'libraries',
    'README.md',
    'COMPLETED',
    'TODO',
    'completed.py',
}

PROBLEM_REGEX = re.compile(r'.*?(\d+).*?')


def collect_problems(lang_dir):
    problems = set()
    with os.scandir(lang_dir) as it:
        for entry in it:
            name = str(entry.name)
            m = PROBLEM_REGEX.search(name)
            try:
                problems.add(int(m.group(1)))
            except (AttributeError, ValueError):
                continue
    return problems


def main():
    completed = {}
    languages = set()
    with os.scandir('.') as it:
        for entry in it:
            name = str(entry.name)
            if name in IGNORELIST:
                continue
            languages.add(name)
            for p in collect_problems(entry.path):
                if p not in completed:
                    completed[p] = []
                completed[p].append(name)

    with open('COMPLETED', 'w') as f:
        for p in sorted(completed.keys()):
            langs = ', '.join(sorted(completed[p]))
            f.write(f'{p:03d}: {langs}\n')

        f.write(f'\nTotal: {len(completed)} problems in {len(languages)} languages.')


if __name__ == '__main__':
    main()