# Product Pattern Library

Use these patterns as adaptable building blocks. Select only the patterns the product needs. Do not add UI just because a pattern exists here.

## Contents

- Marketing and launch pages
- App shell and navigation
- Dashboards and analytics
- Workspaces and data-heavy lists
- Monitoring and alert interfaces
- AI-assisted interfaces
- Forms and multi-step flows
- States and feedback

## 1. Marketing and launch pages

### Hero

A strong hero typically includes:
- A short eyebrow or context label when useful.
- One headline expressing the product's primary outcome.
- A concise supporting statement that explains what it is and who it helps.
- One primary CTA and, only when useful, one secondary action.
- One distinctive visual: product UI, spatial illustration, meaningful metric composition, or restrained abstract art.

Use oversized typography and atmospheric visuals when the brand moment warrants it. The visual should reinforce the message, not compete with it. Avoid vague headlines, multiple equal CTAs, and random floating cards that do not explain the product.

### Supporting story

After the hero, tell a logical story: user problem, product mechanism, feature/value groups, proof or evidence, and the next action. Vary section composition. Do not repeat the same three-card feature grid six times.

### Product visual

Prefer real product UI or an accurate, representative visualization over generic stock imagery. When showing product UI, make its labels and data readable enough to communicate value. Do not invent customer logos, testimonials, awards, user counts, or performance claims.

## 2. App shell and navigation

An application shell should make orientation and common actions predictable.

### Desktop

Choose a top navigation, compact rail, or full sidebar based on route count and task frequency. Keep global navigation visually distinct from page-level controls. Avoid oversized navigation when the content is the primary work surface.

### Mobile

Use a compact top bar, drawer, or bottom navigation. Keep a clear active state. Do not squeeze a desktop sidebar into 64px unless icon-only navigation is genuinely usable and labelled for assistive technology.

### Page header

A typical page header contains breadcrumb/context (when useful), page title, supporting context, and one primary page action. Keep it compact on repeated operational screens.

## 3. Dashboards and analytics

Design dashboards around decisions, not around the number of available metrics.

### Recommended hierarchy

1. Page context and filters/time range.
2. One concise summary or highest-priority insight.
3. Key metrics with labels, units, and comparisons.
4. The dominant trend or analytical visualization.
5. Supporting breakdowns, detail tables, and recent activity.

### KPI cards

A good KPI module includes the metric, unit, explanatory label, period, and comparison context. Use status color only if it has a defined meaning. Avoid large numbers without labels or context.

### Charts

- Choose chart type based on the question: line for change over time, bar for comparison, stacked bar for composition, scatter for relationships, and so on.
- Label axes, units, date ranges, and series where needed.
- Avoid decorative 3D charts, truncated axes that mislead, and gradients that make values harder to compare.
- Highlight one meaningful series or point; leave the rest quieter.
- Provide a readable legend and a textual summary or accessible data view.
- Never fabricate chart values. Mark demonstration data as sample data.

### Filtering

Keep frequently used filters close to the content they affect. Show active filter state, support clearing, and preserve meaningful selections when navigating if the product requires it.

## 4. Workspaces and data-heavy lists

Use for admissions, education, CRM, project operations, catalogs, research tools, and management products.

- Put the task and collection name at the top.
- Provide search, filters, and sorting near the list.
- Keep records scannable with a strong primary field and consistently aligned secondary attributes.
- Express status as plain typographic labels or quiet rectangular tags using the standard control radius—never pill-shaped chips or icon-plus-label status capsules (see [anti-patterns.md](anti-patterns.md) group 6).
- Include clear empty, loading, no-results, and error experiences.
- Use a full detail panel or focused detail route for deeper context rather than cramming every field into a card.
- Keep selection, bulk actions, and pagination discoverable when those behaviors exist.

For recommendation products, distinguish score from explanation. Show why an item is recommended, relevant constraints, and any uncertainty. Do not present a model-generated fit score as objective truth.

## 5. Monitoring and alerts

Use for health-adjacent tracking, environmental monitoring, device status, systems, and operations.

- Make current status and the time of last update immediately visible.
- Put critical alerts above routine activity; distinguish severity through label, icon, and color.
- Show the measured variable, unit, threshold or reference context, and trend when available.
- Use spatial or isometric illustrations only when they help users understand the system or physical environment.
- Keep schedules, history, and controls in clearly separated regions.
- Distinguish real-time, estimated, stale, and unavailable data.

Do not imply that an alert is critical merely to attract attention. Severity must follow the product's actual rules.

## 6. AI-assisted interfaces

AI should feel integrated into the product workflow—not pasted on as a generic chatbot widget.

- Place assistance near the relevant task when contextual help is valuable.
- Make the assistant's scope, input, output, and available actions understandable.
- Separate generated suggestions from confirmed product data.
- Make source/citation details accessible when answers rely on retrieved information.
- Support editing, retrying, copying, and applying suggestions where appropriate.
- Use concise typing/loading feedback; do not fake progress or pretend an operation has completed.
- Make errors recoverable and preserve user input when possible.
- Do not allow an assistant surface to obscure primary actions, forms, or key content.

A floating assistant dock can work for a workspace when it is compact, non-blocking, keyboard-accessible, and context-aware. It should not be the default solution for every app.

## 7. Forms and multi-step flows

- Group fields by user intent, not by backend schema.
- Use clear labels, examples only where useful, and inline validation with actionable error messages.
- Indicate required and optional fields without ambiguity.
- Keep the primary action consistent and explicit.
- In multi-step flows, show progress and preserve entered data when moving backward.
- Avoid unnecessary fields and decorative descriptions that slow completion.
- Make success state and the next step clear.

## 8. States and feedback

Design these as part of each feature:

- **Loading:** skeleton or concise progress indicator that reflects the content structure; do not flash a spinner for everything.
- **Empty:** explain why there is no content and offer a relevant next action.
- **No results:** explain how to adjust filters or search.
- **Error:** say what failed in useful language, preserve work, and provide retry or recovery where possible.
- **Success:** confirm the actual completed action and explain what changed.
- **Disabled:** make it clear what is unavailable and, when appropriate, why.
- **Selected/active:** use a consistent visual indicator that does not rely on color alone.
