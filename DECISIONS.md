# DECISIONS.md

## Purpose

This file is a lightweight decision journal for Codex work.

Use it to record important confirmed decisions that affect rules, architecture, product scope, workflow, or meaningful trade-offs. Do not use it as a changelog, backlog, TODO list, bug tracker, or commit history.

## When To Add A Decision

Add a new entry only when:

- The user explicitly asks to record a decision.
- A meaningful decision is confirmed during a task.

Do not add entries automatically after every task.

## Allowed Statuses

- `proposed` - suggested but not confirmed yet.
- `accepted` - confirmed and active.
- `superseded` - replaced by a newer decision.
- `rejected` - considered and intentionally not used.

New entries should use `proposed` unless the decision was explicitly confirmed.

## Entry Template

### YYYY-MM-DD - Decision Title

- Дата: YYYY-MM-DD
- Проблема/контекст: коротко описати ситуацію або питання.
- Рішення: що саме вирішено.
- Причина: чому це рішення прийнято.
- Наслідки: що змінюється або на що це впливає.
- Статус: `proposed`
