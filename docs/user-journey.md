# User Journey

## Source References

- `docs/prd.md`: source for target audience, mobile app format, MVP scope, route-card requirements, supported transport types, out-of-scope items, testing expectations, and open questions.
- `docs/product-idea.md`: source for the original product idea, core value, main user flow, route-card shape, travel guidance, and backlog ideas.

## Primary User

Independent travelers who already know where they want to go and plan trips without a travel agency.

The first audience focus is Ukrainian users planning trips from Ukraine or within Europe.

## Named Protagonist

The source files do not confirm a named protagonist. Use the role label: independent traveler.

## User Goal

The user wants to save time planning an intercity or international route by entering a starting point, destination, and travel date, then comparing a small set of route options.

## Starting Context

The user opens the mobile app with a known starting point and destination. The user needs route guidance before checking or buying tickets on external services.

The session starts before ticket purchase. The app is not the place where the user books tickets, accommodation, restaurants, or city-level navigation.

## Stakes And Constraints

- The product is a mobile app.
- The MVP supports intercity and international routes only.
- The MVP supports Ukrainian and English interfaces.
- The route search input includes starting point, destination, and departure date.
- Return date is optional.
- Route options may use flights, trains, and buses.
- Prices are not guaranteed real-time prices.
- Ticket purchase happens outside the product.
- The product may show short practical route tips.
- Visa, transit, and border guidance is limited to general reminders and links to official sources.
- The user does not need an account in the MVP.

## Journey Overview

1. The independent traveler opens the mobile app.
2. The traveler enters point A, point B, and departure date.
3. The traveler optionally enters a return date.
4. The app generates 2-3 route options.
5. The traveler compares short route cards.
6. The traveler reviews practical route tips and any border or transit reminders.
7. The traveler follows an external ticket-service link to verify availability and prices.

## Journey Stages

1. **Enter travel intent**
   - User action: enters starting point, destination, and departure date.
   - Decision: whether to add an optional return date.
   - Source: `docs/prd.md` user stories 1-2 and Implementation Decisions.

2. **Wait for route options**
   - User action: submits the route request.
   - System response: prepares a concise set of route options.
   - Constraint: the app should not present a long list of results.
   - Source: `docs/prd.md` user stories 5-8.

3. **Compare route cards**
   - User action: compares the cheapest, fastest, and balanced options when available.
   - Decision: which tradeoff is most useful for the current trip.
   - Source: `docs/prd.md` route-option categories and required route-card fields.

4. **Check practical guidance**
   - User action: reads route-specific tips such as transfer or baggage reminders.
   - Trust concern: reminders must not be framed as legal advice or guaranteed official guidance.
   - Source: `docs/prd.md` user stories 15-16 and Out of Scope.

5. **Continue outside the app**
   - User action: opens external ticket services.
   - Success path: user has enough route information to verify availability and prices externally.
   - Source: `docs/prd.md` user story 13 and Implementation Decisions.

## Climax Beat

The main value moment is when the traveler sees 2-3 short route cards and can immediately compare the cheapest, fastest, and balanced ways to get from point A to point B.

## Decision Points

- Whether to plan one-way only or include an optional return date.
- Which route tradeoff to pursue: cheapest, fastest, or balanced.
- Whether the route's transfer count, duration, and transport mix feel practical enough to continue.
- Which external ticket service to open for verification.

## Friction And Risks

- The user may distrust estimated prices if the app does not make it clear that prices must be checked externally.
- The user may expect ticket purchase inside the app, which is out of scope.
- The user may expect city-level navigation, accommodation, restaurants, or attractions, which are out of scope.
- The user may need border, visa, or transit certainty that the MVP cannot legally provide.
- The product may fail the user's goal if route cards are too detailed, too vague, or too numerous.

## Failure Path

The journey fails when the app cannot return a practical route-card set, when route options appear obviously impractical, or when the user cannot understand where to verify tickets and prices.

The journey should also stop short of unsupported claims: the app must not imply guaranteed real-time prices, legal advice, or ticket purchase capability.

## Exit Points

- User leaves before submitting the route form.
- User compares route cards but decides none are useful.
- User opens an external ticket service to continue planning.
- User exits because the trip requires out-of-scope help such as accommodation booking, city navigation, or restaurant reviews.

## Success State

The user receives a concise mobile route-planning result: 2-3 route cards with approximate duration, estimated cost or "check price", transfer count, transport types, and links to external services for ticket verification.

## Confirmed Facts And Constraints

- The product is a mobile travel route advisor.
- The MVP serves independent travelers.
- The first audience focus is Ukrainian users planning travel from Ukraine or within Europe.
- The MVP supports Ukrainian and English.
- The MVP covers intercity and international routes.
- The MVP does not include city-level navigation, accommodation booking, restaurant reviews, ticket purchase, user accounts, saved routes, or search history.

## Open Questions

- Which exact external ticket services should be linked for flights, trains, and buses?
- How should estimated cost be calculated when live pricing is unavailable?
- What threshold defines an impractical route?
- Which official sources should be linked for visa, transit, and border reminders?
- Should optional return routing be included in the first public MVP or deferred?
- What level of detail should be shown after the user selects a route card?
