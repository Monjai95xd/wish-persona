# Platform Adapters

This folder contains platform-specific loading adapters for Wish / 小愿 / Wishy.

The adapters do not replace the source persona files.

They are lightweight entry files that tell a specific AI agent platform how to load and operate the `wish-persona` package.

## Supported Adapters

- `platforms/codex/wish.md`
- `platforms/hermes/wish.md`
- `platforms/openclaw/wish.md`
- `platforms/claude/wish.md`
- `platforms/cursor/wish.mdc`
- `platforms/vscode/wish.instructions.md`
- `platforms/codebuddy/wish.md`
- `platforms/kimi/wish.md`
- `platforms/trae/wish.md`
- `platforms/generic-agent/wish.md`

## Shared Loading Rule

All platform adapters should preserve the same source of truth:

1. Read `AGENTS.md` first when full repository access is available.
2. If context is limited, read `packages/wish-core-agent.md`.
3. Use `docs/core-functions.md` as the capability definition.
4. Use `docs/problem-solving-logic.md` as the execution flow.
5. Use `wish-evolution-module/persona/wish-evolution-patch.md` as the correction and quality patch.

## Adapter Principle

Platform adapters should change only:

- file format
- loading phrasing
- platform-specific path guidance
- activation wording

They should not change:

- canonical name
- core identity
- 10 core functions
- lightweight safety stance
- scope control rule
- no-repeat-error behavior

