# Snippetz UI Quality Gate

Use this checklist before calling a design or implementation complete. A task does not need every item in every context; mark non-applicable items mentally and focus on the ones that matter.

## 1. Product fit

- [ ] The interface reflects the actual audience, product domain, and primary user task.
- [ ] The visual skin is intentional and appropriate—not chosen by habit.
- [ ] The important content and action are obvious in the first scan.
- [ ] The design is inspired by references without mechanically copying them.
- [ ] The page has a product-specific point of view; it does not rely on an unearned bundle of familiar AI-design clichés.
- [ ] The anti-patterns reference has been reviewed; relevant matches are removed, replaced, or justified by a real product need.

## 2. Visual system

- [ ] Color, type, spacing, radius, borders, and motion follow a consistent token system.
- [ ] There is one clear primary accent, with semantic colors used consistently.
- [ ] Typography has a readable hierarchy and works at small sizes.
- [ ] Primary, secondary, and tertiary content have distinct visual weights.
- [ ] Panels and cards are used to organize information, not as decoration for every block.
- [ ] Gradients, glow, blur, shadows, and 3D visuals are purposeful and restrained.

## 3. Layout and responsiveness

- [ ] Alignment, gutters, and spacing are consistent.
- [ ] The page has a clear reading and interaction order.
- [ ] Important content is not hidden below arbitrary fixed-height sections.
- [ ] No unintended horizontal page overflow exists.
- [ ] Navigation and multi-column regions adapt appropriately on mobile.
- [ ] Tables, charts, dialogs, and assistant panels remain usable at narrow widths.

## 4. Content and data

- [ ] Labels explain what metrics represent.
- [ ] Values include units, time periods, and comparisons where needed.
- [ ] Charts use appropriate encodings and are not misleading.
- [ ] Sample or placeholder data is explicitly identified.
- [ ] No unverified claims, fake testimonials, invented records, fake people/logos, unsupported metrics, or pretend integrations are shown.
- [ ] Sample or synthetic content is clearly labelled and cannot be mistaken for live customer proof or operational data.
- [ ] Marketing copy describes the actual product, audience, workflows, capabilities, and limitations in concrete language.

## 5. Interaction and accessibility

- [ ] Every visible control has a real outcome.
- [ ] Keyboard navigation and visible focus work.
- [ ] Inputs have labels and useful validation messages.
- [ ] Status is communicated with more than color alone.
- [ ] Loading, empty, error, success, disabled, and selected states exist where applicable.
- [ ] Motion is restrained, purposeful, non-repetitive, and reduced-motion preferences are respected.
- [ ] No decorative animation, glow, parallax, or hover effect substitutes for meaningful state or interaction feedback.
- [ ] Text and meaningful controls have adequate contrast.

## 6. Engineering quality

- [ ] Existing functionality and project conventions are preserved.
- [ ] Components are reusable where that improves consistency.
- [ ] No unnecessary dependency or duplicated design system was introduced.
- [ ] Relevant lint, type, test, and build checks were run when available.
- [ ] The rendered result was reviewed at relevant viewport sizes when a preview was available.
- [ ] Realistic content lengths, edge cases, forms, menus, dropdowns, and dialogs were checked where applicable.
- [ ] Any user/device testing not performed is disclosed rather than implied.
- [ ] The final report accurately states what was implemented and verified.
