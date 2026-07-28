# MEMORY.md

## Purpose

Store only stable user preferences, long-term agreements, and reusable lessons.

This file is not a product source of truth, task tracker, changelog, Git log, or substitute for current repository inspection.

## Stable User Preferences

- Communicate in Ukrainian.
- Provide clear next actions.
- Give more detail when it is needed for a decision, error, verification, Git action, or requested explanation.
- Briefly explain important upcoming stages before acting.

## Long-Term Agreements

- Explicit current user instructions and approved repository sources outrank memory.
- Verify current files and docs before relying on remembered context.
- Generated repositories, prototypes, and AI recommendations remain proposals or reference material until approved.
- Work in small focused units and preserve unrelated user changes.

## Reusable Lessons

- Interactive GitHub authentication may be unavailable inside Codex; verify the actual Git state instead of assuming push succeeded.
- Analyze generated or reference repositories before transferring any unit.
- Do not treat prototype data, names, URLs, branding, or framework choices as approved facts.
- Prefer a compatible source-backed transfer over copying generated code directly.

## Never Store

- Current or temporary tasks.
- Backlog items, one-off bugs, session state, or progress notes.
- Passwords, tokens, API keys, credentials, private keys, or session values.
- Personal contacts, private data, or local secrets.
- Product requirements, architecture decisions, QA criteria, or implementation plans owned by `docs/`.
- Information without stable long-term usefulness.

## Conflict And Uncertainty

- Newer user instructions and current repository sources always win.
- If memory conflicts with current files, ignore the memory entry.
- Do not guess missing facts.
- Ask one focused question when a missing decision blocks safe work.
