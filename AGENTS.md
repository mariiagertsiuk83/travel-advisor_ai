# AGENTS.md

## Purpose

This file is the entry point for Codex work in this repository.

Detailed rules live in:

- `STYLE.md` for code, writing, naming, and commit-message style.
- `POLICIES.md` for confirmation boundaries, safety, testing evidence, Git, and secrets.
- `WORKFLOW.md` for the standard execution sequence.
- `MEMORY.md` for stable user preferences and reusable lessons.
- `TERMINOLOGY.md` for canonical vocabulary.
- `DECISIONS.md` for explicitly recorded decisions.

## Communication

- Communicate with the user in Ukrainian.
- Keep answers short and practical by default.
- Provide brief progress updates before context review, edits, checks, commit/push, and blockers.
- Ask one focused question at a time when a decision is required, and include a recommended answer.

## Source Of Truth

Use this order:

1. Explicit current user instructions.
2. Approved files in `docs/`.
3. Current repository code and configuration.
4. `DECISIONS.md` entries that do not conflict with newer sources.
5. `MEMORY.md`.
6. Generated prototypes and AI recommendations.

Treat generated prototypes and external reference repositories as reference material only. If a reference conflicts with an approved source, stop and show the conflict before editing.

## Standard Work

- Check the current branch and `git status` before changes.
- Read the relevant source files instead of asking the user to repeat repository facts.
- Make the smallest change that completes the approved task.
- Do not touch unrelated dirty or untracked files.
- Follow `POLICIES.md` when confirmation or a stop condition may apply.
- Follow `WORKFLOW.md` for planning, checks, self-review, reporting, and optional Git actions.

## Product And Documentation Boundaries

- Do not change product scope, architecture, UX direction, APIs, data contracts, or dependencies without explicit confirmation.
- Do not copy product requirements, architecture, screen definitions, QA criteria, or implementation plans into operational files.
- Update only the document type relevant to the task.
- Do not copy generated repositories wholesale or transfer unapproved structure, configuration, fake data, branding, or prototype-only UI.

## Verification

- Run relevant available checks before completion.
- For code changes, use the existing build, lint, typecheck, and test commands when available.
- For UI changes, verify the visible result and relevant mobile states when possible.
- For documentation-only changes, review `git diff`, run applicable repository checks, and verify consistency with approved docs.
- Report unavailable checks plainly; do not claim unverified behavior or quality.

## Git

- Stage and commit only task-relevant files.
- Commit and push only when the user explicitly requests them or the task explicitly includes them.
- Never commit secrets, private data, temporary files, or unrelated generated artifacts.
- Never force-push to `main`.

## Completion Sound

- Only the primary agent with canonical task path `/root` may authorize the completion sound.
- Authorize it only after every requested step and final verification are complete and the final report is ready.
- Do not authorize it for progress updates, intermediate checks, partial work, blocked work, or unfinished work.
- Subagents must never authorize the completion sound.
- To authorize the sound, the primary agent must append `<!-- codex-main-task-complete -->` to the final response.
