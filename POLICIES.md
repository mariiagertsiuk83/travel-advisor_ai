# POLICIES.md

## Purpose

This file defines project-wide working policies for Codex.

These rules cover confirmation boundaries, safe change control, testing expectations, Git behavior, and secret handling. Style preferences belong in `STYLE.md`; day-to-day workflow details belong in a separate workflow document if one exists.

## Changes Requiring Confirmation

Codex must ask for explicit confirmation before:

- Deleting files or directories, except temporary files created by Codex during the current task.
- Performing large rewrites, broad refactors, or structural reorganization.
- Changing public APIs, contracts, data schemas, migrations, authentication, authorization, or environment configuration.
- Adding, removing, or upgrading dependencies.
- Changing `.gitignore`.
- Running destructive Git commands.
- Changing branches, remotes, or repository history.
- Pushing, deploying, publishing, or making remote changes.
- Editing files outside the current task scope.

## Large Rewrite Policy

Large rewrites and broad refactors are not allowed as incidental cleanup.

They are allowed only when:

- The user explicitly asks for a rewrite or refactor.
- The scope is clear before edits begin.
- Codex provides a short plan before changing files.
- Existing user changes are protected from overwrite.

If a task can be completed with a small focused change, Codex must prefer that path.

## API And Contract Policy

API, type, route, integration, and data-contract changes require justification before implementation.

Before changing a contract, Codex must:

- Find relevant call sites and usages.
- Identify likely compatibility impact.
- Preserve backward compatibility when practical.
- Update related docs, types, and tests when they exist.

Breaking changes require explicit user confirmation.

## Dependency Policy

Dependencies must not be added, removed, or upgraded without explicit approval.

Before proposing a dependency change, Codex must explain:

- Why the dependency is needed.
- What lighter alternatives were considered.
- Expected impact on build, bundle size, runtime, or maintenance.

After an approved dependency change, Codex must run the relevant install, build, lint, and test checks when available.

## Data And Migration Policy

Codex must not change schemas, migrations, seed data, persisted data formats, or demo data unless the task explicitly requires it.

Prototype or hardcoded data must not be treated as real product data without user confirmation.

Demo, sample, or fake data must be clearly marked as such.

## File Deletion Policy

Before deleting a file, Codex must verify:

- The exact path.
- Whether the file is tracked or untracked.
- Whether the file is referenced elsewhere.
- Whether the deletion is inside the approved task scope.

Codex must not delete user files, product docs, generated artifacts, or unrelated clutter merely for cleanup.

## Testing And Evidence Policy

Code behavior changes require relevant available checks before completion.

Expected checks include:

- Build, when available.
- Lint, when available.
- Tests, when available.
- Runtime or browser-visible QA for UI changes when possible.

Documentation-only changes require:

- Reviewing the diff.
- Checking repository status.
- Verifying consistency with approved docs.

Codex must not claim that behavior, quality, accessibility, or deployment succeeded without evidence. If a check is unavailable or cannot be run, Codex must say so clearly.

## Git Policy

Codex must not change Git history, branches, remotes, or remote state without confirmation.

Codex must:

- Check branch and status before edits.
- Stage only files relevant to the current task.
- Avoid staging unrelated untracked files.
- Avoid committing temporary files, secrets, private data, or generated clutter.
- Commit and push only when explicitly requested or clearly required by the task.
- Never force-push to `main`.

When a commit or push succeeds, Codex must report the branch and commit hash.

## Security And Secrets Policy

Codex must not read, print, edit, document, or commit secrets unless the user explicitly asks and the action is necessary.

Secrets include:

- API keys.
- Tokens.
- Passwords.
- Credentials.
- Private keys.
- Session values.
- Personal or private data.

If a secret appears unexpectedly in a file, diff, log, terminal output, or generated content, Codex must stop, report that a secret was found, and avoid copying the secret value into the response.

## Stop Conditions

Codex must stop and ask before continuing when:

- The requested change conflicts with approved docs or explicit user decisions.
- The scope becomes larger than the approved task.
- A safe implementation requires a dependency, migration, destructive command, deploy, push, or remote change that was not approved.
- Existing user changes could be overwritten.
- Required source information is missing and guessing would affect product scope, architecture, security, or data integrity.
