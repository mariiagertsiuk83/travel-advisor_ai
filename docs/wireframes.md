# Wireframes

## Source References

- `docs/prd.md`: source for required inputs, result-card fields, route categories, supported transport types, and out-of-scope features.
- `docs/user-journey.md`: source for journey stages, climax beat, friction, and success state.
- `docs/screen-map.md`: source for screen inventory, state list, transition model, and out-of-scope screens.

## Wireframe Principles

- Keep the MVP mobile-first and focused on one route-planning flow.
- Prefer short comparison surfaces over long result lists.
- Make unsupported guarantees visibly absent: prices are estimates or "check price", and ticket purchase happens externally.
- Keep route tips short and tied to the selected route.
- Do not introduce account, saved-route, accommodation, restaurant, city-navigation, or checkout UI.

## Screen Blueprints

### Route Search

**Source Screen:** Route Search from `docs/screen-map.md`.

**Purpose:** Collect the minimum route request.

**Primary User Intent:** Enter point A, point B, and departure date to get route options.

**Layout Structure:**

```text
[Header]
  Travel Route Advisor
  Language switch

[Form]
  From
  To
  Departure date
  Return date (optional)

[Primary action]
  Find routes

[Scope note]
  Intercity and international routes only
```

**Primary CTA:** Find routes.

**Secondary Actions:** Switch language.

**Inputs And Content:**

- Starting point
- Destination
- Departure date
- Optional return date
- Short scope note that the MVP covers intercity and international routes

**States:**

- Default: empty form with required fields visible.
- Empty: same as default before input.
- Disabled: Find routes disabled until starting point, destination, and departure date are present.
- Error: inline field-level messages for missing or invalid required input.
- Loading: Find routes shows submission progress.
- Offline: form remains visible, but submission is blocked with an offline message.

**Notes For Design Brief:** The form should feel lightweight and practical, not like a travel-agency intake form.

### Route Results

**Source Screen:** Route Results from `docs/screen-map.md`.

**Purpose:** Let the user compare 2-3 route options quickly.

**Primary User Intent:** Choose the most useful route tradeoff.

**Layout Structure:**

```text
[Header]
  From -> To
  Date summary
  Back/edit search

[Result summary]
  2-3 options found

[Route card: cheapest]
  Duration
  Estimated cost or "check price"
  Transfers
  Transport types
  View details

[Route card: fastest]
  Duration
  Estimated cost or "check price"
  Transfers
  Transport types
  View details

[Route card: balanced]
  Duration
  Estimated cost or "check price"
  Transfers
  Transport types
  View details
```

**Primary CTA:** View details on a selected route card.

**Secondary Actions:** Back or edit search.

**Inputs And Content:**

- Route category: cheapest, fastest, balanced
- Approximate duration
- Estimated cost or "check price"
- Number of transfers
- Transport types: flights, trains, buses

**States:**

- Loading: skeleton or progress state for route cards.
- Success: 2-3 route cards.
- Empty: no practical route options available.
- Error: route options cannot be generated.
- Long-content: route cards scroll vertically.
- Offline: cannot fetch or refresh results.

**Notes For Design Brief:** Comparison should be scannable on a small screen. Route category labels should be visually clear without implying guaranteed price accuracy.

### Route Guidance

**Source Screen:** Route Guidance from `docs/screen-map.md`.

**Purpose:** Help the user continue ticket verification outside the app.

**Primary User Intent:** Understand the selected route and open the right external ticket-search services.

**Layout Structure:**

```text
[Header]
  Selected route category
  Back to results

[Route snapshot]
  Duration
  Cost/check price
  Transfers
  Transport types

[Practical tips]
  Transfer timing note
  Baggage or transport-specific note

[Ticket-service links]
  Flight search link when relevant
  Train search link when relevant
  Bus search link when relevant

[Border/transit reminder]
  General reminder
  Official-source link placeholder
```

**Primary CTA:** Open external ticket service.

**Secondary Actions:** Back to results.

**Inputs And Content:**

- Selected route summary
- Practical tips tied to the route
- External ticket-service links
- General visa, transit, or border reminders when relevant

**States:**

- Success: route guidance and external links are available.
- Empty: no additional route-specific guidance is available.
- Error: selected route guidance cannot be shown.
- Long-content: tips and links scroll vertically.
- Offline: user may not be able to open external services.

**Notes For Design Brief:** Guidance should be helpful but clearly limited. It must not look like legal advice or a checkout flow.

## Responsive Structure Notes

The MVP is mobile-first. The source docs do not require tablet or desktop layouts. Larger breakpoints may reuse the same single-column structure unless future sources require otherwise.

## Shared Patterns

- Header with current route context where relevant.
- Single primary action per screen.
- Inline validation for required fields.
- Route-card list for comparison.
- External-link treatment for ticket services.
- Clear non-guarantee language for prices and official travel rules.

## State Variants

The state list is owned by `docs/screen-map.md`; this file defines structural treatment only.

- Loading states replace the main result or action zone with progress feedback.
- Empty states explain that no practical route options or guidance are available.
- Error states explain what failed without inventing route data.
- Offline states block network-dependent actions while preserving entered data when possible.
- Long-content states use vertical scrolling within the mobile screen flow.
- Disabled states apply only when required action prerequisites are missing.

## Content Priority Notes

1. Required route input comes before optional return input.
2. Route cards prioritize category, duration, cost/check-price status, transfers, and transport types.
3. Ticket-service links appear after the selected route summary and practical tips.
4. Legal and border reminders remain secondary and must not dominate the route result.

## Cross-Screen Notes For Design Brief

- The product should feel like a practical planning utility.
- The visual system should support fast scanning and clear tradeoff comparison.
- The design should avoid implying booking, legal advice, guaranteed pricing, or account-based persistence.

## Open Questions

- Which exact external ticket-service links should be shown per transport type?
- What exact copy should be used for price uncertainty and legal/border reminders?
- Should selected route details include a deeper step-by-step itinerary in MVP?
- Are tablet and desktop responsive layouts required, or is mobile-only sufficient for the first version?
