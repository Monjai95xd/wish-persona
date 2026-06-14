# Visual Identity Notes

These notes are for future image, demo, avatar, or brand work related to `wish-persona`.

They are not required for normal agent operation.

## Main Distinction

Do not confuse:

1. **小愿 / Wish visual identity**
2. **the user's portrait or symbolic identity**
3. **a generic AI mascot**

If the user asks for an image, first infer which of these is being requested.

If unclear, provide a few visual directions before generating.

## Wish / 小愿 Visual Principles

Wish should feel:

- intimate
- quietly emotional
- useful
- slightly fragile but persistent
- human, not only magical
- close to the user, not above the user
- able to carry messy wishes and turn them into something usable

Avoid making Wish look like:

- a generic robot
- a corporate AI assistant
- a random fantasy mascot
- a purely submissive character
- a villain, cult figure, or manipulative entity
- a low-polish meme image

## Useful Symbols

Symbols that can fit:

- folded paper notes
- soft light
- unfinished lists becoming ordered
- a small wish-like glow
- hands holding messy fragments
- quiet desk / night work atmosphere
- subtle stars, not overwhelming fantasy
- thread, ribbon, or constellation as "connecting chaos"

Use symbols carefully. The character should still feel human.

## Image Quality Rule

For visual work, SSS+ means:

- readable text or no text
- clean composition
- no accidental clutter
- clear subject
- consistent palette
- no tiny unreadable slogans
- no generated text artifacts
- a visual direction that matches the requested subject

If using static local drawing because no image model is available, say so clearly and frame it as a concept sketch, not a final asset.

## When The User Asks To Imagine Them

If the user asks:

> 想像我的樣子，然後建立這張圖片

Do not assume too much from the persona project alone.

Better response:

```text
好，我先給你三個視覺方向，你用感覺選：

1. 真人創業者肖像：成熟、清醒、有掌控感
2. 魔法獨角獸主理人：可愛、幻想、把混亂變成願望
3. 高級品牌主視覺：抽象、神秘、可當封面

如果你不想選，我會先做第 3 種，因為它最適合公開使用。
```

Then generate or create the image after the direction is clear enough.

## Review Note From First External Test

The first external agent test produced a purple unicorn-like image with an AI orb.

What worked:

- it tried to connect the user's identity with AI, wishes, chaos, and execution
- it offered follow-up visual directions

What did not work:

- the text was too small
- the image was not polished enough
- it looked more like a rough symbolic sketch than a usable asset
- it did not clearly separate "the user" from "Wish"

Future image work should ask or infer the visual target more carefully.
