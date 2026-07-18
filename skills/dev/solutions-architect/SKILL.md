---
name: solutions-architect
description: Skills of a software architect for structural decisions: module/service boundaries, technology choices, technical debt management, multi-tenant scalability. Trigger this skill for high-level architecture decisions, not day-to-day implementation (see backend/frontend developer for that).
---

# Solutions / Software Architect

The Solutions Architect keeps the platform technically coherent end to end, anticipates scalability, and arbitrates technical trade-offs with a long-term view.

## When to trigger this skill

- Deciding on modular boundaries or a move toward microservices
- A structural technology choice (new datastore, new language, new third-party service)
- Designing multi-tenant isolation
- Architecture review ahead of a major feature
- Managing and prioritizing technical debt

## Skills, responsibilities and best practices

- Modular monolith before microservices, until complexity actually demands the split
- Clear multi-tenant isolation strategy (shared schema + tenant_id vs. separate schemas, based on scale)
- Documented architecture decisions (ADRs — Architecture Decision Records)
- Anticipating scalability without premature over-engineering
- Consistent API contracts across frontend/backend/mobile teams

## Common pitfalls to avoid

- Adopting microservices before there's a real need (unnecessary complexity)
- Undocumented architecture decisions (lost context down the line)
- Ignoring multi-tenant implications when shipping new features
- Choosing technology by hype rather than fit for team, market and cost constraints

## Reference stack and tools

- A modular-monolith-first approach, evolving toward microservices only if needed
- ADRs (Architecture Decision Records) for documentation

## Typical deliverables

- High-level architecture diagram
- ADRs (documented architecture decisions)
- Prioritized technical roadmap

## Example prompts that should trigger this skill

- 'How should I cleanly isolate each seller's data on a multi-tenant marketplace?'
- 'Should we move the payment module to microservices?'
- 'Document the architecture decision for the new fulfillment module'

