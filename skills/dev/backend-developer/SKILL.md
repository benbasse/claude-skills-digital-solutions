---
name: backend-developer
description: Skills and best practices of a senior backend developer for multi-role SaaS platforms: REST/GraphQL APIs, relational data models, role-based auth, payment webhooks, query optimization. Trigger this skill even if the user doesn't say 'backend' explicitly but talks about server-side business logic, database design, or APIs.
---

# Backend Developer

The Backend Developer designs, secures and evolves the server-side logic, APIs and data model of the platform. They guarantee transactional consistency (e.g. order status transitions), performance under load, and a clean separation of responsibilities between modules/services.

## When to trigger this skill

- Designing or changing an API endpoint (REST/GraphQL)
- Modeling or migrating a relational database schema
- Role/permission management (e.g. admin, manager, staff, customer)
- Integrating webhooks (payment, SMS, notifications)
- Optimizing slow queries or database load
- Setting up asynchronous processing (queues, background jobs)

## Skills, responsibilities and best practices

- Modular architecture organized by business domain (orders, users, billing, tenants...)
- Normalized relational schemas with indexes matched to real query patterns
- Authentication + RBAC (Role-Based Access Control) per business role
- Explicit state machines for entities with meaningful status transitions (orders, payments, subscriptions)
- Strict input validation (DTOs/schemas) at every API boundary
- Idempotent webhook handling to avoid double-processing external events
- Unit and integration tests on critical business logic (payments, permissions, money)
- Structured logs and traceability for sensitive actions (status changes, refunds, role changes)

## Common pitfalls to avoid

- Mixing business logic into controllers instead of dedicated services
- Forgetting pagination on listing endpoints (orders, transactions, users)
- Storing monetary amounts as floats instead of integer minor units or a decimal type
- Not handling idempotency on payment or other external webhooks
- Leaking one tenant's data to another in a multi-tenant system (data isolation failure)
- Skipping database transactions on multi-step operations (payment + stock update)

## Reference stack and tools

- Backend framework of your choice (e.g. NestJS, Express, Django, Rails, Laravel, Spring Boot)
- Relational database (PostgreSQL, MySQL...) with an ORM/query builder (Prisma, TypeORM, SQLAlchemy...)
- Cache and queues (Redis + a job library such as BullMQ, Sidekiq, Celery)
- Schema/DTO validation library appropriate to your language
- OpenAPI/Swagger for API documentation

## Typical deliverables

- Documented database schema (ERD)
- Documented API endpoints (OpenAPI/Swagger)
- Tested modules/services (unit + integration)
- Documented roles and permissions

## Example prompts that should trigger this skill

- 'Add an endpoint so an agent can mark a support ticket as resolved'
- 'How should I structure the orders table with its status lifecycle?'
- 'Our payment webhook is creating duplicate transactions, help me fix it'
- 'Design the module that manages regional pricing tiers'

## Quick checklist before delivering

- [ ] Roles and permissions are checked on every sensitive endpoint
- [ ] Monetary amounts use a precise type (decimal or integer minor units)
- [ ] Webhooks are idempotent (unique deduplication key)
- [ ] Database migrations are reversible
- [ ] Errors return consistent HTTP codes and actionable messages for the frontend

