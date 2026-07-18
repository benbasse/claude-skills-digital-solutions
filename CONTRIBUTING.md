# Contributing

Thanks for wanting to grow this skills library!

## Adding a new profile

1. Pick the right category under `skills/` (`dev`, `security`, `design-product`,
   `business-strategy`, `marketing`, `data`, `context-specific`) — or propose a new one
   if none fits (open an issue first if you're unsure).
2. Open `generate.py` and add a new `add(...)` call for your profile, following the
   pattern of the existing entries. This is the single source of truth for every
   `SKILL.md` in the repo — please don't hand-write a `SKILL.md` directly, since it will
   drift from the generator and get overwritten next time someone regenerates.
   `docs/TEMPLATE.md` shows the expected structure/tone if you want to draft the content
   in plain Markdown first.
3. Follow these rules for the frontmatter `description`:
   - It must state **what** the skill does AND **when** to trigger it, somewhat
     "pushy" — Claude tends to under-trigger skills, so be explicit about the contexts
     that should fire it, including ones where the user never names the profile.
   - One to three sentences, no more.
4. Keep each generated `SKILL.md` under ~500 lines. If content overflows, add a
   `references/` subfolder with detailed files linked from `SKILL.md`.
5. Run the generator to produce the file:

   ```bash
   python3 generate.py
   ```

6. Add your profile to the matching table in `README.md`.

## Editing an existing profile

- Edit the corresponding entry in `generate.py`, then re-run `python3 generate.py`.
- Keep the same section structure as the rest of the repo (see `docs/TEMPLATE.md`).
- Don't edit a `SKILL.md` file directly — it will be silently overwritten the next time
  `generate.py` runs, and CI checks that generated output matches what's committed.

## Writing style

- English, direct and actionable tone — avoid generalities like "write good code" in
  favor of concrete, checkable practices.
- Every list item should add new information, not reword another item.
- Prefer technology-agnostic guidance (name a category with examples, e.g. "relational
  database (PostgreSQL, MySQL...)") over hard-pinning one specific stack, so a skill
  stays useful to contributors on a different stack. The `context-specific/` category is
  the place for genuinely specialized, less-generic content (payments, logistics,
  localization).

## Pull requests

- One PR = one profile added or changed (avoid grab-bag PRs).
- Briefly describe why this profile is useful / what changed.
- CI runs `python3 generate.py` and fails the build if the committed `skills/` tree
  doesn't match the generator's output — run it locally before pushing.
