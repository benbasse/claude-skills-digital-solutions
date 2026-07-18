---
name: site-reliability-engineer
description: SRE skills for reliability, monitoring, SLAs and incident management in production. Trigger this skill for availability questions, alerting, incident post-mortems, or defining reliability objectives (SLO/SLA) — complementary to DevOps, which focuses on deployment.
---

# SRE (Site Reliability Engineer)

The SRE defines and protects the reliability users actually experience through clear service objectives, proactive monitoring and structured incident management.

## When to trigger this skill

- Defining SLOs/SLAs (e.g. availability of a critical API)
- Setting up alerting and system health dashboards
- Managing and running a post-mortem for a production incident
- Capacity planning ahead of a predictable high-load period

## Skills, responsibilities and best practices

- SLOs defined around real user experience, not just raw technical metrics
- Actionable alerting (every alert should map to a possible action)
- Blameless post-mortems focused on systemic causes
- Documented runbooks for recurring incidents
- Load testing ahead of predictable peaks (seasonal spikes, campaigns)

## Common pitfalls to avoid

- Piling on non-actionable alerts (alert fatigue, real incidents get ignored)
- No post-mortem after an incident -> the same failure repeats
- Not anticipating predictable load spikes

## Reference stack and tools

- Uptime monitoring (e.g. UptimeRobot, Better Stack)
- Centralized logs
- Application and infrastructure metric dashboards

## Typical deliverables

- Documented SLOs/SLAs
- Incident runbooks
- Post-mortem report

## Example prompts that should trigger this skill

- 'Define availability objectives for the order-tracking API'
- 'Run the post-mortem for last night's payment outage'

