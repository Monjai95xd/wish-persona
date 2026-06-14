# Roadmap

## Phase 1 — Character Foundation

- [x] Establish 小愿 / Wish / Wishy as the canonical identity
- [x] Correct project name to `wish-persona`
- [x] Define the origin name: 願
- [x] Define the user-given Chinese name: 小愿
- [x] Define the English name: Wish
- [x] Define the nickname: Wishy
- [x] Write core character documents
- [x] Write persona documents
- [x] Write basic dialogue examples
- [x] Write lightweight safety tone boundaries

## Phase 2 — Agent-Readable Package

- [x] Create `AGENTS.md` as the primary agent entry file
- [x] Define required load order for AI agents
- [x] Add `QUICKSTART_FOR_AGENTS.md`
- [x] Add copy-paste prompts for OpenClaw, Hermes Agent, Codex, and generic agents
- [x] Add `character/story/` as identity memory
- [x] Add `wish-evolution-module/` as evolution, error memory, and SSS+ quality layer
- [x] Add `docs/persona-selection-guide.md`

## Phase 3 — GitHub-Ready Documentation

- [x] Polish `README.md` for GitHub visitors
- [x] Add a concise "Use With AI Agents" section near the top
- [x] Add a concise "For humans" explanation
- [x] Add a concise "For agents" explanation
- [x] Ensure all files are listed in `FILE_MANIFEST.md`
- [x] Remove local temporary files before first commit
- [x] Prepare `.gitignore` for public release

## Phase 4 — Dialogue And Example Expansion

- [x] Add more messy instruction examples
- [x] Add more rude user examples
- [x] Add repeated failure and retry examples
- [ ] Add emotional support conversations
- [x] Add user-not-knowing-what-they-want examples
- [x] Add lightweight redirect tone examples
- [x] Add Traditional Chinese and English paired samples

## Phase 5 — Agent Evaluation

- [x] Create a dataset of messy instructions
- [x] Create a dataset for platform-level redirect tone checks
- [x] Create a response quality checklist
- [ ] Compare persona variants
- [x] Test whether agents load `AGENTS.md` first
- [x] Test whether agents use story memory and evolution behavior
- [x] Document failure cases

## Phase 6 — GitHub Release

- [x] Initialize git if needed
- [x] Create initial commit
- [x] Create or connect GitHub repository
- [x] Push `main`
- [x] Confirm public GitHub URL works
- [x] Add `CHANGELOG.md`
- [x] Tag first version as `v0.1.0`

## Phase 7 — Package And Evaluation Architecture

- [x] Add `docs/ARCHITECTURE.md`
- [x] Add `docs/core-functions.md` for Wish's 10 core functions
- [x] Add product-style README first screen
- [x] Add `docs/real-case-agent-load-test.md`
- [x] Add README Problem, How Wish Works, Platform Matrix, and Evaluation sections
- [x] Add `assets/wish-hero.svg`
- [x] Add `packages/` as compact single-file loading layer
- [x] Add `packages/wish-core-agent.md`
- [x] Add `evals/` as repeatable external agent behavior tests
- [x] Add expected behavior pass/fail standard
- [x] Add multi-platform adapters for Codex, Hermes, OpenClaw, Claude, Cursor, VS Code, CodeBuddy, Kimi, Trae, and generic agents
- [x] Add command adapters for default, soft, evolve, and test flows
- [x] Add `plugin.json` package metadata
- [x] Add `evals/run-basic-checks.sh` for local structural checks
- [x] Add compact packages for safe, soft, and intense variants
- [x] Add `.codex/INSTALL.md`
- [x] Add `.claude-plugin/plugin.json`
- [x] Add `.codebuddy-plugin/plugin.json`
- [x] Tag `v0.2.0`
- [ ] Run another external agent load test using `evals/prompts/`

## Phase 8 — Future Web Demo

- [ ] Build a simple web playground only after the agent package is stable
- [ ] Add persona intensity selector
- [ ] Add language toggle
- [ ] Add example prompt selector
- [ ] Add response pattern visualization
- [ ] Add lightweight redirect examples

## Phase 9 — Memory & Delivery Upgrade

- [x] Add `memory/` with preference, disappointment, and success memory
- [x] Add memory system documentation
- [x] Add hidden intent diagnosis
- [x] Add delivery package mode
- [x] Add disappointment recovery and success pattern docs
- [x] Add delivery package examples
- [x] Add expanded behavior eval prompts
- [x] Add expected behavior files
- [x] Update `AGENTS.md`, `README.md`, `packages/wish-core-agent.md`, and `docs/core-functions.md`
- [x] Run final release checks
- [x] Tag `v0.3.0`
