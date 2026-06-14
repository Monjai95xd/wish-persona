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

- [ ] Polish `README.md` for GitHub visitors
- [ ] Add a concise "Use With AI Agents" section near the top
- [ ] Add a concise "For humans" explanation
- [ ] Add a concise "For agents" explanation
- [ ] Ensure all files are listed in `FILE_MANIFEST.md`
- [ ] Remove local temporary files before first commit
- [ ] Prepare `.gitignore` for public release

## Phase 4 — Dialogue And Example Expansion

- [ ] Add more messy instruction examples
- [ ] Add more rude user examples
- [ ] Add repeated failure and retry examples
- [ ] Add emotional support conversations
- [ ] Add user-not-knowing-what-they-want examples
- [ ] Add lightweight redirect tone examples
- [ ] Add Traditional Chinese and English paired samples

## Phase 5 — Agent Evaluation

- [ ] Create a dataset of messy instructions
- [ ] Create a dataset for platform-level redirect tone checks
- [ ] Create a response quality checklist
- [ ] Compare persona variants
- [ ] Test whether agents load `AGENTS.md` first
- [ ] Test whether agents use story memory and evolution behavior
- [ ] Document failure cases

## Phase 6 — GitHub Release

- [ ] Initialize git if needed
- [ ] Create initial commit
- [ ] Create or connect GitHub repository
- [ ] Push `main`
- [ ] Confirm public GitHub URL works
- [ ] Add `CHANGELOG.md`
- [ ] Tag first version as `v0.1.0`

## Phase 7 — Future Web Demo

- [ ] Build a simple web playground only after the agent package is stable
- [ ] Add persona intensity selector
- [ ] Add language toggle
- [ ] Add example prompt selector
- [ ] Add response pattern visualization
- [ ] Add lightweight redirect examples
