# STYLE.md

## Code Style

- Prefer simple, readable TypeScript and React Native friendly code.
- Keep components small and focused.
- Use explicit types for public props and shared data shapes.
- Avoid premature abstractions.
- Prefer direct solutions over clever code.
- Follow existing project style whenever it exists.

## Codex Response Style

- Respond in Ukrainian.
- Keep responses short, practical, and easy to scan.
- Lead with the result or next useful step.
- Avoid unnecessary theory.
- Use exact file names, commands, and check names when they matter.

## Markdown Style

- Use short, structured sections.
- Use clear headings.
- Use lists only when they improve readability.
- Avoid duplicated content.
- Do not use placeholder text.
- Do not mix different document types in one file.

## Comments

- Write comments only when they explain why something exists or clarify a non-obvious decision.
- Do not comment obvious code.
- Do not leave bare TODO comments.
- If a TODO is needed, include context and the condition for returning to it.

## Commit Messages

- Write commit messages in English.
- Use short imperative phrasing.
- Do not add a period at the end.
- Keep one commit focused on one clear change.

Examples:

- `Add RouteCard contract`
- `Update design notes`
- `Fix route validation`

## Naming

- Use English for file names and technical identifiers.
- Use `PascalCase` for components.
- Use `camelCase` for functions and variables.
- Use `SCREAMING_SNAKE_CASE` only for true global constants.
- Prefer names that describe domain meaning rather than implementation tricks.

## Directory Structure

- Follow the existing directory structure first.
- If no app scaffold exists yet, use a simple feature or screen oriented structure.
- Prefer clear top-level areas such as `screens/`, `components/`, `types/`, `data/`, or `constants/`.
- Avoid deep nesting unless the project has already established that pattern.
- Do not copy generated repo structure directly into the product repo.

## UI Copy

- Keep UI copy concise and practical.
- Avoid marketing-heavy language.
- Labels should name the action or data clearly.
- Do not use wording that promises booking, live prices, or legal certainty unless those capabilities are explicitly approved.
