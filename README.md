# Snippetz Labs — UI Design Skill

A portable, AI-agent–ready product design system: the design DNA behind Snippetz Labs interfaces. It covers design philosophy, per-product visual skins, semantic design tokens, a complete visual-language reference, an adaptable pattern library, a 100-item anti-patterns audit against the generic AI-generated look, a stack-agnostic implementation playbook, and a pre-delivery quality gate.

Everything is plain markdown with stable URLs, structured specifically so an **AI agent can fetch it and reliably understand what the UI/UX system is and how to apply it**.

## Agent quick start

Give an agent one link. It can do the rest:

```text
Index (discover files + summaries):
https://raw.githubusercontent.com/pulakit001/snippetz-ui-design/main/llms.txt

Everything in one fetch (whole skill bundled):
https://raw.githubusercontent.com/pulakit001/snippetz-ui-design/main/llms-full.txt
```

Equivalent `curl` workflow:

```sh
curl -fsSL https://raw.githubusercontent.com/pulakit001/snippetz-ui-design/main/llms.txt        # index
curl -fsSL https://raw.githubusercontent.com/pulakit001/snippetz-ui-design/main/llms-full.txt  # single-fetch bundle
```

## How to read the system

| Order | File | What it is |
|---|---|---|
| 1 | [`SKILL.md`](SKILL.md) | Entry point — philosophy, four product skins (Obsidian, Botanical, Atmospheric, Hybrid), default tokens, typography and composition rules, accessibility standards, and the 8-step design workflow. Read this first. |
| 2 | [`references/visual-language.md`](references/visual-language.md) | Detailed visual rules — design character, type scale, grid/spacing, semantic color roles, accent budget, depth, motion, responsive breakpoints, WCAG 2.2 AA. |
| 3 | [`references/pattern-library.md`](references/pattern-library.md) | Adaptable product patterns — marketing heroes, app shells, dashboards, data-heavy workspaces, monitoring/alerts, AI-assisted surfaces, forms, system states. |
| 4 | [`references/anti-patterns.md`](references/anti-patterns.md) | A 100-item defensive audit of clichés that make interfaces look AI-generated — bad defaults, fake credibility, generic copy, broken responsiveness. Required review before delivery. |
| 5 | [`references/implementation-playbook.md`](references/implementation-playbook.md) | Build guidance — repo reconnaissance, token/system design, component architecture, interaction behavior, safe project changes, verification. |
| 6 | [`references/quality-gate.md`](references/quality-gate.md) | The final checklist before any design or implementation task is called complete. |
| — | [`references/prompt-recipes.md`](references/prompt-recipes.md) | Ready-made prompt patterns for build / redesign / polish / dashboard-upgrade tasks. |
| — | [`AGENTS.md`](AGENTS.md) | Short operating instructions for coding agents working inside a codebase with this design system. |

## What this skill governs

- Marketing websites, product landing pages, and launch pages
- Web applications, SaaS products, workspaces, admin panels, dashboards, analytics
- Education, productivity, finance, health, operations, monitoring, and AI-native interfaces
- New designs, full redesigns, visual/UX polish, responsive passes, and design-system implementation

Its governing principle: **engineered clarity with editorial character** — make the important thing obvious, compose complex information deliberately, and use visual character in service of the product rather than decoration.

## Install as an agent skill

The repository root is the skill root (`SKILL.md` + `references/`), so installing is just cloning:

**OpenCode** — global (`~/.config/opencode/skills`):

```sh
git clone https://github.com/pulakit001/snippetz-ui-design.git ~/.config/opencode/skills/snippetz-ui-design
```

OpenCode — project-local (`.opencode/skills`):

```sh
git clone https://github.com/pulakit001/snippetz-ui-design.git .opencode/skills/snippetz-ui-design
```

**Claude Code / agents.md-compatible agents** (compatibility locations):

```sh
git clone https://github.com/pulakit001/snippetz-ui-design.git ~/.claude/skills/snippetz-ui-design
```

The skill ID is the directory name: `snippetz-ui-design`. `SKILL.md` frontmatter describes when the agent should use it; references are read on demand, so nothing else needs to be copied around.

## Repository design notes (why it is shaped this way)

- **`llms.txt` / `llms-full.txt`** follow the [llms.txt convention](https://llmstxt.org) for AI-readable site/documentation indexes.
- **Absolute raw URLs** are used in machine-readable files so agents never have to guess or translate paths.
- **`SKILL.md` and `references/` are kept in their exact skill layout and links**, so the GitHub repo, the raw fetch experience, and the installed skill are always identical.
- **`scripts/build-llms.sh`** regenerates `llms-full.txt` after any content edit, keeping the single-fetch bundle in sync.

## License

[MIT](LICENSE) — use, adapt, and redistribute with attribution.
