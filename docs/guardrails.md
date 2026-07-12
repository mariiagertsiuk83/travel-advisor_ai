# Guardrails

## Source References

- `docs/product-idea.md`: source for original product scope and backlog boundaries.
- `docs/prd.md`: primary product requirements source.
- `docs/user-journey.md`: source for journey behavior and user risks.
- `docs/screen-map.md`: source for screen and state boundaries.
- `docs/wireframes.md`: source for structural UI boundaries.
- `docs/design-brief.md`: source for design direction.
- `docs/architecture.md`: source for architecture boundaries.
- `docs/dod-evals.md`: source for Definition of Done and eval gates.

## Source Of Truth Order

1. Explicit user instructions in the current task.
2. `docs/prd.md`.
3. `docs/product-idea.md` when PRD is silent or for original intent.
4. Downstream SDD artifacts in dependency order.
5. Existing code or configuration, once implementation exists.
6. AI suggestions, only as proposals.

## AI Autonomy Boundaries

AI may:

- Summarize and structure confirmed source information.
- Add Open Questions where source information is missing.
- Propose recommended answers before user confirmation.
- Create the requested SDD artifact when sources are sufficient.

AI may not:

- Treat its own recommendation as source truth.
- Add features outside approved scope.
- Convert Open Questions into implementation facts.
- Claim implementation, quality, accessibility, or legal compliance without evidence.

## Allowed Changes

- Create or update the requested SDD artifact in `docs/`.
- Update downstream artifacts only when explicitly requested or required by the active SDD step.
- Run Git status and diff checks.

## Forbidden Changes

- Do not create application code during SDD artifact creation.
- Do not add docs outside the approved SDD artifact set unless explicitly requested.
- Do not modify product docs to hide contradictions.
- Do not add accounts, saved routes, booking, accommodation, restaurant reviews, city navigation, in-product checkout, or full travel-guide scope.
- Do not change files outside `docs/` unless needed for Git verification and explicitly allowed.

## Scope Boundaries

The MVP is a React Native + Expo mobile travel route advisor. It covers route search, route-card comparison, route guidance, and external ticket-service exits.

The MVP excludes backend ownership unless future sources explicitly approve it.

## Design Authority Rules

The confirmed visual direction is calm practical travel utility. Generated mockups, future screenshots, or prototypes must follow `docs/design-brief.md` and cannot override source docs.

## Conflict Resolution

When documents conflict, follow the Source Of Truth Order. If the conflict affects user-facing behavior, architecture, scope, or verification, stop and ask before editing.

## When To Ask

Ask before acting when:

- A required product, design, architecture, or verification decision is missing.
- A requested change would expand MVP scope.
- A source contradiction affects the next artifact.
- A tool, stack, service, or external integration choice is not confirmed.

## When To Stop

Stop when:

- A blocker-level source gap prevents truthful artifact creation.
- A required source file is missing or unreadable.
- A requested action would modify files outside allowed boundaries.
- Evidence is unavailable for a completion or quality claim.

## Artifact Separation Rules

- `docs/prd.md` owns product requirements.
- `docs/user-journey.md` owns user journey and friction.
- `docs/screen-map.md` owns screens, navigation, and states.
- `docs/wireframes.md` owns low-fidelity structure.
- `docs/design-brief.md` owns visual and experience direction.
- `docs/architecture.md` owns technical boundaries.
- `docs/dod-evals.md` owns Definition of Done and eval gates.
- `docs/guardrails.md` owns source hierarchy, autonomy, and evidence behavior.
- `docs/qa-checklist.md` owns concrete QA checks.
- `docs/development-plan.md` owns implementation sequencing.

## Verification Rules

- Review source files before changing dependent artifacts.
- Run `git diff` and `git status` after SDD artifact creation.
- Do not claim push success without checking Git output.
- Do not claim runtime behavior before implementation exists and has been checked.

## Evidence Requirements

- Documentation changes require file-level diff review.
- Implementation completion requires fresh runner evidence once code exists.
- UI claims require visual or runtime evidence once implementation exists.
- Accessibility claims require accessibility-specific evidence; screenshots alone are insufficient.

## Source Access Failures

If a source file, repository, design asset, or external link cannot be accessed, record the failure and ask for direction if the missing source affects the artifact.

## Open Questions

- Should future SDD docs require explicit user approval before each artifact, or only when blocker gaps appear?
- Where should future eval evidence be stored?
- Should `.codex-temp/` and Word temporary files be ignored by repository policy later?
