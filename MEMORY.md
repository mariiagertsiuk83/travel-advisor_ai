# MEMORY.md

## User Preferences

- Communicate in Ukrainian.
- Keep responses short, practical, and easy to scan.
- Provide clear next steps.
- Avoid unnecessary detail unless it is needed for a decision, error, verification, or explicit explanation request.
- Before important changes, briefly explain what will be done.

## Working Patterns

- Start by checking the repository, current branch, and `git status`.
- Read relevant project docs before making changes.
- Do inventory and analysis before implementation or transfer work.
- Work in small focused units.
- After changes, review `git diff` and `git status`.
- Do not touch unrelated dirty or untracked files.

## Stable Agreements

- Approved PRD/SDD docs and explicit user answers are the source of truth.
- Memory is not the source of truth; always verify current repo/docs first.
- Generated repos, Figma Make output, and prototypes are reference material only until approved.
- Do not mix product repo content directly with generated repo content.
- Do not create application code unless the user explicitly asks for code work.

## Git Notes

- Commit and push only when the user explicitly asks.
- Commit only files relevant to the current task.
- Do not commit `.codex-temp/`, Word temporary files, or unrelated local files.
- If GitHub push is blocked by an unavailable auth prompt in Codex, provide the exact PowerShell command for manual push.

## Lessons Learned

- Do not assume Codex can push to GitHub when authentication requires an interactive prompt.
- Do not treat hardcoded route data, ticket service URLs, or unconfirmed product names from prototypes as approved product decisions.
- Do not transfer Figma Make code directly when the generated repo framework differs from the approved architecture.
- Prefer documentation sync before code sync when the product repo does not yet have a compatible app scaffold.

## Do Not Store

Never store:

- passwords
- tokens
- API keys
- credentials
- private data
- personal contacts
- local secrets
- temporary tasks
- backlog items
- changelog entries
- one-off bugs
- session-only state
- information without long-term usefulness

## Uncertainty Rules

- First check current repo files and approved docs.
- If memory conflicts with current files or newer user instructions, current files and newer instructions win.
- Do not guess missing facts.
- If a missing decision blocks work, ask one concrete question and include a recommended answer.
- If a missing detail is not blocking, record it as an Open Question or explicitly unconfirmed assumption.

## Project-Specific Stable Notes

- This repo uses PRD/SDD docs as the product source of truth.
- The approved MVP direction is a mobile app.
- The approved technical direction for the mobile MVP is React Native + Expo.
- The approved first architecture decision excludes backend ownership for MVP.
- Figma Make draft repo analysis found a React/Vite web prototype, so it should be used only as reference unless a later decision says otherwise.
