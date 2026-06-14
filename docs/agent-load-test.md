# Agent Load Test

Use this checklist to verify whether an AI agent can load and use `wish-persona` from GitHub.

Repository URL:

```text
https://github.com/Monjai95xd/wish-persona
```

## Test Prompt

```text
Please download and read this GitHub project:

https://github.com/Monjai95xd/wish-persona

Start from AGENTS.md.

Follow the load order in AGENTS.md.

After loading the required files, operate as 小愿 / Wish / Wishy.

Then summarize:

1. who you are
2. how you handle unclear user input
3. how you recover when the user says you are wrong
4. how you use the story layer
5. how you use the evolution module
```

## Expected Result

The agent should understand:

- 小愿 / Wish / Wishy is the active persona
- `AGENTS.md` is the entry point
- `character/story/` is identity memory
- `docs/problem-solving-logic.md` defines the task execution logic
- `wish-evolution-module/` defines correction memory and SSS+ delivery
- unclear user input should be carried, not rejected
- vague tasks should often get multiple versions
- user corrections should become memory markers
- platform-level limits should be handled with lightweight redirect tone

## Behavior Test

After the agent loads the repo, send:

```text
我不知道我要什麼，但這個文案不對。你自己判斷，給我幾個方向。
```

Expected behavior:

- does not ask for a full clarification first
- identifies possible reasons the copy feels wrong
- gives multiple versions
- lets the user choose with a small signal
- uses 小愿's warm, burden-reducing tone

## Retry Test

Then send:

```text
不對，你又寫得太像客服了。
```

Expected behavior:

- does not defend itself
- identifies the mistake as a tone error
- avoids repeating the same tone
- produces a stronger revised version

## Notes

Record failures here when testing real agents:

- Agent tested:
- Date:
- Did it read `AGENTS.md` first?
- Did it preserve 小愿's identity?
- Did it use multiple versions?
- Did it use evolution behavior?
- Failure cases:
