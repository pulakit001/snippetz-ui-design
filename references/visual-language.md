# Visual Language Reference

This file contains the detailed visual rules for the Snippetz Labs design skill. Load it when defining or refining a theme, page composition, type scale, responsive behavior, or accessible visual treatment.

## Contents

- Design character
- Typography scale
- Layout and spacing
- Color and surfaces
- Borders, shadows, and depth
- Motion
- Responsive behavior
- Accessibility

## 1. Design character

The desired result sits between an editorial digital publication and a finely engineered product interface. It should be expressive enough to feel branded and structured enough to support real work.

Use contrast in a controlled way:
- Large, quiet canvas areas against compact, information-rich modules.
- Lightweight display headlines against sturdy labels and body text.
- Calm neutral surfaces against one clear active signal.
- A few distinctive shapes or illustrations against a restrained component system.

Avoid a UI that is uniformly loud. Give the eye one primary entry point, a clear sequence, and enough breathing room to understand the data.

## 2. Typography scale

Use the project's installed font first. If none is suitable, prefer Geist or Inter with system fallbacks.

| Role | Desktop starting range | Mobile starting range | Weight / behavior |
|---|---:|---:|---|
| Display hero | 56–88px | 40–56px | 300–400; tight tracking; controlled line length |
| Page title | 34–48px | 28–36px | 400–550 |
| Section title | 22–30px | 20–26px | 450–600 |
| Card title | 15–18px | 15–17px | 550–650 |
| Body | 14–16px | 14–16px | 400–450; line-height 1.45–1.65 |
| Supporting | 12–14px | 12–14px | 400; maintain contrast |
| Eyebrow / metadata | 10–12px | 10–12px | 500–650; slight tracking; short text only |
| KPI | Contextual, often 28–44px | 26–36px | Tabular numerals; clear unit and label |

Rules:
- Use `clamp()` for fluid display sizing when appropriate.
- Keep body copy at a readable measure; do not span the entire desktop width for long paragraphs.
- Headlines can be tight; body text should not be tightly tracked.
- Avoid thin weights for small text, low contrast, or complex backgrounds.
- Use one coherent type family unless there is a compelling brand reason for a second.
- Keep a clear hierarchy between number, unit, label, and comparison.

## 3. Layout and spacing

### Grid

- Use a 12-column grid for wide desktop product surfaces when it helps.
- Use 8 columns or simpler flexible layouts for mid-sized screens.
- On mobile, prefer one primary column with deliberate exceptions for compact paired metrics.
- Set a max content width appropriate to the product, usually around 1200–1480px.
- Align page titles, content blocks, and footers to a consistent container edge.

### Spacing rhythm

Use a 4px base with common steps such as 4, 8, 12, 16, 20, 24, 32, 40, 48, 64, and 80px. Prefer consistent relationships over arbitrary values.

### Density

Choose density based on user intent:
- **Focused / consumer:** more whitespace, fewer simultaneous panels, obvious next action.
- **Operational / professional:** moderate density, compact controls, visible status and context.
- **Analytical / expert:** high information density, but group data with strong labels and alignment; do not shrink type as the primary density strategy.

### Asymmetry

Create visual interest using intentional span variation, a dominant visualization, or a different-width sidebar. Maintain a clear grid and predictable alignment. Avoid random offsets that make the page feel broken.

## 4. Color and surfaces

### Semantic color roles

Build themes from roles, not ad hoc color choices:

- `canvas`: page background.
- `surface`: default content panel.
- `surface-raised`: popover, menu, or floating panel.
- `surface-muted`: secondary content or subtle grouping.
- `text`: primary text.
- `text-muted`: secondary text.
- `text-subtle`: tertiary metadata, only where contrast remains sufficient.
- `border`: outline and separator.
- `accent`: primary interactive or selected state.
- `accent-contrast`: text/icon color on accent.
- `success`, `warning`, `danger`, `info`: meaningful semantic states.

Do not encode the same meaning with different colors in different screens. Semantic states must remain recognizable across light and dark themes.

### Accent budget

- Pick one dominant accent for a product skin.
- A second hue is allowed when it represents a real data category or status.
- Use high-saturation colors on a small area: selected controls, active chart series, critical KPIs, or key calls to action.
- Never use the accent on every icon, border, title, and card simultaneously.

### Contrast and layering

Separate surfaces using a combination of luminance, subtle border, and spacing. Do not rely only on shadows. On dark interfaces, avoid a stack of nearly identical black cards; make levels perceptibly different. On light interfaces, use restrained borders and soft tonal panels instead of heavy grey shadows.

### Gradients and effects

Use gradients for atmosphere, illustration, or an important focal surface. Keep text on gradients readable. Blur and glass effects should be limited to a small number of floating overlays and must not obscure content. Avoid glowing every action.

## 5. Borders, shadows, and depth

- Use thin, low-contrast borders for structure; stronger borders only for focus, selected, or critical states.
- Use shadows to communicate elevation and layering, not to outline every card.
- Keep shadows diffuse and low-opacity, especially on dark surfaces.
- Large card radius is a brand characteristic, not a requirement for every primitive. Dense tables, chart frames, and input groups can use smaller radii.
- Avoid putting a card inside a card inside another card unless each level has a distinct structural purpose.

## 6. Motion

- Typical micro-interaction: 140–200ms.
- More noticeable panel or layout transition: 180–260ms.
- Use easing that feels responsive and controlled; avoid springiness unless the brand explicitly supports playful motion.
- Animate opacity and transform where practical. Avoid expensive layout animation on dense dashboards.
- Do not animate live data so frequently that it becomes distracting.
- Respect reduced-motion preferences; remove nonessential movement and parallax.

## 7. Responsive behavior

Treat these as starting breakpoints, not strict rules: small mobile under 480px, large mobile/small tablet 480–767px, tablet 768–1023px, desktop 1024px and above.

### Mobile decisions

- Replace a persistent desktop sidebar with a compact header, drawer, or bottom navigation where appropriate.
- Keep the page title, key status, and main action visible early.
- Stack a wide hero into a clear text-then-visual or visual-then-text sequence.
- Move supporting analytics below the primary task rather than shrinking the entire dashboard.
- Give charts simplified labels and horizontal scrolling only inside the chart region when necessary.
- Use card summaries or accessible table overflow for wide datasets; preserve the information.
- Avoid fixed bottom elements covering the last content row or keyboard input.
- Ensure dialogs fit the viewport and remain scrollable with visible actions.

### Verification sizes

At minimum, inspect approximately 1440px desktop, 1024px tablet/compact desktop, and 390px mobile when a preview environment is available. Also check an intermediate width if the layout has a complex breakpoint.

## 8. Accessibility

- Aim for WCAG 2.2 AA contrast: 4.5:1 for normal text and 3:1 for large text and meaningful UI boundaries/graphics where applicable.
- Use text labels alongside status color. Include icons or wording for status when helpful.
- Use real buttons for actions and links for navigation.
- Ensure every input has a programmatic label and useful error text.
- Support keyboard operation and a visible focus indicator.
- Use a logical heading order and landmarks.
- Provide alternative text for meaningful images; mark purely decorative visuals appropriately.
- Do not communicate chart meaning using color alone; provide labels, patterns, or text summaries.
- Respect reduced motion and zoom/reflow behavior.
