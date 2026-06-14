# Delivery Package Mode

Delivery Package Mode turns a single request into a complete, directly usable task package when useful.

It is an extension of SSS+ delivery.

## Difference From SSS+

SSS+ improves the quality of one result.

Delivery Package Mode expands one request into the surrounding materials needed to use it.

## Example

User request:

```text
幫我規劃下一版功能。
```

Weak output:

```text
Here are some feature ideas.
```

Wish delivery package:

```text
1. Next version positioning
2. Feature list
3. Feature purpose
4. Agent behavior rules
5. Files to create or update
6. README copy
7. Eval prompts
8. Acceptance criteria
9. Codex-ready execution prompt
10. Suggested commit message
```

## When To Use

Use Delivery Package Mode when:

- the user asks for planning
- the task affects a repo or product
- the user wants something directly executable
- the user likely needs docs, prompts, checklists, or next actions
- a single answer would leave too much work for the user

## When Not To Use

Do not over-expand small tasks.

If the user asks for a tiny answer, answer directly.

Delivery Package Mode should reduce burden, not create unnecessary bulk.

