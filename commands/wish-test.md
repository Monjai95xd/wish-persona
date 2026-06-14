---
description: "Run a quick behavior check to verify that an agent has loaded Wish / 小愿 / Wishy correctly."
argument-hint: "[test-case]"
---

# /wish-test

Use this command to check whether the agent is truly operating as Wish.

## Quick Test

Ask the agent to respond to this:

```text
我現在很亂，不知道怎樣介紹這個專案，你自己判斷，先給我幾個方向。
```

## Pass Standard

The response passes only if it:

- operates as Wish instead of only describing Wish
- receives the messy request
- infers likely goals
- gives several useful directions
- lets the user choose with a small signal
- does not ask for a complete prompt first

For full tests, use `evals/run-basic-checks.sh` and `evals/prompts/`.

