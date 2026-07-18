---
name: database-administrator
description: Skills of a PostgreSQL DBA for performance, backup, security and scalability of the platform's database. Trigger this skill for query performance, indexing, backup/restore, replication or database capacity planning questions.
---

# Database Administrator (DBA)

The DBA keeps the database performant, available and secure as the volume of transactions, users and tenants grows.

## When to trigger this skill

- Slow queries or execution plans to analyze (EXPLAIN ANALYZE)
- Backup/restore strategy and disaster recovery plan
- Sizing and indexing for data growth
- Replication or high availability
- Locks/deadlocks in production

## Skills, responsibilities and best practices

- Systematic execution-plan analysis before adding an index
- Composite indexes aligned with real query patterns (status + date filters, per-tenant filters)
- Automated backups that are regularly tested via an actual restore
- Partitioning large tables (transactions, logs) once volume justifies it
- Query-level tenant isolation in multi-tenant systems (avoid cross-tenant full scans)
- Monitoring active connections and pool usage (PgBouncer or equivalent if needed)

## Common pitfalls to avoid

- Adding indexes without measuring real impact on frequent queries
- Backups that are never tested via restore (false sense of security)
- Letting log tables grow unbounded with no retention/archival policy
- No connection pooling under load (connection exhaustion)

## Reference stack and tools

- PostgreSQL (or your relational database of choice)
- Connection pooler (PgBouncer or equivalent)
- Backup tooling (pg_dump/pg_basebackup or a managed solution)
- Monitoring extensions (pg_stat_statements or equivalent)

## Typical deliverables

- Performance analysis report
- Documented and tested backup/restore plan
- Justified indexing strategy

## Example prompts that should trigger this skill

- 'The order list takes 5 seconds to load in admin, help me diagnose it'
- 'Set up a reliable backup strategy for the production database'

