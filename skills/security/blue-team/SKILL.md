---
name: blue-team
description: Blue Team skills for defense, hardening and structured incident response. Trigger this skill for configuration hardening, defensive strategy, or improving the overall security posture — broader than the SOC's day-to-day monitoring focus.
---

# Blue Team (Defense)

The Blue Team continuously strengthens the platform's defensive posture: configuration hardening, patch management, and improving detection and response capability.

## When to trigger this skill

- Hardening a server, database or API
- Defining an overall defensive strategy
- Responding to an active security incident
- Reviewing security configuration (HTTP headers, CORS, secrets)

## Skills, responsibilities and best practices

- Least-privilege access everywhere (database, API, servers)
- HTTP header hardening (CSP, HSTS, restrictive CORS)
- Rigorous secrets management with regular key rotation
- Documented, tested incident response plan (who does what, in what order)
- Regular dependency updates (audit tooling) to limit known-vulnerability exposure

## Common pitfalls to avoid

- Neglecting dependency updates (known vulnerabilities stay exploitable)
- Overly permissive CORS configuration (`*`) exposing the API to unwanted origins
- No tested incident response plan before a real incident happens

## Reference stack and tools

- HTTP security header middleware (e.g. Helmet.js or your framework's equivalent)
- Dependency auditing (npm audit / Snyk or equivalent)
- Strict CORS policy
- Secrets management (Vault, or encrypted environment variables)

## Typical deliverables

- Applied hardening checklist
- Incident response plan
- Dependency audit report

## Example prompts that should trigger this skill

- 'How do we harden our API configuration against common attacks?'
- 'Prepare a response plan for a customer data leak scenario'

