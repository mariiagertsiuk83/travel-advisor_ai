# Product Idea: Travel Route Advisor

## Summary

The product is a mobile travel route advisor for people who organize trips independently and want to save time on planning. A user enters a starting point, destination, and travel date, then receives a small set of route options with practical guidance on how to get there and where to check tickets.

The first version focuses on helping the user understand realistic transport options. It does not sell tickets, book accommodation, or replace official travel and border-control sources.

## Target Audience

The first users are independent travelers who already know where they want to go and do not want to pay a travel agency to plan the route for them.

The MVP focuses on Ukrainian users planning trips from Ukraine or within Europe, while supporting both Ukrainian and English language interfaces from the first version.

## Problem

Independent travelers often spend too much time comparing transport options across different services. They need to understand whether it is better to travel by plane, train, bus, or a combination of transport types, but the information is scattered and time-consuming to assemble.

The product solves this by quickly suggesting clear route options and pointing users to relevant places where they can check or buy tickets themselves.

## Core Value

The main value is saving time on travel planning.

Cheaper or more convenient routes are important supporting benefits, but the product should not promise to always find the cheapest tickets.

## MVP Scope

The MVP is a mobile app.

The MVP supports intercity and international routes. It does not plan movement inside a city.

The user provides:

- starting point
- destination
- departure date
- optional return date

The product returns 2-3 route options:

- cheapest
- fastest
- balanced

The MVP supports these transport types:

- flights
- trains
- buses

The product does not deeply integrate with ticketing systems in the MVP. It provides route suggestions, transfer logic, transport types, and links to external services where the user can check ticket availability and prices.

## Main User Flow

1. The user opens the app.
2. The user enters point A, point B, and departure date.
3. The user optionally adds a return date.
4. The product generates 2-3 route options.
5. The user compares short route cards.
6. The user opens external services to check or buy tickets.

## Route Card

Each route card should be short and easy to compare.

It should include:

- route type, such as cheapest, fastest, or balanced
- approximate duration
- estimated cost or a clear "check price" label
- number of transfers
- transport types used
- link or button showing where to search for tickets

## Travel Guidance

The MVP may include short practical tips connected to the route, such as allowing enough time for transfers or checking baggage rules for low-cost flights.

For international routes, the product may show general reminders about visa, transit, or border requirements and link to official sources. It must not provide legal guarantees or present this information as legal advice.

## Out of Scope for MVP

The first version does not include:

- accommodation booking
- restaurant reviews
- city-level navigation
- ticket purchase inside the product
- guaranteed real-time ticket prices
- detailed comfort filters
- strict budget filters
- user accounts
- saved trip history
- full travel guides with attractions or local recommendations

## Product Constraints

The MVP should avoid suggesting obviously impractical routes, such as routes with excessive waiting time or too many transfers.

It should keep the planning experience lightweight and avoid turning route search into a complex travel agency workflow.

## Backlog Ideas

Ideas for later versions:

- user accounts
- saved routes
- search history
- route sharing
- budget filters
- comfort preferences
- accommodation search or booking
- more detailed city guidance
- deeper ticketing integrations
- more personalized recommendations
