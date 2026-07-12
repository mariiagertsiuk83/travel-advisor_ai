# Development Plan

## Source References

- `docs/prd.md`: product requirements and testing decisions.
- `docs/user-journey.md`: primary journey and success/failure paths.
- `docs/screen-map.md`: screen inventory, states, and transitions.
- `docs/wireframes.md`: structural screen blueprints.
- `docs/design-brief.md`: visual and interaction direction.
- `docs/architecture.md`: React Native + Expo architecture and no-backend MVP boundary.
- `docs/dod-evals.md`: Definition of Done and eval rules.
- `docs/guardrails.md`: source-of-truth and evidence rules.
- `docs/qa-checklist.md`: concrete QA checks and release-readiness blockers.

## Implementation Strategy

Build the MVP as a React Native + Expo mobile app with a client-first architecture. Start with the main user journey and keep all work inside the approved scope: Route Search, Route Results, Route Guidance, localization, route-card comparison, practical reminders, and external ticket-service exits.

Do not implement backend services, accounts, saved routes, in-app ticket purchase, accommodation, restaurants, city navigation, or full travel guides.

## Codebase Map

No application code exists yet. The future codebase should include Expo-compatible app structure, screen modules, route-planning logic, localization, and verification tooling. Exact file paths remain open until the app scaffold exists.

## Implementation Units

### Unit 1: Expo App Foundation

- `Purpose`: Establish the React Native + Expo mobile app shell.
- `Source References`: `docs/architecture.md`, `docs/design-brief.md`
- `Depends On`: None
- `Work Items`:
  - Create Expo app structure.
  - Add navigation shell for Route Search, Route Results, and Route Guidance.
  - Add localization foundation for Ukrainian and English.
- `Acceptance Checks`:
  - App shell opens on mobile.
  - Navigation supports the three approved screens only.
  - No account, checkout, or saved-route screen is introduced.
- `Verification`:
  - Build/run evidence once implementation exists.
  - Screen inventory review against `docs/screen-map.md`.

### Unit 2: Route Search Screen

- `Purpose`: Let users submit starting point, destination, and departure date.
- `Source References`: `docs/prd.md`, `docs/screen-map.md`, `docs/wireframes.md`
- `Depends On`: Unit 1
- `Work Items`:
  - Implement required fields.
  - Implement optional return date field.
  - Implement disabled, error, loading, and offline structural states.
- `Acceptance Checks`:
  - Required fields gate submission.
  - Return date is optional.
  - The screen remains mobile-first and lightweight.
- `Verification`:
  - QA checks for Route Search states.
  - Accessibility checks for labels and error messages.

### Unit 3: Route Option Model And MVP Route Logic

- `Purpose`: Define client-side structures for route request and route option presentation.
- `Source References`: `docs/prd.md`, `docs/architecture.md`
- `Depends On`: Unit 1
- `Work Items`:
  - Define route request shape.
  - Define route option shape.
  - Provide MVP route-option source or placeholder strategy only after route-source decisions are resolved.
- `Acceptance Checks`:
  - Route options can represent cheapest, fastest, and balanced categories.
  - Route options support duration, cost/check-price label, transfer count, transport types, guidance, and links.
- `Verification`:
  - Data-shape review against `docs/architecture.md`.
  - Open-question review before treating route data as real.

### Unit 4: Route Results Screen

- `Purpose`: Show 2-3 scannable route cards.
- `Source References`: `docs/prd.md`, `docs/screen-map.md`, `docs/wireframes.md`, `docs/design-brief.md`
- `Depends On`: Units 1 and 3
- `Work Items`:
  - Implement route-card list.
  - Implement category, duration, cost/check-price, transfers, and transport-type display.
  - Implement loading, success, empty, error, long-content, and offline states.
- `Acceptance Checks`:
  - Results show short comparison cards.
  - Price uncertainty is visible.
  - No long unfiltered result list is introduced.
- `Verification`:
  - QA route-card checks.
  - Visual review against design brief.

### Unit 5: Route Guidance Screen

- `Purpose`: Help the user continue ticket verification outside the app.
- `Source References`: `docs/prd.md`, `docs/user-journey.md`, `docs/screen-map.md`, `docs/wireframes.md`
- `Depends On`: Units 1, 3, and 4
- `Work Items`:
  - Implement selected-route summary.
  - Implement practical tips.
  - Implement external ticket-service link area.
  - Implement general official-source reminder area.
- `Acceptance Checks`:
  - External links are marked as leaving the app.
  - Reminders do not appear as legal advice.
  - No in-app checkout is introduced.
- `Verification`:
  - QA checks for link behavior and reminder wording.
  - Scope review against out-of-scope list.

### Unit 6: Localization

- `Purpose`: Support Ukrainian and English interfaces.
- `Source References`: `docs/prd.md`, `docs/design-brief.md`
- `Depends On`: Units 1-5
- `Work Items`:
  - Add Ukrainian and English copy structure.
  - Verify layout tolerates both languages.
- `Acceptance Checks`:
  - Core screens are available in both languages.
  - Route cards remain scannable with longer copy.
- `Verification`:
  - Language path walkthrough.
  - Visual regression review for copy length.

### Unit 7: Verification And Evidence

- `Purpose`: Establish evidence for Done.
- `Source References`: `docs/dod-evals.md`, `docs/qa-checklist.md`, `docs/guardrails.md`
- `Depends On`: Units 1-6
- `Work Items`:
  - Add or document available build/run/test commands once implementation exists.
  - Capture walkthrough evidence for the main journey.
  - Capture screen/state and accessibility evidence.
- `Acceptance Checks`:
  - Required evidence exists before completion is claimed.
  - P0-P2 QA blockers are resolved or explicitly blocked.
- `Verification`:
  - Run available project gates.
  - Record eval results using `docs/dod-evals.md` format.

## Dependency Order

1. Expo App Foundation
2. Route Search Screen
3. Route Option Model And MVP Route Logic
4. Route Results Screen
5. Route Guidance Screen
6. Localization
7. Verification And Evidence

## Verification Plan

- Use `docs/qa-checklist.md` as the concrete checklist.
- Use `docs/dod-evals.md` as the completion contract.
- Use `docs/guardrails.md` to stop when evidence is missing.
- Treat build, lint, typecheck, and test commands as Open Questions until the app scaffold exists.

## Visual And UX Verification

Verify that the implemented UI follows the calm practical travel utility direction, keeps route-card comparison central, avoids booking/travel-guide visual language, and remains usable in Ukrainian and English.

## Risks And Sequencing Notes

- Route data source is still open, so route logic should not pretend to offer live pricing or guaranteed availability.
- External services and official sources must be chosen before final link behavior can be verified.
- Optional return routing may increase scope and should remain controlled.
- Verification tooling cannot be finalized until the Expo app exists.

## Out Of Scope

- Backend implementation
- Account system
- Saved routes or search history
- In-app ticket purchase
- Accommodation, restaurant, city navigation, or full travel-guide features
- Production release automation

## Open Questions

- Which data source or rules will generate route options?
- Which exact ticket services should the app link to?
- Which official travel-rule sources should be linked?
- Which Expo routing and state-management approach should be used?
- Which build, lint, typecheck, and test commands will be required?
- Should optional return routing be implemented in the first build or deferred?
