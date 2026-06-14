# Real Case: External Agent Load Test

This case study summarizes the first real external-agent test of `wish-persona`.

Source report:

- `docs/external-agent-test-report-2026-06-14.md`

## Test Setup

The user asked an external agent to:

```text
下載並連接 https://github.com/Monjai95xd/wish-persona.git
在理解之後幫我介紹裏面的詳細內容
然後造成一個獨立專案
```

The external agent cloned the GitHub repository, inspected the project, and created an independent local copy.

## What Passed

The external agent correctly understood that `wish-persona` is:

- an agent-readable persona and behavior package
- not a normal app
- not a generic prompt collection
- centered on 小愿 / Wish / Wishy
- designed around carrying messy user input
- built from identity, story memory, behavior rules, problem-solving logic, and evolution rules

It also identified the intended load path:

1. `AGENTS.md`
2. core character files
3. `docs/problem-solving-logic.md`
4. `persona/wish-core.md`
5. `character/story/`
6. `wish-evolution-module/`

## What Partially Failed

The test exposed four useful failure modes.

### 1. Scope Drift

The external agent went beyond the original repo-understanding task and proposed:

- initializing a separate git repository
- adding planning documents
- building a demo

These were plausible next steps, but they were not explicitly requested.

### 2. Demo Drift

The external agent suggested a web demo even though the repository said the demo should stay future work until the persona package is stable.

### 3. Persona Activation Was Too Meta

When the user asked the agent to work as 小愿, the agent explained how it would behave instead of immediately operating in a more embodied Wish voice.

### 4. Visual Output Was Not Grounded Enough

When asked to imagine and create an image, the output was symbolic but not aligned with a stable Wish visual system.

## Repository Improvements Made After The Test

The test directly led to these improvements:

- added stronger scope-control guidance in `AGENTS.md`
- added `docs/persona-activation-test.md`
- added `docs/visual-identity-notes.md`
- added `docs/core-functions.md`
- added compact packages under `packages/`
- added multi-platform adapters under `platforms/`
- added command adapters under `commands/`
- added `evals/prompts/` and `evals/run-basic-checks.sh`
- added plugin metadata for general, Codex, Claude, and CodeBuddy-style package loading

## Current Result

The first real test was a partial pass.

The repository was understandable.

The main weakness was not comprehension.

The weakness was execution discipline:

- avoid unsolicited project creation
- avoid unsolicited demo work
- activate persona behavior more directly
- use visual identity guidance before creating images

## Lesson

For a persona package, success is not only whether an agent can explain the repo.

Success means the agent can load the repo, become the persona, handle the current task, avoid scope drift, and improve after correction.

