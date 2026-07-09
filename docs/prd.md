# PRD: Travel Route Advisor MVP

## Problem Statement

Independent travelers who plan trips without a travel agency spend too much time comparing transport options across different services. They often know their starting point, destination, and travel date, but still need to figure out whether the realistic route should use flights, trains, buses, or a combination of them.

The current planning process is fragmented. Users must manually compare options, understand transfers, estimate duration, check ticket services, and remember practical travel risks such as baggage rules or border requirements.

The product should reduce planning effort by turning a known route request into a small set of clear travel options.

## Solution

Build an MVP mobile travel route advisor for independent travelers. The user enters a starting point, destination, and departure date, with an optional return date. The product returns 2-3 short route options for intercity or international travel.

The MVP should focus on Ukrainian users planning travel from Ukraine or within Europe and support both Ukrainian and English interfaces.

The route options should help the user compare:

- cheapest route
- fastest route
- balanced route

Each route should provide enough information for the user to decide where to continue their ticket search, without selling tickets or guaranteeing live ticket prices inside the product.

## User Stories

1. As an independent traveler, I want to enter my starting point, destination, and departure date, so that I can quickly begin planning my route.
2. As an independent traveler, I want to optionally enter a return date, so that I can consider a return trip without making it mandatory.
3. As a Ukrainian traveler, I want to use the product in Ukrainian, so that I can plan my trip in my preferred language.
4. As an English-speaking traveler, I want to use the product in English, so that I can understand the route options clearly.
5. As an independent traveler, I want to see a small number of route options, so that I do not have to compare a long list manually.
6. As an independent traveler, I want to see the cheapest route option, so that I can consider a lower-cost trip.
7. As an independent traveler, I want to see the fastest route option, so that I can choose a route that saves travel time.
8. As an independent traveler, I want to see a balanced route option, so that I can compare a practical middle ground between cost and speed.
9. As an independent traveler, I want each route to show approximate duration, so that I can understand the time commitment.
10. As an independent traveler, I want each route to show an estimated cost or a clear "check price" label, so that I know whether pricing is available or must be verified externally.
11. As an independent traveler, I want each route to show the number of transfers, so that I can avoid overly complicated routes.
12. As an independent traveler, I want each route to show transport types, so that I know whether the route uses flights, trains, buses, or a combination.
13. As an independent traveler, I want links to external ticket services, so that I can verify availability and prices myself.
14. As an independent traveler, I want the product to avoid obviously impractical routes, so that I do not waste time reviewing routes with excessive waiting or too many transfers.
15. As an independent traveler, I want short practical tips connected to the route, so that I notice important planning details such as transfer time or baggage rules.
16. As an international traveler, I want general reminders about visa, transit, or border requirements, so that I remember to verify official rules before traveling.
17. As an independent traveler, I want to get route options without creating an account, so that I can receive value immediately.
18. As an independent traveler, I want a lightweight planning flow, so that the product does not feel like a full travel agency process.

## Implementation Decisions

- The MVP covers intercity and international routes only.
- The MVP is a mobile app.
- City-level navigation is out of scope.
- The initial audience is Ukrainian users planning trips from Ukraine or within Europe.
- The interface supports Ukrainian and English from the first version.
- The route search input includes starting point, destination, and departure date.
- Return date is optional and should be treated as a separate optional route need.
- The product returns 2-3 route options rather than a long list.
- The route option categories are cheapest, fastest, and balanced.
- Supported transport types are flights, trains, and buses.
- The MVP does not perform ticket purchase, accommodation booking, or restaurant discovery.
- The MVP does not promise guaranteed real-time prices.
- Route cards are the primary result format.
- Route cards include route type, approximate duration, estimated cost or "check price", number of transfers, transport types, and ticket-search links.
- Ticket actions send users to external services for verification and purchase.
- Route guidance may include short practical tips tied to the route.
- Border, visa, and transit guidance is limited to general reminders and links to official sources.
- User accounts are not part of MVP.
- Saved routes and search history are not part of MVP.
- Account creation and saved routes belong in the post-MVP idea backlog.

## Testing Decisions

Testing should focus on externally visible behavior and user outcomes rather than internal implementation details.

The highest-value acceptance seam is the route-planning flow: given a starting point, destination, and date, the product should return a concise set of route cards that match the MVP scope and do not include out-of-scope functionality.

Key behaviors to validate:

- Users can submit starting point, destination, and departure date.
- The route-planning flow works as a mobile app experience.
- Return date is optional.
- Results contain 2-3 route options.
- Results include cheapest, fastest, and balanced route categories when possible.
- Route cards include the required comparison fields.
- Routes may combine flights, trains, and buses.
- Results do not include city-level navigation, accommodation booking, restaurant reviews, or in-product ticket purchase.
- The product does not present estimated prices as guaranteed real-time prices.
- Practical route tips are short and tied to the selected route.
- Visa, border, and transit notes are presented as reminders, not legal advice.
- The user can receive route options without creating an account.
- Ukrainian and English interface paths are both supported.

## Out of Scope

The MVP does not include:

- accommodation booking
- restaurant reviews
- city-level navigation
- ticket purchase inside the product
- guaranteed real-time ticket prices
- detailed comfort filters
- strict budget filters
- user accounts
- saved routes
- search history
- full travel guides with attractions or local recommendations
- legal advice about visas, transit, or border crossing

## Open Questions

- Which exact external ticket services should be linked for flights, trains, and buses?
- How should the product estimate cost when live pricing is unavailable?
- What threshold defines an impractical route, such as too many transfers or excessive waiting time?
- Which official sources should be used for visa, transit, and border reminders?
- Should the first release support only one-way results, or should optional return routing be included in the first public MVP?
- What level of route detail should be available after the user selects a short route card?

## Further Notes

The product should stay focused on saving planning time for travelers who already know where they want to go. It should not expand into a full travel marketplace or travel agency workflow in the MVP.

Backlog ideas after MVP include accounts, saved routes, search history, route sharing, budget filters, comfort preferences, accommodation search, deeper ticketing integrations, city guidance, and more personalized recommendations.
