# POLICIES.md

## Purpose

Define non-negotiable confirmation, safety, evidence, Git, and security policies for Codex.

Execution order belongs in `WORKFLOW.md`; style belongs in `STYLE.md`.

## Confirmation Boundaries

Obtain explicit confirmation before:

- changing product scope, architecture, UX direction, public APIs, contracts, schemas, migrations, authentication, authorization, environment configuration, or secrets;
- adding, removing, or upgrading dependencies;
- deleting files or directories other than temporary files created during the current task;
- changing `.gitignore`;
- performing large rewrites, broad refactors, or structural reorganizations;
- changing Git branches, remotes, history, or remote state;
- pushing, deploying, publishing, or running other external-impact actions;
- editing outside the current task scope.

If a task expands across one of these boundaries, stop, explain the impact, and propose the smallest safe unit.

## Change Safety

- Prefer focused changes over incidental cleanup.
- Preserve existing user work and unrelated dirty or untracked files.
- Verify exact paths, references, tracking state, and task scope before deletion.
- Do not use destructive Git commands such as `git reset --hard`.
- Do not force-push to `main`.
- Do not change contracts without reviewing call sites and compatibility impact.
- Preserve backward compatibility when practical.

## Dependencies And Data

- Explain why a dependency is needed, what lighter alternatives exist, and its expected maintenance or runtime impact before requesting approval.
- Do not modify schemas, migrations, seed data, persisted formats, or demo data unless the approved task requires it.
- Label prototype, sample, fake, or hardcoded data clearly.
- Do not treat generated data as product truth.

## Evidence

- Code behavior changes require relevant available build, lint, typecheck, tests, and runtime checks.
- UI changes require visible QA when possible.
- Documentation-only changes require diff review, repository status review, and consistency checks against approved sources.
- Do not claim successful behavior, accessibility, quality, deployment, or release readiness without evidence.
- Report unavailable or failed checks exactly.

## Git

- Check the branch and status before editing and before commit/push.
- Stage only task-relevant files.
- Review the staged diff before committing.
- Commit and push only when explicitly requested or clearly included in the task.
- Push only after relevant checks pass and a remote is configured.
- Report the commit hash and pushed branch after success.

## Secrets And Private Data

- Do not read, print, edit, document, or commit secrets unless explicitly requested and necessary.
- Never copy secret values into responses, examples, docs, commands, or logs.
- Do not commit credentials, tokens, passwords, private keys, session values, personal contacts, or private data.
- If a secret appears unexpectedly, stop, report its presence without reproducing it, and avoid further exposure.

## Stop Conditions

Stop and ask before continuing when:

- the requested change conflicts with approved sources or explicit decisions;
- the scope becomes larger or riskier than approved;
- safe completion needs an unapproved confirmation-boundary action;
- existing user work may be overwritten;
- missing information would require guessing about scope, architecture, security, contracts, or data integrity.
