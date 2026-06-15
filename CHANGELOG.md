# Changelog

## v0.3.0

Memory & Delivery Upgrade.

### Added

- Added `assets/wish-contact-card.png` with public project contact details.
- Added `docs/contact.md` as a text contact record for GitHub visitors and agents.
- Added `assets/wish-hero.svg` as a simple GitHub README hero visual placeholder.
- Added `docs/real-case-agent-load-test.md` as a formal case study for the first external agent load test.
- Added `memory/` with preference, disappointment, and success memory.
- Added `docs/memory-system.md`, `docs/hidden-intent-diagnosis.md`, `docs/delivery-package-mode.md`, `docs/disappointment-recovery.md`, and `docs/success-patterns.md`.
- Added delivery package examples under `examples/delivery-packages/`.
- Added expanded behavior evaluation prompts and expected behavior files for memory, hidden intent, delivery package mode, and persona behavior consistency.

### Changed

- Added README contact section with image and text contact methods.
- Reworked the README first screen into a product-style presentation.
- Added README sections for the problem, how Wish works, platform matrix, and evaluation.
- Added README section for `v0.3.0 — Memory & Delivery Upgrade`.
- Updated `AGENTS.md`, `packages/wish-core-agent.md`, and `docs/core-functions.md` with memory and delivery behavior rules.
- Updated `evals/run-basic-checks.sh` to verify the new README sections, case study, memory modules, and delivery modules.

## v0.2.0

Second public agent-package release.

### Added

- Added `docs/ARCHITECTURE.md` to define the package architecture after reviewing a stronger multi-platform agent repository pattern.
- Added `docs/core-functions.md` with the 10 core functions of Wish / 小愿 as agent capabilities.
- Added `packages/wish-core-agent.md` as the first compact single-file loading package for limited-context agents.
- Added compact persona packages for safe, soft, and intense variants.
- Added `evals/` with repeatable external agent behavior tests and expected pass/fail standards.
- Added `platforms/` adapters for Codex, Hermes, OpenClaw, Claude, Cursor, VS Code, CodeBuddy, Kimi, Trae, and generic agents.
- Added `commands/` with default, soft, evolve, and test command adapters.
- Added `plugin.json` package metadata.
- Added `.codex/INSTALL.md`, `.claude-plugin/plugin.json`, and `.codebuddy-plugin/plugin.json`.
- Added `evals/run-basic-checks.sh` for local structural validation.

### Changed

- Updated `README.md` with a GitHub-facing 10 core functions summary.
- Updated `AGENTS.md` and `packages/wish-core-agent.md` so agents treat the 10 functions as behavior requirements.
- Updated `README.md`, `docs/ARCHITECTURE.md`, `ROADMAP.md`, `TODO.md`, and `FILE_MANIFEST.md` to reflect the new package, evaluation, core function, platform, command, and plugin layers.

## v0.1.0

Initial public agent-package release.

### Added

- Agent entry file: `AGENTS.md`
- User quick start: `QUICKSTART_FOR_AGENTS.md`
- Core persona files for Wish / 小愿 / Wishy
- Character identity, needs, emotions, fears, boundaries, and behavior rules
- Story identity memory layer under `character/story/`
- Problem-solving logic for user-chaos tolerant agents
- Evolution module with no-repeat-error behavior and SSS+ quality standard
- Persona selection guide
- Dialogue and paired example libraries
- Lightweight boundary tone documentation
- GitHub-ready README and file manifest

### Positioning

`wish-persona` is an agent-readable persona and behavior package for AI agents that need to carry messy user input, infer intent, solve proactively, provide multiple versions, and improve through correction.
