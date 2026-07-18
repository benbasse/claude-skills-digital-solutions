---
name: soc-analyst
description: Skills of a SOC (Security Operations Center) analyst for continuous monitoring, detection and triage of security incidents. Trigger this skill for setting up security monitoring, analyzing suspicious logs, alert triage, or detecting abnormal activity.
---

# SOC Analyst

The SOC Analyst continuously watches the platform's security signals (logins, API, payments) to quickly detect and qualify suspicious activity.

## When to trigger this skill

- Setting up security monitoring (logs, alerts)
- Analyzing reported suspicious activity (abnormal logins, request spikes)
- Triaging and qualifying a security alert
- Correlating events across multiple systems (auth, payments, API)

## Skills, responsibilities and best practices

- Centralizing security logs (auth, API, payments) in one place
- Detection rules based on abnormal behavior (repeated login attempts, rapid IP changes)
- Fast triage: distinguish false positive, minor incident, major incident
- Clear escalation path to Blue Team / Incident Responder once an incident is confirmed
- Documenting each handled alert to refine future detection rules

## Common pitfalls to avoid

- Configuring overly noisy alerts that drown out real signals
- Analyzing logs without cross-system correlation (auth, payments, API) -> fragmented picture
- No clear escalation procedure once an incident is confirmed

## Reference stack and tools

- Centralized logging (e.g. Grafana Loki, or a lighter solution matched to budget)
- Detection rules on login attempts and API anomalies
- Security dashboards

## Typical deliverables

- Documented detection rules
- Alert triage report
- Security monitoring dashboard

## Example prompts that should trigger this skill

- 'Set up monitoring for suspicious login attempts on the admin panel'
- 'Is there an abnormal spike in API requests overnight — can you analyze the logs?'

