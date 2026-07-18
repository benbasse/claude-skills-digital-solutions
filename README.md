# claude-skills-digital-solutions

[![License: MIT](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](CONTRIBUTING.md)
[![Skills](https://img.shields.io/badge/skills-37-orange.svg)](skills)

A library of **37 Claude Skills**, organized by professional role, for structuring and
shipping complete digital products — from backend engineering to business strategy,
through security, design and marketing.

Each skill packages the mindset, best practices, common pitfalls and typical deliverables
of a real-world profile (Backend Developer, Pentester, Product Manager, CTO, SEO
Specialist...) into a `SKILL.md` file that Claude loads automatically when a task matches
it. The core library is technology-agnostic by design — the practices apply whether
you're on Next.js/NestJS, Django, Rails or anything else. Three profiles under
`skills/context-specific/` (payments/fintech, logistics, localization) go deeper into a
more specialized, less generic domain and were originally shaped by building a
multi-tenant, mobile-money-driven, cash-on-delivery SaaS platform for an emerging market —
kept as a concrete example of a fully worked-out context, and a useful base to fork if
you're building something similar.

## What is a Claude Skill?

A skill is a `SKILL.md` file (YAML frontmatter + Markdown instructions) that Claude
consults automatically when a task matches its description. See the [official Anthropic
documentation on Agent Skills](https://docs.claude.com) for the technical mechanism
(progressive loading, bundled resources, etc.).

Every `SKILL.md` in this repo follows a common structure:

1. **Frontmatter** (`name`, `description`) — what Claude always sees to decide whether to
   trigger the skill.
2. **Mission** of the profile
3. **When to trigger this skill**
4. **Skills, responsibilities and best practices**
5. **Common pitfalls to avoid**
6. **Reference stack and tools** (technology-agnostic — named as categories with
   examples, not a hard dependency)
7. **Typical deliverables**
8. **Example prompts** that should trigger the skill
9. **Quick checklist** (where relevant)
10. **Notes** (where relevant — e.g. legal/regulatory caveats)

## Repo structure

```
skills/
├── dev/                      Engineering (10 profiles)
├── security/                 Offensive / defensive / governance security (7 profiles)
├── design-product/           Design & Product (4 profiles)
├── business-strategy/        Business & Strategy (6 profiles)
├── marketing/                Marketing (4 profiles)
├── data/                     Data (3 profiles)
└── context-specific/         Fintech / logistics / localization (3 profiles)
```

Every `SKILL.md` is generated from `generate.py`, the single source of truth for the
whole library — see [`CONTRIBUTING.md`](CONTRIBUTING.md) before editing a skill by hand.

## Full list of 37 profiles

### 🛠️ Engineering (`skills/dev/`)
| Profile | Folder |
|---|---|
| Backend Developer | `backend-developer` |
| Frontend Developer | `frontend-developer` |
| Mobile Developer | `mobile-developer` |
| Data Engineer | `data-engineer` |
| ML / AI Engineer | `ml-ai-engineer` |
| QA / Test Engineer | `qa-test-engineer` |
| Database Administrator (DBA) | `database-administrator` |
| DevOps Engineer | `devops` |
| SRE (Site Reliability Engineer) | `sre` |
| Solutions / Software Architect | `solutions-architect` |

### 🔐 Security (`skills/security/`)
| Profile | Folder |
|---|---|
| Pentester | `pentester` |
| SOC Analyst | `soc-analyst` |
| Blue Team | `blue-team` |
| Red Team | `red-team` |
| Purple Team | `purple-team` |
| CISO / GRC | `ciso-grc` |
| Incident Responder / Forensics | `incident-responder` |

### 🎨 Design & Product (`skills/design-product/`)
| Profile | Folder |
|---|---|
| UI/UX Designer | `ui-ux-designer` |
| Product Manager | `product-manager` |
| UX Researcher | `ux-researcher` |
| Accessibility Specialist | `accessibility-specialist` |

### 📈 Business & Strategy (`skills/business-strategy/`)
| Profile | Folder |
|---|---|
| CEO / Executive Leadership | `ceo` |
| CTO | `cto` |
| Business Analyst | `business-analyst` |
| Project Manager / Scrum Master | `project-manager` |
| Legal & Compliance | `legal-compliance` |
| Growth / Sales Specialist | `growth-sales` |

### 📣 Marketing (`skills/marketing/`)
| Profile | Folder |
|---|---|
| SEO Specialist | `seo-specialist` |
| Content Marketing / Copywriter | `content-marketing` |
| SEA / Paid Ads Specialist | `paid-ads-sea` |
| Social Media / Community Manager | `social-media-manager` |

### 📊 Data (`skills/data/`)
| Profile | Folder |
|---|---|
| Data Analyst | `data-analyst` |
| Data Scientist | `data-scientist` |
| BI Analyst | `bi-analyst` |

### 🌍 Context-specific (`skills/context-specific/`)
| Profile | Folder |
|---|---|
| Payment / Fintech Integration Specialist | `payment-integration-specialist` |
| Logistics Operations Specialist | `logistics-operations-specialist` |
| Localization Specialist | `localization-specialist` |

## Installation / usage

### With Claude Code / Claude Desktop (local skills)

Copy the skill folder(s) you want into your user skills directory:

```bash
git clone https://github.com/benbasse/claude-skills-digital-solutions.git
cp -r claude-skills-digital-solutions/skills/dev/backend-developer ~/.claude/skills/
```

Or use the provided script to install several at once:

```bash
./scripts/install.sh              # installs all 37 skills
./scripts/install.sh dev security # installs only these categories
```

### With claude.ai (manual upload)

On claude.ai, in a project's or conversation's custom skills settings, upload the
`SKILL.md` file of the profile you want directly (or the full folder if it contains
additional resources).

## Adding a new profile

Use the template in [`docs/TEMPLATE.md`](docs/TEMPLATE.md) and follow the existing
section structure to stay consistent with the rest of the repo. See
[`CONTRIBUTING.md`](CONTRIBUTING.md) for the full process — every skill is generated from
`generate.py`, the single source of truth for the library.

## Roadmap

- [ ] Add executable scripts/checklists (e.g. a pre-deploy compliance checklist script)
- [ ] Add detailed `references/` files for the denser profiles (pentester,
      payment-integration-specialist)
- [ ] Add trigger evals per skill (does the description actually fire the skill when it
      should?)
- [ ] Explore additional context-specific profile packs for other verticals (e.g.
      healthtech, edtech)

## About the author

Built and maintained by **Benbasse** — [github.com/benbasse](https://github.com/benbasse).

This library grew out of building real multi-tenant SaaS products end to end (backend,
security, product, growth) and wanting a reusable way to bring the right expert mindset
into Claude for each part of the job. Issues, discussions and PRs are welcome — see
[`CONTRIBUTING.md`](CONTRIBUTING.md).

## License

See [`LICENSE`](LICENSE). Content is provided "as is", to be adapted to your real
context — in particular, the legal/regulatory sections do not constitute legal advice.
