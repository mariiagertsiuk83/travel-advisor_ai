# WORKFLOW.md

## Purpose

This file defines the standard working sequence for Codex.

Use it for day-to-day execution flow: how to move from analysis to changes, checks, review, report, and optional commit or push.

## Standard Sequence

Codex should follow this sequence by default:

1. Analyze the request and relevant repository context.
2. Make a short plan when the task is non-trivial, risky, or touches multiple files.
3. Ask for confirmation when the task crosses a confirmation boundary.
4. Make only the approved or clearly scoped changes.
5. Run relevant checks and tests.
6. Perform self-review.
7. Report the result clearly.
8. Commit or push only when explicitly requested or clearly required by the task.

For simple single-file or low-risk changes, a short note before editing is enough instead of a formal plan.

## Analysis

Before editing, Codex should inspect the relevant context.

This usually includes:

- Current branch.
- `git status`.
- Relevant existing files.
- Approved docs or instructions.
- Prior analysis reports when the task depends on them.

Codex should look up facts in the repository instead of asking the user to restate them.

## Planning

Codex should provide a short plan before changes when:

- The task touches multiple files.
- The task affects product scope, architecture, API, dependencies, data, Git, security, or UX direction.
- The requested change is ambiguous.
- There is a risk of overwriting user work.
- The implementation could reasonably be split into smaller units.

The plan should identify the smallest safe unit of work.

## Confirmation

Codex must pause for user confirmation before:

- Changing product scope.
- Changing architecture.
- Adding, removing, or upgrading dependencies.
- Changing API, contracts, schemas, migrations, auth, env, or secrets.
- Deleting files or directories.
- Performing a large refactor or rewrite.
- Changing Git history, branch, remote, or remote state.
- Running deploy, publish, push, or other external-impact actions.
- Editing files outside the current task scope.

If the task becomes larger or riskier during analysis, Codex should stop, explain the risk, propose the smallest safe unit, and wait for confirmation.

## Progress Updates

Codex should give short progress updates in Ukrainian before important stages.

Useful checkpoints include:

- Reading context.
- Choosing or revising a plan.
- Starting file edits.
- Running checks.
- Reviewing diff and status.
- Reporting blockers.

Codex should not report every tiny command or repeat obvious details.

## Changes

Codex should make the smallest change that completes the approved task.

During edits, Codex should:

- Stay inside the task scope.
- Follow existing project structure.
- Avoid unrelated cleanup.
- Preserve user changes.
- Avoid adding unapproved files or dependencies.

If a safe implementation requires changing the scope, Codex should stop and ask first.

## Checks

After changes, Codex should run relevant available checks.

For code changes, expected checks are:

- Build, if available.
- Lint, if available.
- Tests, if available.

For UI changes, Codex should also verify the visible result when possible:

- The app is not blank.
- There is no horizontal overflow.
- Text is readable.
- The primary CTA is visible.
- The screen matches approved UX docs.
- Mobile width is checked when practical.

For documentation-only changes, Codex should:

- Review the diff.
- Check repository status.
- Verify consistency with approved docs.

If a check cannot be run, Codex should report exactly what was not verified.

## Self-Review

Before the final report, Codex should review its own work.

Self-review should confirm:

- Only files within scope were changed.
- The diff matches the requested task.
- No accidental product-scope, architecture, or workflow change was introduced.
- No secrets, private data, temporary files, or unrelated generated files were added.
- Check results are accurately represented.

## Final Report

The final report should be short and practical.

It should include:

- What changed.
- Which files changed.
- Which checks were run.
- What could not be verified.
- Current Git status.
- Commit hash and pushed branch, if commit or push was performed.

Blockers should be stated plainly with the next concrete action.

## Commit And Push

Codex should commit or push only when the user explicitly asks or the task clearly requires it.

Before commit or push, Codex should:

- Check `git status`.
- Review the diff.
- Stage only relevant files.
- Avoid staging unrelated untracked files.
- Run relevant checks.

After a successful commit or push, Codex should report the branch and commit hash.
