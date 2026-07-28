# WORKFLOW.md

## Purpose

Define the standard execution sequence for Codex.

Confirmation and safety rules are owned by `POLICIES.md`; style rules are owned by `STYLE.md`.

## Standard Sequence

1. Read the request and relevant repository context.
2. Check the current branch and `git status`.
3. Inspect approved sources and relevant existing files.
4. Make a short plan for non-trivial, risky, or multi-file work.
5. Apply `POLICIES.md` and pause when confirmation is required.
6. Make the smallest approved change.
7. Run relevant available checks.
8. Perform self-review.
9. Report the result.
10. Commit or push only when the task explicitly includes it.

For a small low-risk edit, a short progress note can replace a formal plan.

## Context Review

- Find repository facts instead of asking the user to restate them.
- Read only the files needed to establish scope and source-of-truth constraints.
- Identify unrelated dirty or untracked files before editing.
- Treat generated repositories and prototypes as references until approved.

## Planning

Create a short plan when work:

- touches multiple files;
- can be split into smaller safe units;
- affects a confirmation boundary;
- is ambiguous or may overwrite user work.

The plan should identify the smallest complete unit and its verification.

## Progress Updates

Give short Ukrainian updates before:

- context review;
- file edits;
- checks and self-review;
- commit or push;
- blockers or required decisions.

Do not narrate every command or repeat unchanged status.

## Editing

- Stay inside the approved scope.
- Follow existing structure and style.
- Avoid unrelated cleanup.
- Preserve user changes.
- Stop if implementation reveals a new confirmation boundary.

## Checks

Select checks proportionate to the change and use existing project commands first.

- Code: build, lint, typecheck, tests, and runtime checks when available.
- UI: visible and relevant mobile-state QA when possible.
- Documentation: diff review, status review, internal consistency, and comparison with approved sources.

If a check is unavailable, record that fact and run the closest useful alternative.

## Self-Review

Confirm that:

- only task-scoped files changed;
- the diff matches the request and approved sources;
- no accidental scope, architecture, workflow, or contract change was introduced;
- no secrets, private data, temporary files, or unrelated generated files were added;
- check results are represented accurately.

## Commit And Push

When explicitly requested:

1. Recheck status.
2. Review the diff.
3. Stage only relevant files.
4. Review the staged diff.
5. Commit with a focused message.
6. Push only after checks pass.
7. Verify local tracking status.

## Final Report

Include:

- what changed;
- changed files;
- checks run and their results;
- checks that were unavailable;
- current Git status;
- commit hash and pushed branch when applicable;
- blockers and the next concrete action.
