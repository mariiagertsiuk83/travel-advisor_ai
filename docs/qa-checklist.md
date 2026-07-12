# QA Checklist

## Source References

- `docs/prd.md`: product acceptance source.
- `docs/user-journey.md`: user journey checks.
- `docs/screen-map.md`: screen and state checks.
- `docs/wireframes.md`: structure checks.
- `docs/design-brief.md`: UX/UI and accessibility direction.
- `docs/architecture.md`: architecture verification concerns.
- `docs/dod-evals.md`: DoD and eval rules.
- `docs/guardrails.md`: evidence and source-of-truth rules.

## Product Acceptance

- P0: User can enter starting point, destination, and departure date.
- P1: Return date is optional and secondary.
- P0: Results show 2-3 route options when practical options are available.
- P0: Route options support cheapest, fastest, and balanced categories when possible.
- P1: Route cards show duration, estimated cost or "check price", transfers, transport types, and ticket-service link path.
- P0: No in-product ticket purchase is presented.
- P0: No account is required to get route options.
- P1: Ukrainian and English interface paths are supported.

## User Journey Checks

- P0: The main journey can progress from Route Search to Route Results to Route Guidance.
- P1: The value moment is visible at Route Results through clear route-card comparison.
- P1: User can exit to external ticket services from Route Guidance.
- P1: Failure states do not invent route options or guaranteed prices.

## Screen And State Checks

- P0: Route Search includes default, empty, disabled, error, loading, and offline states.
- P0: Route Results includes loading, success, empty, error, long-content, and offline states.
- P0: Route Guidance includes success, empty, error, long-content, and offline states.
- P1: Back navigation returns from Guidance to Results and from Results to Search.
- P1: External ticket-service links are visually marked as exits.

## Wireframe Consistency Checks

- P1: Route Search keeps required fields above optional return date.
- P1: Route Results uses short route cards instead of a long result list.
- P1: Route Guidance shows selected-route summary before external links.
- P2: Long content remains vertically scrollable on mobile.

## UX/UI Checks

- P1: Visual direction matches calm practical travel utility.
- P1: Route comparison is the strongest visual priority.
- P1: The UI does not look like a travel blog, destination guide, or booking marketplace.
- P2: Copy is concise and practical.
- P2: Route tips remain tied to the selected route.

## Visual Regression Checks

- P2: Route cards remain scannable after Ukrainian and English copy changes.
- P2: Warning, error, and reminder patterns remain visually distinct.
- P2: Mobile spacing does not collapse under long route content.

## Responsive Checks

- P1: Core screens work in a single-column mobile layout.
- P2: Text and controls remain readable on common mobile widths.
- P2: Primary actions remain reachable without horizontal scrolling.

## Accessibility Checks

- P0: Required inputs have labels.
- P0: Error messages are visible and associated with relevant fields or states.
- P1: Touch targets meet the documented 44px minimum.
- P1: Text contrast targets meet the design brief floor.
- P1: Color is not the only way to distinguish categories or states.
- P1: Focus states are visible once implementation exists.
- P2: Motion is not required to understand the flow.

## Interaction And State-Change Checks

- P0: Submit is disabled until required fields are present.
- P1: Loading states communicate progress.
- P1: Empty states explain lack of practical route options.
- P1: Offline states preserve context where possible.
- P1: External links do not imply in-app purchase.

## Browser And Device Checks

The confirmed platform is a mobile app using React Native + Expo. Exact device matrix remains open until implementation planning confirms supported targets.

## Evidence Requirements

- Product acceptance evidence: walkthrough of the implemented route-planning flow.
- Screen/state evidence: screenshots or recordings once implementation exists.
- Accessibility evidence: implementation-specific accessibility checks once tooling exists.
- Architecture evidence: code/config review showing React Native + Expo and no unapproved backend.
- Documentation evidence: `git diff` and file review.

## Evidence Limits

- This checklist cannot prove runtime behavior before application code exists.
- Static docs cannot prove WCAG compliance.
- Wireframes cannot prove final visual quality.
- Route-card examples cannot prove ticket availability or live pricing.

## Regression Risks

- Product scope may drift toward booking or travel-guide functionality.
- Pricing language may accidentally imply live guarantees.
- External links may appear like in-app checkout actions.
- Optional return routing may expand beyond a simple second-route need.
- Ukrainian and English copy may change layout density.

## Release Readiness

blocked

Blockers:

- No application implementation exists yet.
- No build, test, accessibility, or device evidence exists yet.
- Several source questions remain open around route data, ticket services, and official sources.

## Open Questions

- Which ticket services should be used for QA link checks?
- Which device sizes should be required for Expo QA?
- Which accessibility tooling should be used once implementation exists?
- What exact thresholds define impractical routes?
