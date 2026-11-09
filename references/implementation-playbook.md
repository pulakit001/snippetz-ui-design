# Implementation Playbook

Load this file when editing or building a real application. It is intentionally framework-aware but stack-agnostic: preserve the project's existing conventions and choose the simplest compatible implementation.

## Contents

- Repository reconnaissance
- Design-system implementation
- Component architecture
- Visual implementation
- Interaction behavior
- Safe project changes
- Verification

## 1. Repository reconnaissance

Before editing an existing project:

1. Inspect the project root and available instructions (`AGENTS.md`, `README`, contribution guidance, package scripts, and equivalent files).
2. Identify framework, routing, styling approach, component library, icon system, build tool, and package manager.
3. Find global styles, theme tokens, shared layout components, and existing page patterns.
4. Identify the requested route(s), nearby components, data source, and existing interaction logic.
5. Note the current behavior that must be preserved.

Do not assume the app uses React, Tailwind, Next.js, or a particular component library. Detect first.

## 2. Design-system implementation

Create or update one source of truth for:
- Semantic colors and theme variants.
- Typography family, scale, weight, and line height.
- Spacing and layout constraints.
- Radius, border, elevation, and focus treatment.
- Motion durations and easing.
- Component variants and state conventions.

Prefer CSS custom properties or the project's token mechanism. Example starter structure:

```css
:root {
  --color-canvas: #0b0d0c;
  --color-surface: #141715;
  --color-surface-raised: #1c201e;
  --color-text: #f2f4f1;
  --color-text-muted: #a0a6a0;
  --color-border: #2b322d;
  --color-accent: #a7f078;

  --font-sans: "Geist", "Inter", system-ui, sans-serif;
  --radius-card: 20px;
  --radius-control: 12px;
  --content-max: 1440px;
  --space-unit: 4px;
  --motion-fast: 160ms;
  --motion-standard: 220ms;
}
```

Treat this as an example, not an instruction to overwrite the project's existing tokens. Add a light/dark variant only if the product needs it. Use semantic variable names, not names tied to a single page or component.

## 3. Component architecture

Build components around repeated meaning and behavior. Typical candidates include:

- `AppShell`, `Sidebar`, `Topbar`, `PageHeader`
- `SectionHeader`, `Panel`, `StatCard`, `StatusBadge`
- `ChartPanel`, `DataTable`, `FilterBar`, `EmptyState`
- `Dialog`, `Popover`, `Toast`, `FormField`
- `AssistantPanel` or contextual AI action when the product needs it

Do not create an abstraction for every div. Reuse is valuable when components share behavior, semantics, and visual rules. Prefer a small set of well-defined variants over duplicated one-off CSS.

## 4. Visual implementation

- Use the existing CSS approach and conventions.
- Keep styles close to the component or in the established design-system layer.
- Use grid/flex layouts with fluid sizing; avoid brittle absolute positioning for core content.
- Keep content width and gutters consistent across routes.
- Use responsive units and `clamp()` where useful.
- Avoid arbitrary z-index values; create a small layering scale for sticky elements, overlays, and dialogs.
- Avoid huge one-off inline style objects and repeated raw color values.
- Use existing assets first. Do not fetch random remote imagery or invent a brand logo.
- For charts, reuse a project's charting library if present. If not, select a lightweight, compatible solution only when a real chart is required.
- Ensure images have sensible aspect ratios, object positioning, loading behavior, and alt text.
- Do not add fashionable treatments (gradient headlines, glass panels, glows, noise, arbitrary 3D objects, floating fake notifications, or scroll animations) unless they serve a clear brand or interaction purpose.
- Do not style buttons with candy fills, glossy highlights, inner shadows, or beveled 3D treatment. Do not use pill-shaped chips, badges, tags, or stamps anywhere in the interface. Do not implement bouncing-dot loaders; loading feedback uses content-shaped skeletons, precise progress indicators, or text status.
- Use real product content and assets where available. Never fabricate testimonials, company logos, people, metrics, integrations, certifications, activity, or case studies. Mark demo data as demo data.

## 5. Interaction behavior

- Use semantic elements (`button`, `a`, `label`, `input`, `select`, etc.) whenever possible.
- Every action button must be wired to the intended action.
- Use the project's established state and data-fetching model.
- Provide visible focus, hover, active, disabled, loading, error, and success behavior where relevant.
- Keep form errors tied to their fields and announce important changes accessibly.
- Do not fake network results, save states, authentication, or AI responses.
- Loading feedback must carry real information: skeletons that mirror the incoming content structure, a precise progress indication, or a concise text status—never the bouncing-dots sequence.
- Use optimistic updates only when the project's data model supports rollback or error recovery.
- Avoid global keyboard shortcuts that conflict with common browser or assistive-technology behavior.

## 6. Safe project changes

- Keep the scope aligned with the request; do not rewrite unrelated modules.
- Do not remove an existing feature to make the design simpler.
- Avoid dependency additions when native or existing project tools are sufficient.
- Do not overwrite user work or secrets. Do not print environment variables or credentials.
- Preserve routing, authentication, permissions, and data contracts.
- Make reasonable assumptions for reversible visual choices; ask before destructive or irreversible changes.

## 7. Verification

Run the relevant existing checks, such as:

- Formatter or lint command.
- Type checker.
- Component/unit tests.
- Production build.
- Browser-based desktop and mobile review when available.

Fix issues caused by the changes. Run the anti-pattern audit in [anti-patterns.md](anti-patterns.md), then report checks that were actually run and distinguish code validation from visual validation. If the project cannot be run, say so and still inspect the implementation for obvious structural and responsive issues. Never claim real-user or real-device testing unless it actually happened.
