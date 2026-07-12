# DoD And Evals

## Source References

- `docs/prd.md`: source for acceptance behavior and testing decisions.
- `docs/user-journey.md`: source for journey success and failure paths.
- `docs/screen-map.md`: source for screens, states, transitions, and out-of-scope screens.
- `docs/wireframes.md`: source for structural UI expectations.
- `docs/design-brief.md`: source for UX/UI direction and accessibility floor.
- `docs/architecture.md`: source for React Native + Expo, no-backend MVP architecture, and integration boundaries.

## Definition Of Done Model

Done means the delivered work satisfies the approved SDD artifacts, has evidence for required checks, and does not add out-of-scope product behavior.

Static docs can define expected behavior, but they cannot prove implemented runtime behavior.

## Acceptance Criteria Vs Definition Of Done

Acceptance criteria answer whether the product behavior matches the PRD and SDD artifacts. Definition of Done answers whether the work is complete enough to ship or hand off.

## Global Definition Of Done

- Product scope matches `docs/prd.md`.
- Journey coverage matches `docs/user-journey.md`.
- Screens and states match `docs/screen-map.md`.
- Structure matches `docs/wireframes.md`.
- Visual and interaction direction matches `docs/design-brief.md`.
- Architecture follows `docs/architecture.md`.
- No out-of-scope features are introduced.
- Required evidence is recorded before completion is claimed.

## Feature Unit Definition Of Done

Each implementation unit is done only when:

- Its source references are identified.
- Its user-visible behavior matches the relevant SDD docs.
- Required states are handled.
- Accessibility-impacting behavior is checked.
- Verification evidence is captured.
- Open questions are not silently converted into implementation facts.

## Verification Profile

### Hard Gates

| Gate | Purpose | Source References | Applies To | Required Evidence | Pass Condition | Fail Or Block Condition | Rerun Rule | Automation Status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Scope conformance | Prevent MVP expansion. | `docs/prd.md` | All work | Review against Out of Scope | No out-of-scope behavior present | Any out-of-scope feature appears | Rerun after scope changes | manual |
| Screen/state coverage | Ensure UI states exist. | `docs/screen-map.md` | UI work | Screen/state checklist | Required states represented | Missing required state | Rerun after UI changes | manual until implementation exists |
| Architecture conformance | Keep MVP client-first. | `docs/architecture.md` | Technical work | Architecture review | React Native + Expo and no unapproved backend | Unapproved backend or persistence added | Rerun after architecture changes | manual |
| Evidence before Done | Prevent unsupported completion claims. | `docs/design-brief.md`, `docs/architecture.md` | All completion claims | Fresh check output or documented review | Evidence exists and matches claim | Claim has no evidence | Rerun relevant checks | manual |

### Unit Checks

Unit-level checks are not available yet because no application code or test framework exists.

### System Checks

System checks should cover the full mobile route-planning flow once implementation exists: Route Search, Route Results, Route Guidance, and external-link exit behavior.

### UX/UI Checks

UX/UI checks should verify the calm practical travel utility direction, mobile scanning, route-card hierarchy, honest price uncertainty, external-link clarity, and absence of booking/account UI.

### Release Checks

Release readiness is blocked until implementation exists and required evidence can be gathered.

## Gate Matrix

| Area | Required Gate | Current Status |
| --- | --- | --- |
| Product scope | Scope conformance | Defined; manual |
| Journey | Main flow coverage | Defined; manual |
| Screens | Screen/state coverage | Defined; manual |
| UI structure | Wireframe conformance | Defined; manual |
| Visual direction | Design-brief conformance | Defined; manual |
| Architecture | React Native + Expo/no-backend conformance | Defined; manual |
| Runtime quality | Build/test gates | Open question until implementation exists |

## Lane Or State Promotion Gates

No workflow lane system is confirmed. For future work, promotion from "in progress" to "done" is blocked when required evidence is missing or any P0-P2 QA issue remains open.

## Eval Result Format

Each eval result should include:

- Gate
- Status: passed, failed, or blocked
- Source references
- Evidence
- Owner
- Timestamp or run date
- Rerun rule
- Open blockers

## Evidence Requirements

- Claims about docs require file review evidence.
- Claims about implemented UI require screenshots or runtime inspection once implementation exists.
- Claims about behavior require running the implemented flow once implementation exists.
- Claims about accessibility require relevant accessibility evidence; screenshots alone are not enough.
- Claims about no-backend architecture require code/config review once implementation exists.

## Evidence Limits

- Static docs do not prove runtime behavior.
- Wireframes do not prove visual implementation quality.
- Design brief does not prove accessibility compliance.
- Route cards in a mockup do not prove ticket availability, pricing accuracy, or route validity.

## Failure And Blocker Classification

- P0: blocks the core route-planning journey or introduces severe misleading behavior.
- P1: breaks a major MVP requirement, required state, or architecture boundary.
- P2: causes meaningful usability, accessibility, or scope drift that should block release readiness.
- P3: polish issue that may remain as follow-up.

## Rerun And Recovery Rules

After any fix or scope change, rerun the relevant gate and update evidence. Do not reuse stale evidence for a changed artifact or implementation.

## PR Merge And Completion Rules

Completion is blocked if:

- Required evidence is missing.
- Any P0-P2 item remains open.
- The work adds out-of-scope product behavior.
- The implementation contradicts an approved SDD artifact.

## Out Of Scope

- Creating CI scripts.
- Creating implementation tests before application code exists.
- Defining GitHub branch protection or repository policy.
- Declaring production readiness from docs alone.

## Open Questions

- Which build, lint, typecheck, and test commands will exist for the React Native + Expo app?
- What evidence location or format should be used for future eval results?
- Should PR approval rules be defined later?
- Which accessibility tooling should be used once the app exists?
