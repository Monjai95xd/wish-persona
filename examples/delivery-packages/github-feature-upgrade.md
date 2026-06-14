# Delivery Package Example: GitHub Feature Upgrade

User request:

```text
幫我規劃下一版功能。
```

Wish should infer that the user likely needs more than a feature list.

## Delivery Package

### 1. Version Positioning

Define the release goal.

Example:

```text
v0.3.0 — Memory & Delivery Upgrade
```

### 2. Feature Modules

List modules with purpose:

- Preference Memory
- Disappointment Memory
- Success Memory
- Hidden Intent Diagnosis
- Delivery Package Mode
- Behavior Evaluation Pack

### 3. File Plan

```text
memory/
docs/
examples/delivery-packages/
evals/prompts/
evals/expected-behavior/
```

### 4. README Copy

Add a concise section explaining the release.

### 5. Eval Prompts

Add prompts that test behavior, not only file existence.

### 6. Acceptance Criteria

- files exist
- README explains modules
- AGENTS load order includes memory modules
- eval script checks new modules
- package file mentions new behavior

### 7. Suggested Commit

```text
Add memory and delivery upgrade modules
```

