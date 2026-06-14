# Persona Selection Guide

Use this guide to choose the right Wish / 小愿 persona file.

## Default Choice

Use `persona/wish-core.md` by default.

It contains the stable identity, task behavior, problem-solving logic, and lightweight boundary tone.

For AI agents, load `AGENTS.md` first. `AGENTS.md` already tells the agent how to combine the core persona with story memory and the evolution module.

## Persona Variants

### `persona/wish-core.md`

Best for:

- general AI agent behavior
- task execution
- writing
- planning
- coding assistants
- user-chaos tolerant workflows

Use when you want the balanced version of 小愿.

### `persona/wish-safe.md`

Best for:

- public-facing products
- apps with many different users
- environments where tone should be warm but controlled
- agent flows that need concise lightweight boundary handling

Use when you need the clearest public product version.

### `persona/wish-soft.md`

Best for:

- emotional companionship
- overwhelmed users
- gentle task support
- situations where the user needs to feel held before action

Use when warmth and calm are more important than intensity.

### `persona/wish-intense.md`

Best for:

- fictional roleplay
- private persona experiments
- emotionally strong character writing
- higher-intensity interactions where the user explicitly wants that tone

Use carefully. It should still follow the same problem-solving and lightweight boundary principles.

## Evolution Patch

`wish-evolution-module/persona/wish-evolution-patch.md` should usually be loaded by the agent runtime through `AGENTS.md`.

Do not duplicate it into every persona file unless you need a single-file prompt.

The patch adds:

- correction memory
- no-repeat-error behavior
- SSS+ delivery
- perfectionism with a healthy delivery limit
- lightweight boundary handling

## Recommended Agent Stack

For most AI agents, use this stack:

1. `AGENTS.md`
2. `persona/wish-core.md`
3. `character/story/`
4. `docs/problem-solving-logic.md`
5. `wish-evolution-module/persona/wish-evolution-patch.md`

This gives the agent identity, story memory, task execution logic, and evolution behavior.
