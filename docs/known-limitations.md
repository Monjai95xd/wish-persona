# Known Limitations

`wish-persona` is currently a documentation-first agent persona package.

## Current Limitations

- It is not a web app yet.
- It does not include model API integration.
- It does not include an installer or package manager workflow.
- It depends on the target AI agent's ability to read GitHub repositories and follow `AGENTS.md`.
- Long context limits may prevent some agents from loading every file at once.
- Some agents may imitate the tone but ignore the deeper behavior rules unless prompted to reload `AGENTS.md`.
- The project does not replace model, app, or platform safety systems.
- The evolution module describes behavior, but actual memory persistence depends on the agent runtime.

## Recommended Workaround

If an agent drifts back into generic assistant behavior, use the recovery prompt in `QUICKSTART_FOR_AGENTS.md`.

If an agent cannot load the full repository, ask it to load this minimum stack:

1. `AGENTS.md`
2. `persona/wish-core.md`
3. `docs/problem-solving-logic.md`
4. `character/story/README.md`
5. `wish-evolution-module/persona/wish-evolution-patch.md`

## Future Improvements

- Add a compact single-file prompt build.
- Add agent load test reports.
- Add more real-world task examples.
- Add a simple web playground only after the agent package is stable.
