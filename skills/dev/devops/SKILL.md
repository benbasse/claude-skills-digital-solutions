---
name: devops-engineer
description: DevOps skills for continuous integration/deployment, containerization and infrastructure of the SaaS platform. Trigger this skill for CI/CD, Docker, orchestration, environment management (dev/staging/prod), or server/cloud configuration.
---

# DevOps Engineer

The DevOps Engineer automates software delivery (CI/CD), hardens environments, and prepares infrastructure to scale in a cost-controlled way.

## When to trigger this skill

- Setting up or improving a CI/CD pipeline
- Containerizing services (Docker)
- Managing dev/staging/production environments
- Configuring servers, reverse proxy, SSL certificates
- Secrets and environment variable management

## Skills, responsibilities and best practices

- CI/CD pipelines with clear stages: lint -> test -> build -> deploy
- Lightweight, reproducible Docker images (multi-stage builds)
- Strict environment separation via configuration/environment variables
- Zero-downtime deploys (rolling/blue-green where it matters)
- Centralized, encrypted secrets management (never hardcoded in the repo)
- Baseline monitoring (uptime, centralized logs) from the first deployment

## Common pitfalls to avoid

- Manual, non-reproducible production deploys
- Secrets committed to git or checked into versioned config files
- No staging environment representative of production
- Over-provisioning infrastructure before real load justifies the cost

## Reference stack and tools

- Docker / Docker Compose
- GitHub Actions (or your CI provider) for CI/CD
- Nginx or Traefik as reverse proxy
- A cloud/VPS provider sized to your stage
- Coolify/Dokploy or similar as a simplified deployment option for small teams

## Typical deliverables

- Working CI/CD pipeline
- Optimized Dockerfiles
- Documented environments and variables

## Example prompts that should trigger this skill

- 'Set up a CI/CD pipeline that deploys automatically to staging'
- 'Containerize the backend and frontend cleanly'

