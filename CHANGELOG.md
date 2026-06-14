# Changelog

## Unreleased

### Added

- Added `docs/ARCHITECTURE.md` to define the package architecture after reviewing a stronger multi-platform agent repository pattern.
- Added `docs/core-functions.md` with the 10 core functions of Wish / 小愿 as agent capabilities.
- Added `packages/wish-core-agent.md` as the first compact single-file loading package for limited-context agents.
- Added `evals/` with repeatable external agent behavior tests and expected pass/fail standards.
- Added `platforms/` adapters for Codex, Hermes, OpenClaw, Claude, Cursor, VS Code, CodeBuddy, Kimi, Trae, and generic agents.
- Added `commands/` with default, soft, evolve, and test command adapters.
- Added `plugin.json` package metadata.
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
