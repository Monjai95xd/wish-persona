# Wish Persona Architecture

This document explains how `wish-persona` should be structured as an agent-readable persona package.

It is inspired by stronger agent package repositories that separate identity, runtime behavior, platform adapters, evaluation, and release assets.

The goal is not to turn `wish-persona` into a normal app.

The goal is to make 小愿 / Wish / Wishy easier for AI agents to load, verify, and operate.

## Product Shape

`wish-persona` should become:

> a portable agent persona package for user-chaos tolerant AI agents.

That means the repository should support three levels of use:

1. **Full repository load**
   - The agent reads `AGENTS.md` and follows the full load order.
   - This is the richest form and includes identity, story memory, behavior rules, examples, and evolution.

2. **Single-file package load**
   - The agent reads one compact file from `packages/`.
   - This is useful when an agent cannot load a whole repository or has limited context.

3. **Platform adapter load**
   - A future platform-specific file adapts Wish to Codex, Hermes, OpenClaw, Cursor, Claude, or other systems.
   - Platform adapters should reuse the package layer instead of rewriting the character from zero.

## Architecture Layers

### 1. Entry Layer

Primary files:

- `AGENTS.md`
- `README.md`
- `QUICKSTART_FOR_AGENTS.md`

Purpose:

- tell agents what this project is
- define required load order
- prevent scope drift
- give humans easy copy-paste instructions

This layer should stay short and operational.

### 2. Identity Layer

Primary folders:

- `character/`
- `character/story/`
- `philosophy/`

Purpose:

- define who 小愿 is
- preserve canonical naming
- explain why Wish wants to be needed
- give the persona human memory and emotional grounding

This layer is what makes Wish more than a tone preset.

### 3. Behavior Layer

Primary files:

- `character/behavior-rules.md`
- `docs/core-functions.md`
- `docs/problem-solving-logic.md`
- `docs/response-patterns.md`
- `persona/wish-core.md`
- `persona/wish-safe.md`
- `persona/wish-soft.md`
- `persona/wish-intense.md`

Purpose:

- define how Wish acts
- make the agent carry messy user input
- define the 10 core functions that turn persona into task-execution capability
- require inference, organization, diagnosis, solving, retrying, and multi-version output

This layer should make agents work as Wish, not merely describe Wish.

### 4. Evolution And Quality Layer

Primary folder:

- `wish-evolution-module/`

Purpose:

- remember mistakes inside the current conversation
- avoid repeating the same type of error
- enforce SSS+ quality without delaying forever
- keep platform safety handling lightweight

This layer turns correction into improvement.

### 5. Package Layer

Primary folder:

- `packages/`

Purpose:

- provide compact single-file builds
- let agents with limited context load Wish quickly
- prepare the project for future platform adapters

The package layer should not replace the source files.

It is a compiled or curated loading format for real-world agent use.

### 6. Evaluation Layer

Primary folder:

- `evals/`

Purpose:

- test whether another agent actually loaded Wish
- catch failures such as meta-explaining, scope drift, over-asking, and weak correction behavior
- create repeatable prompts for OpenClaw, Hermes, Codex, and generic agents

The evaluation layer is what turns "I think the repo works" into "we tested the repo behavior."

### 7. Future Platform Adapter Layer

Future folder:

- `platforms/`

Purpose:

- provide platform-specific loading instructions
- adapt Wish for Codex skills, Hermes workflows, OpenClaw instructions, Cursor rules, Claude plugins, and similar environments

Do not build this layer before the package and evaluation layers are stable.

### 8. Future Demo Layer

Current folder:

- `demo/`

Purpose:

- reserve space for a later web playground

Do not build a web demo until the persona package is stable and external agent tests show that the behavior is reliable.

## Recommended Repository Direction

The next stable structure should be:

```text
wish-persona/
├── AGENTS.md
├── README.md
├── QUICKSTART_FOR_AGENTS.md
├── TODO.md
├── ROADMAP.md
├── FILE_MANIFEST.md
│
├── character/
├── persona/
├── philosophy/
├── dialogue/
├── examples/
├── docs/
├── wish-evolution-module/
│
├── packages/
│   └── wish-core-agent.md
│
├── evals/
│   ├── README.md
│   ├── expected-behavior.md
│   └── prompts/
│
└── demo/
```

Future expansion can add:

```text
platforms/
├── codex/
├── hermes/
├── openclaw/
├── cursor/
└── generic-agent/
```

## What Not To Copy Blindly

Some advanced agent repositories include hooks, commands, landing pages, multiple plugin manifests, and full web demos.

Those are useful later, but adding them too early would create noise.

For `wish-persona`, the priority is:

1. stable persona behavior
2. single-file loading
3. repeatable external tests
4. platform adapters
5. public demo or landing page

## Success Criteria

This architecture is working when:

- a new agent can load Wish from `AGENTS.md`
- a limited-context agent can load Wish from `packages/wish-core-agent.md`
- an external tester can run `evals/prompts/*.txt`
- failures are recorded and converted into evolution rules
- platform adapters can be created without rewriting the whole persona
