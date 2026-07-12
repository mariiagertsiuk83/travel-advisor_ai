# Design Brief

## Source References

- `docs/prd.md`: source for mobile app format, target audience, MVP scope, route-card requirements, supported languages, and out-of-scope features.
- `docs/user-journey.md`: source for user goal, journey stages, climax beat, friction, and success state.
- `docs/screen-map.md`: source for screen inventory, route map, navigation model, and screen states.
- `docs/wireframes.md`: source for low-fidelity structure, content hierarchy, CTAs, and structural state variants.
- Explicit user answer: visual direction is "спокійний практичний travel utility".

## Design Brief

Design a calm, practical mobile travel utility that helps independent travelers compare route options quickly. The design should support fast scanning, clear route tradeoffs, and confidence about what the app does and does not provide.

The interface should feel useful and focused rather than promotional. It should not look like a travel blog, booking marketplace, or destination guide.

## Decision Log

| Decision | Source References | Rationale |
| --- | --- | --- |
| Use a calm practical travel utility direction. | Explicit user answer | This supports the core value of saving planning time. |
| Keep the interface mobile-first. | `docs/prd.md`, `docs/product-idea.md` | The product is confirmed as a mobile app. |
| Make route-card comparison the visual priority. | `docs/prd.md`, `docs/wireframes.md` | The main value moment is comparing 2-3 route options. |
| Avoid visual patterns that imply booking or travel-guide scope. | `docs/prd.md`, `docs/screen-map.md` | Booking, restaurants, accommodation, city navigation, and travel guides are out of scope. |

## Audience And Context

The first audience is Ukrainian users planning trips from Ukraine or within Europe. Users already know their starting point and destination and want help comparing practical route options.

The product supports Ukrainian and English interfaces.

## Product Experience Goal

Help the user understand "How can I realistically get there?" in a few focused mobile screens.

The experience should make route tradeoffs clear without turning planning into a long travel-agency workflow.

## Concern Scan

| Concern | Handling |
| --- | --- |
| Accessibility | Use WCAG 2.2 AA as the design floor. |
| Mobile usability | Prioritize one-column layouts, large touch targets, and readable route cards. |
| Pricing trust | Show estimated cost or "check price"; do not visually imply guaranteed prices. |
| Legal/travel-rule trust | Treat visa, transit, and border content as reminders with official-source links. |
| Scope control | Do not introduce booking, accounts, saved routes, city navigation, restaurants, accommodation, or destination-guide UI. |
| Internationalization | Design for Ukrainian and English text length. |
| Offline/error states | Use plain status messages and recovery paths without inventing data. |

## Design Spine

Token values live only in `### Design Tokens`; other spine sections reference tokens by name instead of repeating values.

### Brand And Style

The style is calm, practical, and trustworthy. It should feel like a planning utility for decisions, not a lifestyle travel product.

Signature restraint: visual emphasis is spent on route comparison and action clarity. Decorative travel imagery, oversized hero sections, and promotional destination content are avoided.

### Colors

Use a restrained neutral base with one clear action color and one route-comparison accent. Avoid one-note palettes and avoid making the UI feel like a generic travel brochure.

Color roles:

- `surface-base`
- `surface-raised`
- `text-primary`
- `text-secondary`
- `border-subtle`
- `action-primary`
- `accent-route`
- `warning-soft`
- `success-soft`
- `error-soft`

### Typography

Use a system sans-serif stack unless future sources confirm a brand font. Typography should support compact mobile reading and quick comparison.

Text hierarchy:

- Screen title
- Section heading
- Route-card title
- Body text
- Metadata
- Helper/error text

### Layout And Spacing

Use a single-column mobile rhythm with consistent spacing between input groups, route cards, guidance sections, and action zones.

Route cards should be visually separated enough to scan, without nested card-in-card layouts.

### Elevation And Depth

Use minimal elevation. Prefer spacing, grouping, and subtle surface contrast before shadows.

### Shapes

Use modest rounded corners. Cards and inputs should feel practical and stable, not playful or decorative.

### Component Appearance

| Component | Appearance Principle |
| --- | --- |
| Route card | Clear category label, route metrics, transport types, and a visible details action. |
| Input field | Large enough for mobile input, labeled, and easy to edit. |
| Primary button | High contrast and visually dominant only for the next main action. |
| External link button | Clearly communicates that the user is leaving the app. |
| Reminder block | Calm and readable; does not look like legal certification. |
| Error message | Plain language, close to the affected field or state. |

### Visual Do's And Don'ts

Do:

- Make comparison fields easy to scan.
- Keep one primary action per screen.
- Show uncertainty honestly.
- Preserve enough whitespace for mobile reading.
- Design for Ukrainian and English copy length.

Do not:

- Use hero-style destination marketing.
- Add decorative travel illustrations as core UI.
- Make route cards look like checkout cards.
- Hide price uncertainty.
- Present visa or border reminders as legal advice.
- Add account or saved-route UI.

### Design Tokens

| Token | Value |
| --- | --- |
| `space-xs` | 4px |
| `space-sm` | 8px |
| `space-md` | 12px |
| `space-lg` | 16px |
| `space-xl` | 24px |
| `radius-sm` | 6px |
| `radius-md` | 8px |
| `border-width` | 1px |
| `touch-target-min` | 44px |
| `font-family-base` | System sans-serif stack |
| `font-size-body-min` | 16px for mobile inputs and primary body text |
| `contrast-body` | At least 4.5:1 |
| `contrast-large` | At least 3:1 |

## Experience Spine

### Foundation

The product is a mobile utility for route planning. It should prioritize speed, clarity, and honest limits.

### Information Architecture Implications

The interface follows the screen order from `docs/screen-map.md`: Route Search, Route Results, Route Guidance, then external ticket-service exit.

### Voice And Tone

Use concise, practical language. Avoid promotional travel copy.

Tone rules:

- Say "check price" when price certainty is not available.
- Say "open external service" or equivalent when leaving the app.
- Say "check official rules" for visa, transit, and border reminders.
- Avoid legal certainty or booking language.

### Component Behavior

| Component | Behavior Principle |
| --- | --- |
| Route search form | Required fields gate submission. Optional return date stays secondary. |
| Route card | Opens route guidance rather than checkout. |
| External link | Leaves the app for ticket verification or purchase. |
| Reminder block | Gives short route-tied guidance and points to official sources when relevant. |
| Language switch | Supports Ukrainian and English without changing product scope. |

### State Patterns

Screen states follow `docs/screen-map.md` and structural treatments from `docs/wireframes.md`.

- Loading: show progress without implying final results.
- Empty: explain that no practical options are available.
- Error: explain what failed and preserve user input where possible.
- Offline: block network-dependent actions while keeping the current context visible.
- Disabled: explain missing prerequisites.
- Long-content: allow vertical scrolling; do not hide critical actions.

### Interaction Primitives

- Tap to submit route search.
- Tap to select a route card.
- Tap to open an external ticket service.
- Back navigation returns from guidance to results and from results to search.
- Language switching should remain available without becoming the main action.

### Accessibility Floor

- Target WCAG 2.2 AA.
- Touch targets should be at least `touch-target-min`.
- Inputs must have persistent labels.
- Error text must be associated with the relevant input or state.
- Focus states must be visible.
- Color must not be the only way to distinguish route categories or states.
- Motion must not be required to understand the flow.

### Key Flow Implications

The route-card comparison is the core flow and must stay visually central. Guidance and external ticket-service links support the selected route but must not visually imply in-app purchase.

## Responsive And Platform Behavior

The confirmed product format is mobile app. The primary target is a mobile single-column layout. Wider layouts remain an open question unless future sources require tablet or desktop support.

Design should tolerate Ukrainian and English text length and long route-card content by using vertical scrolling.

## Design Handoff Prompt

Use the confirmed direction: calm practical travel utility. Build mobile screens for Route Search, Route Results, and Route Guidance using the wireframe structure. Prioritize route-card comparison, clear CTA hierarchy, honest price uncertainty, and visible out-of-app ticket verification. Do not add booking, accounts, saved routes, city navigation, restaurant reviews, accommodation, or destination-guide features.

## Validation Report

### Pass 1 - Mechanical Coverage

0 findings.

Coverage notes:

- Key flow references `docs/user-journey.md` and `docs/screen-map.md`.
- Tokens referenced in this brief resolve in `### Design Tokens`.
- Components named in this brief have appearance and behavior principles.
- Screen states from `docs/screen-map.md` are covered by state patterns.
- No external visual references were provided.

### Pass 2 - Judgment

0 findings.

Coverage notes:

- The brief avoids decorative filler and avoids pixel-level over-specification beyond reusable tokens.
- No existing UI system was found in the source files.
- The brief preserves the artifact boundary and does not add screens or features.

## Confirmed Design Decisions

- The product is a mobile app.
- The selected visual direction is calm practical travel utility.
- Route comparison is the primary visual priority.
- The design must not imply in-app booking, legal advice, guaranteed pricing, accounts, or saved routes.

## Rejected Directions

- Travel blog or destination-guide style.
- Booking marketplace style.
- Marketing hero-led experience.
- Decorative travel illustration-led interface.

## Out Of Scope

- New product features.
- New screens or routes.
- Detailed implementation tasks.
- Final production copy.
- Brand identity beyond the confirmed practical utility direction.

## Open Questions

- Are tablet or desktop layouts required later, or is mobile-only sufficient for the first version?
- Should the product support dark mode in the first version?
- Are there existing brand colors, logo, or typography assets to respect?
- Which exact external ticket services and official border/travel-rule sources need brand-safe link treatment?
