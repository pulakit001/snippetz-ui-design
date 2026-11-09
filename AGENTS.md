# AGENTS.md

Operating instructions for AI agents (coding or conversational) that use this repository.

## What this repository is

This is the **Snippetz Labs UI/UX design system**, packaged as an agent skill. It exists to make agents design better product interfaces: marketing sites, web apps, dashboards, workspaces, monitoring tools, and AI-native products.

Key facts:

- The repo root is the skill root: [`SKILL.md`](SKILL.md) plus a `references/` directory with six documents. The layout must remain exactly like this, because installed skill copies and external `llms.txt`-style indexes link to these paths.
- [`llms.txt`](llms.txt) is the machine-readable index of every document with absolute raw URLs.
- [`llms-full.txt`](llms-full.txt) bundles all documents for a single-fetch workflow. It is generated — edit the sources, then run `scripts/build-llms.sh`.

## If your task is to design or change a UI

1. Read [`SKILL.md`](SKILL.md) fully first. It contains the philosophy, the four product skins (Obsidian, Botanical, Atmospheric, Hybrid), default design tokens, and the 8-step task workflow.
2. Read [`references/anti-patterns.md`](references/anti-patterns.md) before designing a full page; it is a required review, not an optional extra.
3. Read [`references/visual-language.md`](references/visual-language.md), [`references/pattern-library.md`](references/pattern-library.md), and [`references/implementation-playbook.md`](references/implementation-playbook.md) on demand — when defining a theme, composing a page, or building in a real codebase respectively.
4. Before calling the task done, check [`references/quality-gate.md`](references/quality-gate.md) and re-run the anti-patterns audit.

## Non-negotiable rules (summary)

- Inspect the existing project before changing it; preserve working behavior, conventions, and dependencies.
- Choose a product skin deliberately; do not default to dark mode or any other habit.
- Use semantic design tokens; prefer the project's existing token system over a competing new one.
- Never fabricate credibility: no invented users, logos, testimonials, metrics, badges, integrations, or people. Label sample data as sample data.
- Every visible control must actually work; design loading, empty, error, success, disabled, and focus states.
- Do not ship pill-shaped chips, badges, or tags; icon-plus-label status capsules; toy bevel or inner-shadow buttons; or bouncing-dot loaders. Icons must be distinctive rather than the default generated-app slate, earn their placement, and stay out of reading text. Required sample-data labels are plain typographic annotations, never stamps.
- Design mobile deliberately, not as a stacked desktop page; never remove accessibility to look good.
- Do not force clichés from the anti-patterns list, and do not force novelty for its own sake. Every pattern must either serve a product-specific reason or go.

## Editing this repository

- Keep `SKILL.md` and `references/` untouched except for deliberate content improvements; their relative links must keep working.
- After changing any source document, run `./scripts/build-llms.sh` so `llms-full.txt` stays in sync.
- Keep document titles, section numbering, and the overall tone consistent with the existing files.
