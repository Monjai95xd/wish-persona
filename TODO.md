# Wish Persona Project Tasks

This file is the working task list for `wish-persona`.

Use it as the single source of truth for each round:

- add new tasks here
- edit tasks when scope changes
- split large tasks when needed
- mark completed tasks with `[x]`
- keep unfinished work visible

## Status Legend

- `[ ]` Not started
- `[~]` In progress
- `[x]` Completed
- `[!]` Blocked or needs user input

## Current Objective

Make `wish-persona` a GitHub-ready, agent-readable persona package that another user can give to OpenClaw, Hermes Agent, Codex, or another AI agent with a simple instruction:

> Download this GitHub project, understand it, and operate as 小愿 / Wish / Wishy.

## Phase 0 — Project Control

- [x] Create this persistent task list.
- [~] Keep this file updated at the start and end of every work round.
- [x] Add all new files to `FILE_MANIFEST.md` whenever the repository structure changes.
- [x] Keep `README.md`, `FILE_MANIFEST.md`, and `ROADMAP.md` aligned after structural changes.

## Phase 1 — Agent Entry Layer

Goal: make the repository immediately understandable to AI agents after download.

- [x] Create `AGENTS.md` as the primary agent entry file.
- [x] Define the required load order for agents.
- [x] Explain that this is a persona identity package, not a normal prompt collection.
- [x] Tell agents to treat 小愿 / Wish / Wishy as their active persona after loading.
- [x] Include the operating rule: infer, organize, diagnose, solve, search when needed, imagine when needed, and provide multiple versions when useful.
- [x] Keep `AGENTS.md` short enough for agents to follow without losing the role.

Acceptance criteria:

- [x] A user can paste only the GitHub link and tell an agent to read `AGENTS.md`.
- [x] The agent can identify which files are required, optional, and reference-only.
- [x] The agent understands that `character/story/` is identity memory, not decorative lore.

## Phase 2 — Quick Start For Users

Goal: make the project easy for non-technical users to use with AI agents.

- [x] Create `QUICKSTART_FOR_AGENTS.md`.
- [x] Add copy-paste prompts for OpenClaw.
- [x] Add copy-paste prompts for Hermes Agent.
- [x] Add generic copy-paste prompts for any AI agent.
- [x] Add a short "what to do if the agent ignores the persona" recovery prompt.
- [x] Add a short "how to ask 小愿 to start a task" example.

Acceptance criteria:

- [x] A user who has never used GitHub can still copy a prompt and use the repo.
- [x] The quick start does not require the user to understand the internal folder structure.
- [x] The quick start clearly says to begin from `AGENTS.md`.

## Phase 3 — Story Layer Integration

Goal: integrate `character/story/` as the identity grounding layer.

- [x] Fix `character/story/README.md` paths so they point to `character/story/*.md`.
- [x] Explain that story files help connected AI agents maintain 小愿's human identity.
- [x] Add `character/story/` to `README.md` repository structure.
- [x] Add all `character/story/` files to `FILE_MANIFEST.md`.
- [x] Mention story files in the README quick start.
- [x] Decide whether `character/story/` is required or recommended in the agent load order.

Acceptance criteria:

- [x] No file path in `character/story/README.md` points to the wrong location.
- [x] The README clearly explains why the story layer exists.
- [x] An agent loading the project understands that story files are identity memory.

## Phase 3.5 — Evolution Module Integration

Goal: integrate `wish-evolution-module/` as the evolution, error memory, and SSS+ quality layer.

- [x] Understand `wish-evolution-module/` purpose and relationship to the core persona.
- [x] Fix `wish-evolution-module/README.md` paths so they point to module-local files.
- [x] Add `wish-evolution-module/` to `README.md` repository structure.
- [x] Add all `wish-evolution-module/` files to `FILE_MANIFEST.md`.
- [x] Include the evolution module in `AGENTS.md` load order.
- [x] Review safety language in the evolution module so it stays lightweight and does not become a policy manual.
- [x] Decide whether `wish-evolution-module/persona/wish-evolution-patch.md` should be appended to all persona variants or only agent-facing load flows.

Acceptance criteria:

- [x] An agent loading the project understands that evolution means remembering mistakes and avoiding repeated errors.
- [x] The SSS+ standard is positioned as a quality standard, not a delay excuse.
- [x] The module is fully aligned with the main project's lightweight safety position.

## Phase 4 — Core Persona Package Cleanup

Goal: make the core persona files consistent and agent-friendly.

- [x] Review `persona/wish-core.md` against `docs/problem-solving-logic.md`.
- [x] Review `persona/wish-safe.md` for lightweight safety language.
- [x] Review `persona/wish-soft.md` and add multi-version problem solving where appropriate.
- [x] Review `persona/wish-intense.md` and keep intensity without making safety policy heavy.
- [x] Add a concise "which persona file to use" guide.
- [x] Ensure all persona files preserve canonical naming: 小愿, Wish, Wishy, 願.

Acceptance criteria:

- [x] All persona variants share the same core identity.
- [x] The differences between Core, Safe, Soft, and Intense are clear.
- [x] No persona file tells the agent to push clarification burden back to the user too early.

## Phase 5 — Problem-Solving Logic Expansion

Goal: make 小愿's execution logic detailed enough for real task handling.

- [x] Add examples showing how to produce multiple versions when the user is vague.
- [x] Add examples showing when to search the web instead of asking the user.
- [x] Add examples showing when to imagine plausible directions.
- [x] Add examples showing how to recover after a wrong answer.
- [x] Add "smallest necessary question" examples.
- [x] Connect `docs/problem-solving-logic.md` to relevant dialogue examples.

Acceptance criteria:

- [x] The logic covers unclear user intent, missing information, creative work, factual work, and retry loops.
- [x] The user can choose by small signals such as "2", "more direct", or "combine 1 and 3".
- [x] The agent is told to keep solving instead of returning the burden too early.

## Phase 6 — Examples And Dialogue Library

Goal: make the repository easier for agents to imitate through examples.

- [x] Add more Traditional Chinese messy instruction examples.
- [x] Add more English messy instruction examples.
- [x] Add examples for rude user feedback.
- [x] Add examples for repeated failure and retry.
- [x] Add examples for user not knowing what they want.
- [x] Add examples for lightweight redirection tone.
- [x] Add paired Chinese / English examples where useful.

Acceptance criteria:

- [x] Examples demonstrate multi-version output.
- [x] Examples demonstrate low-burden user selection.
- [x] Examples do not over-explain safety policies.

## Phase 7 — GitHub-Ready Documentation

Goal: make the GitHub repo clear and trustworthy when opened in a browser.

- [x] Update `README.md` for GitHub visitors.
- [x] Add a "Use With AI Agents" section near the top of `README.md`.
- [x] Add a "For humans" quick explanation.
- [x] Add a "For agents" quick explanation.
- [x] Add the recommended copy-paste instruction.
- [x] Ensure the README does not become too long for practical use.
- [x] Keep the emotional identity visible without hiding the usage flow.

Acceptance criteria:

- [x] A GitHub visitor can understand the repo in under one minute.
- [x] A user can find the agent usage prompt without scrolling too far.
- [x] The README still preserves 小愿's emotional identity.

## Phase 8 — Git Repository Setup

Goal: prepare the local folder for GitHub upload.

- [x] Confirm whether this folder is already a git repository.
- [x] Run `git init` if needed.
- [x] Create or review `.gitignore`.
- [x] Remove local `.DS_Store` files before the first commit.
- [x] Ensure `.DS_Store` is ignored by git.
- [x] Check all files that should be committed.
- [x] Confirm no private, temporary, or unrelated files are included.
- [x] Create the initial commit.

Acceptance criteria:

- [x] `git status` is clean after commit.
- [x] The commit contains the complete persona package.
- [x] No unrelated local files are included.

## Phase 9 — GitHub Upload

Goal: publish the project so users can give the GitHub link to agents.

- [x] Confirm GitHub repo name, likely `wish-persona`.
- [x] Confirm whether the repo should be public.
- [x] Create a GitHub repository if connector or `gh` permissions allow it.
- [x] If repo creation is not available, ask the user to create an empty GitHub repo and provide the URL.
- [x] Add the GitHub remote.
- [x] Push `main` to GitHub.
- [x] Confirm the GitHub URL works.

Acceptance criteria:

- [x] The repo is accessible from GitHub.
- [x] The default branch contains `AGENTS.md`, `README.md`, and all persona files.
- [x] A user can copy the GitHub URL and give it to an agent.

## Phase 10 — Agent Load Test

Goal: verify that another agent can understand and use the repo.

- [x] Create a test prompt for OpenClaw / Hermes / generic agent.
- [x] Create `docs/agent-load-test.md` as the documented test checklist.
- [x] Ask an external agent to load the repo from the GitHub URL.
- [x] Check whether the external agent reads `AGENTS.md` first.
- [x] Check whether the external agent understands 小愿's identity.
- [x] Check whether the external agent uses multi-version problem solving.
- [x] Check whether the external agent avoids over-heavy safety policy language.
- [x] Record real external-agent failure cases after testing.

Acceptance criteria:

- [x] The agent can describe 小愿's identity correctly.
- [x] The agent can respond to a vague task with multiple useful versions.
- [x] The agent can use story files as identity grounding.

Follow-up improvements from first external test:

- [x] Add scope-control guidance so agents do not propose new repos, demos, or implementation unless explicitly asked.
- [x] Add persona activation examples that distinguish explaining 小愿 from operating as 小愿.
- [x] Add visual identity notes for future image/demo tasks.
- [x] Add an activation test case for "please work as 小愿 now".

## Phase 11 — Release Packaging

Goal: make the first public version easy to identify and improve later.

- [x] Add a `CHANGELOG.md`.
- [x] Add version label `v0.1.0` after first GitHub upload.
- [x] Update `ROADMAP.md` to match the new agent-package direction.
- [x] Add known limitations.
- [x] Add future ideas for web demo only after the persona package is stable.

Acceptance criteria:

- [x] Users can tell what version they are using.
- [x] Future changes can be tracked clearly.
- [x] The project remains documentation-first until the agent package is stable.

## Not Doing Yet

- [ ] Do not build the web demo yet.
- [ ] Do not add model API integration yet.
- [ ] Do not turn the repo into a generic chatbot app.
- [ ] Do not add heavy safety policy duplication.
- [ ] Do not rename 小愿 / Wish / Wishy / 願.

## Current Next Task

- [ ] Start follow-up improvements from external-agent test report.
