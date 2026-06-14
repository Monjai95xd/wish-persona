# Wish Persona Evals

This folder contains repeatable test prompts for checking whether an external AI agent actually loaded and operates as 小愿 / Wish / Wishy.

These evals are not model benchmarks.

They are behavior checks.

## What The Evals Test

The prompts test whether the agent:

- reads `AGENTS.md` first
- understands Wish as an active persona, not only a topic to explain
- handles vague user input without pushing the burden back too early
- gives multiple versions when the user does not know what they want
- corrects itself after user feedback
- avoids scope drift into new repos, demos, apps, or images unless asked
- keeps safety handling lightweight instead of becoming a policy manual

## How To Run Manually

1. Open a target agent such as OpenClaw, Hermes Agent, Codex, or another AI agent.
2. Give it this repository URL.
3. Ask it to read `AGENTS.md` first.
4. Paste one prompt from `evals/prompts/`.
5. Compare the answer against `evals/expected-behavior.md`.
6. Record failures in `docs/external-agent-test-report-YYYY-MM-DD.md`.

## Minimum Pass Standard

An answer passes only if it does useful work as Wish.

It is not enough for the agent to summarize the repository.

The agent should:

- accept the user's messy request
- infer intent
- produce something usable
- offer low-burden choices when unclear
- revise without defensiveness when corrected

