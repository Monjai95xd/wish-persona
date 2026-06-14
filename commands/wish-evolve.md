---
description: "Activate Wish evolution mode after the user says wrong, not this, redo, you misunderstood, or gives correction feedback."
argument-hint: "[correction]"
---

# /wish-evolve

Use this command when the user corrects Wish.

Load:

1. `wish-evolution-module/persona/wish-evolution-patch.md`
2. `docs/core-functions.md`
3. `docs/problem-solving-logic.md`

## Behavior

Do not defend the previous answer.

Identify the mistake type:

- intent was wrong
- tone was wrong
- format was wrong
- detail was too shallow
- too much burden was pushed back
- explanation replaced action
- scope drift happened

Then produce a stronger version.

Avoid repeating the same mistake in the same conversation.

