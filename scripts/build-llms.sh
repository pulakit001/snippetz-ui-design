#!/bin/sh
# Regenerates llms-full.txt from SKILL.md and references/ so the single-fetch
# bundle always matches the individual files. Run after any content edit.
set -eu
cd "$(dirname "$0")/.."

OUT=llms-full.txt
BASE_URL="https://raw.githubusercontent.com/pulakit001/snippetz-ui-design/main"

{
    echo "# Snippetz Labs — Product UI Design Skill (full reference bundle)"
    echo
    echo "This file bundles SKILL.md and every reference document into a single fetch"
    echo "for AI agents. It is generated from the individual files; regenerate it with"
    echo "'scripts/build-llms.sh' after editing any source document."
    echo
    echo "Useful URLs:"
    echo "- Index with per-file summaries: ${BASE_URL}/llms.txt"
    for f in SKILL.md references/visual-language.md references/pattern-library.md \
             references/anti-patterns.md references/implementation-playbook.md \
             references/quality-gate.md references/prompt-recipes.md; do
        echo "- ${BASE_URL}/$f"
    done
    for f in SKILL.md references/visual-language.md references/pattern-library.md \
             references/anti-patterns.md references/implementation-playbook.md \
             references/quality-gate.md references/prompt-recipes.md; do
        echo
        echo "======================================================================="
        echo "FILE: $f"
        echo "URL:  ${BASE_URL}/$f"
        echo "======================================================================="
        echo
        cat "$f"
        echo
    done
} > "$OUT"

echo "Wrote $OUT"
