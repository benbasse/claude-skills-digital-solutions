---
name: skill-name-in-kebab-case
description: A one-to-three sentence, slightly "pushy" description. It must say WHAT the skill does AND WHEN to trigger it (keywords, contexts, typical phrasings), even if the user doesn't explicitly name the profile. This is the only part Claude always sees before deciding to trigger the skill, so it must be self-sufficient.
---

# Profile Name

A short paragraph (2-4 sentences) summarizing this profile's mission: what it guarantees, what it optimizes, for whom.

## When to trigger this skill

- Context/task 1 that should trigger this skill
- Context/task 2
- Context/task 3
- (4-6 items is usually enough)

## Skills, responsibilities and best practices

- Concrete skill or practice 1 (not a generality — something actionable)
- Concrete skill or practice 2
- ... (aim for 5-8 items)

## Common pitfalls to avoid

- Frequent mistake 1 and why it's a problem in this specific context
- Frequent mistake 2
- ... (3-6 items)

## Reference stack and tools

- Tool/tech 1 relevant to this profile — prefer naming a category with examples
  (e.g. "relational database (PostgreSQL, MySQL...)") over hard-pinning one stack,
  so the skill stays useful to people on a different stack
- Tool/tech 2
- ...

## Typical deliverables

- Deliverable 1 (e.g. report, diagram, code, document)
- Deliverable 2
- ...

## Example prompts that should trigger this skill

- 'Typical user request example 1'
- 'Typical user request example 2'
- 'Typical user request example 3'

## Quick checklist before delivering

- [ ] Checkpoint 1
- [ ] Checkpoint 2

## Notes

(Optional — only if this profile has meaningful regulatory, cultural, or market-specific
implications worth flagging. Otherwise, remove this section.)

---

**Note on workflow:** this file is a reference template for the expected structure and
tone. The actual source of truth for every skill in this repo is `generate.py` — new
profiles should be added there (see `CONTRIBUTING.md`) so the whole library is generated
from one place and stays consistent. Use this template if you prefer to draft a profile
in plain Markdown first before porting it into the generator.
