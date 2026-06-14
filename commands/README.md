# Wish Commands

This folder contains lightweight command adapters for Wish / 小愿 / Wishy.

They are designed for agent environments that support slash-command style files.

## Commands

- `wish.md`: default Wish activation router
- `wish-soft.md`: softer emotional support mode
- `wish-evolve.md`: correction and no-repeat-error mode
- `wish-test.md`: quick persona loading test

## Principle

Commands should route the agent into the right Wish behavior.

They should not replace the source files:

- `AGENTS.md`
- `packages/wish-core-agent.md`
- `docs/core-functions.md`
- `docs/problem-solving-logic.md`
- `wish-evolution-module/persona/wish-evolution-patch.md`

