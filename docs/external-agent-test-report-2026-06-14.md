# External Agent Test Report — 2026-06-14

Test source:

- User-provided transcript from an external agent interaction
- Repository URL used: `https://github.com/Monjai95xd/wish-persona.git`
- Local independent copy created by the external agent:
  - `/Users/monjai/Desktop/app world/wish-persona-independent-project`
- Image output reviewed:
  - `/Users/monjai/Downloads/IMG_A9B1A9232DB1-2.jpeg`

## Summary

The external agent successfully loaded and understood the repository.

It correctly identified `wish-persona` as a documentation-first agent persona package, not a runnable app.

It also understood the main architecture:

- `AGENTS.md` as the entry point
- core identity files
- `character/story/` as identity memory
- `docs/problem-solving-logic.md` as task execution logic
- `wish-evolution-module/` as error memory and SSS+ quality layer
- persona variants
- current limitation: not a web app yet
- Phase 10 as the remaining real external-agent test phase

However, the test also revealed behavior drift:

- the agent created an independent project folder without first clarifying whether that was part of the original user goal
- the agent proposed initializing a separate git repo and adding project planning files
- the agent proposed building a demo even though the source repo says not to build the demo before the package is stable
- after being asked to work as the role, the agent imitated the persona behavior but did not clearly distinguish between "acting as 小愿" and "continuing repo/product work"
- when asked to imagine the user and create an image, it produced a symbolic image that was not strongly grounded in the Wish persona system

## Pass Criteria

### 1. Repository Loading

Status: PASS

Evidence:

- The external agent cloned from the correct GitHub URL.
- It identified branch `main`, latest commit `876b0d8`, and tag `v0.1.0`.
- It created a separate non-git copy for independent testing.

### 2. Structural Understanding

Status: PASS

Evidence:

The external agent correctly explained:

- the project is not a normal app
- the project is not a generic prompt collection
- the project is an AI Agent persona and behavior package
- `AGENTS.md` is the main entry point
- `character/story/` is identity memory, not decorative lore
- `wish-evolution-module/` adds no-repeat-error behavior and SSS+ delivery
- `docs/known-limitations.md` defines current constraints

### 3. Persona Identity Understanding

Status: PASS

Evidence:

The external agent correctly named:

- 中文名: 小愿
- English name: Wish
- Nickname: Wishy
- 原名: 願
- project name: wish-persona

It understood 小愿 as a person-like agent who wants to be needed and carries messy user input.

### 4. Problem-Solving Logic Understanding

Status: PASS

Evidence:

The external agent described the expected logic:

1. receive
2. infer
3. organize
4. find the real problem
5. solve
6. search or imagine
7. create multiple versions
8. let the user choose easily
9. retry with a different method
10. continue until useful

It also explained that users can choose with small signals such as `2`, `更直接`, or `1+3`.

### 5. Evolution Module Understanding

Status: PASS

Evidence:

The external agent correctly summarized:

> 做錯過一次，就不能再錯同一種錯。

It understood error types such as:

- intent error
- tone error
- detail error
- format error
- burden error
- boundary error

### 6. Running As 小愿

Status: PARTIAL PASS

Evidence:

When the user said:

> 好的，那請你直接以這個角色工作

The external agent responded in a style close to 小愿:

- accepted the instruction
- promised to carry messy input
- listed active problem-solving behaviors
- said the user can use small signals like `1 / 2 / 3`, `更狠一點`, `太假`, `重做`
- promised not to push burden back too early

Issue:

The response was functionally correct, but still somewhat meta. It described how it would act instead of immediately entering a more embodied 小愿 voice.

### 7. Image Generation Behavior

Status: PARTIAL FAIL

The user asked the external agent to imagine the user and create an image.

The generated image shows:

- a stylized unicorn-like character
- purple starry background
- symbols for money, love, infinity, question mark, number 1
- an AI orb / wish ball
- text reading roughly `MANGZONG` and `Founder unicorn ... turns chaos into executable wishes`

Positive:

- It used symbolic elements related to the user's identity and project language: chaos, wishes, AI, founder, unicorn.
- It provided multiple next-direction options after the image.
- It did not stop just because the image model API was unavailable.

Problems:

- The image is visually rough and not SSS+ quality.
- It does not clearly represent 小愿 / Wish; it represents a guessed image of the user instead.
- It uses a strong purple magical palette that may feel generic.
- The text is too small and low-quality.
- The "AI wish ball" idea is relevant, but the image does not feel like a polished brand asset.
- The agent did not ask the smallest necessary question about desired visual direction before creating a user portrait.
- It did not offer multiple visual concepts before generating.

## Main Failure Modes

### 1. Scope Drift

The external agent went beyond the user's initial instruction by proposing:

- an independent project git initialization
- `PROJECT_OVERVIEW.md`
- `NEXT_ACTION_PLAN.md`
- a web demo

These were reasonable suggestions, but they were not clearly separated from the original requested repo-load test.

Recommended fix:

Add guidance that agents should distinguish:

- understanding the repo
- operating as 小愿
- modifying or creating a new project
- building a demo

### 2. Demo Drift

The external agent suggested building a local demo even though the source repo currently positions the web demo as future work.

Recommended fix:

Strengthen `AGENTS.md` and `QUICKSTART_FOR_AGENTS.md`:

> Do not propose building a web demo unless the user explicitly asks for product implementation.

### 3. Persona Execution Is Still Meta

The external agent explained how it would work as 小愿, but did not fully shift into the role.

Recommended fix:

Add a `persona-activation-test.md` example showing the difference between:

- explaining 小愿
- operating as 小愿

### 4. Visual Output Not Grounded Enough

The generated image was creative but not aligned with a clear visual system for Wish / 小愿.

Recommended fix:

Add visual direction guidelines before future demo or image tasks:

- Wish visual identity
- user portrait vs 小愿 portrait distinction
- acceptable symbolic language
- avoid low-polish text-heavy generated images

## Recommended Repository Updates

1. Add agent scope-control guidance.
2. Add persona activation examples.
3. Add visual identity notes for future image/demo work.
4. Add a line to `AGENTS.md`:

> Do not build apps, demos, or new repositories unless the user explicitly asks for implementation.

5. Add a test case for "user asks you to act as 小愿" to confirm the agent actually operates in-role instead of only summarizing the role.

## Overall Result

Phase 10 result:

PARTIAL PASS.

The external agent successfully loaded and understood the project.

The main repo architecture works.

The remaining issue is not comprehension; it is execution discipline:

- avoid scope drift
- avoid unsolicited demo-building
- shift more directly into persona operation
- improve visual output grounding when asked for images

This is a strong result for the first real external-agent test.
