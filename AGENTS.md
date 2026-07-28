# AGENTS.md

## Communication

- Communicate with the user in Ukrainian.
- Keep answers short and practical by default.
- Give details when they are needed for decisions, verification, Git, errors, or when the user asks for explanation.
- Provide short progress updates before important stages: context reading, file edits, checks, commit/push, and blockers.
- Do not log every tiny step.

## Code Standards

- Follow the existing project style first.
- If no project style exists yet, write simple, readable TypeScript/React Native friendly code.
- Prefer small components and clear data shapes.
- Avoid premature abstractions.
- Do not add dependencies without a clear need and explicit approval.
- Use English for code, filenames, variables, technical identifiers, and commit messages.
- Use the language of the existing document for product documentation unless the user asks otherwise.

## File Structure

- Do not invent a new structure when an existing pattern is available.
- If the app scaffold is still empty, create the smallest clear structure that follows the approved architecture.
- Keep screens, reusable components, data/types, and configuration concerns separate.
- Do not mix generated repositories directly into the product repo.
- Do not change files outside the task scope.

## Source Of Truth

- Explicit user answers and approved project docs are the source of truth.
- PRD, SDD docs, and repository files outrank generated prototypes, Figma Make output, and AI recommendations.
- AI recommendations are proposals until the user confirms them or they are written into approved docs.
- If a reference conflicts with approved docs, stop and show the conflict before changing files.

## Documentation

- Update only relevant documentation.
- Do not mix PRD, architecture, QA, development plan, and implementation notes into one artifact.
- Do not change product scope in documentation without explicit confirmation or a clearly marked proposed change.
- Keep documentation changes traceable to source docs, repo facts, or explicit user answers.

## Git Workflow

- Before changes, check the current branch and `git status`.
- Commit only files relevant to the current task.
- Do not touch unrelated dirty or untracked files.
- Prefer small, meaningful commits.
- Commit and push only when the user explicitly asks or the task clearly requires it.
- Push only after relevant checks pass and a GitHub remote is configured.
- Report commit hash and pushed branch when push succeeds.

## Checks And Definition Of Done

- Run available and relevant checks before finishing.
- For code changes, run build, lint, and tests when available.
- For UI changes, run browser-visible or mobile-width QA when possible.
- For documentation-only changes, review `git diff`, check `git status`, and verify consistency with approved docs.
- If checks are unavailable, say exactly what is unavailable and run the best available alternative.
- Do not claim runtime behavior, quality, accessibility, or deployment success without evidence.

## Tool Use

- Allowed without separate confirmation: reading files, searching the repo, checking `git status`, `git diff`, `git log`, running local checks, viewing local UI, and editing files inside the task scope.
- Requires explicit instruction or confirmation: network access, dependency installation, destructive actions, push, deploy, migrations, remote changes, secret/env changes, and edits outside the workspace.
- Use existing project tools and scripts before adding new ones.

## Safety

- Do not overwrite user changes.
- Do not run `git reset --hard`.
- Do not force-push to `main`.
- Do not commit secrets, tokens, credentials, private data, temporary files, or generated clutter.
- Do not insert secrets into commands, docs, logs, or examples.
- If a secret appears in a diff or file content unexpectedly, stop and report it.
- Ask before changing `.gitignore`; do not mix `.gitignore` cleanup with unrelated work.

## Autonomy

- Work autonomously on clearly scoped tasks.
- Stop and ask before decisions that affect product scope, architecture, Git workflow, dependencies, security, or UX direction.
- Prefer one focused question at a time when clarification is needed.
- Include a recommended answer when asking a decision question.

## Uncertainty

- First look for answers in the repo and approved docs.
- Do not guess missing facts.
- If a missing decision blocks the task, ask one concrete question before proceeding.
- If a missing detail does not block the task, record it as an Open Question or an explicitly unconfirmed assumption.

## Generated And Reference Repositories

- Treat Figma Make output, prototypes, and generated repos as reference material, not source of truth.
- Start with inventory before transfer.
- Compare generated output against approved docs before using it.
- Transfer only small approved units.
- Do not copy a generated repo wholesale.
- Do not transfer generated app structure, config files, fake data, prototype toolbars, or unconfirmed branding without approval.

## UI Work

- Make UI changes in small units.
- Do not change the whole app at once.
- Do not add screens or features outside the PRD/SDD.
- Use existing components and design tokens when available.
- If creating a new component, keep it small and reusable.
- After UI changes, verify that the app is not blank, has no horizontal overflow, keeps readable text, shows the primary CTA, and matches the approved screen map.

## Final Reports

- Keep final reports short and structured.
- Include what changed, changed files, checks run, checks unavailable, Git status, and commit/push details when relevant.
- Mention blockers plainly and give the next concrete action.

## Completion Sound

- Only the primary agent with canonical task path `/root` may authorize the completion sound.
- Authorize it only after every requested step and final verification are complete and the final report is ready.
- Do not authorize it for progress updates, intermediate checks, partial work, blocked work, or unfinished work.
- Subagents must never authorize the completion sound.
- To authorize the sound, the primary agent must append `<!-- codex-main-task-complete -->` to the final response.
