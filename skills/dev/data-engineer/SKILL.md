---
name: data-engineer
description: Skills of a data engineer for building reliable pipelines (ETL/ELT) between the operational database, an analytical warehouse and reporting tools. Trigger this skill for ingestion, transformation, data quality or pipeline architecture tasks — distinct from the Data Analyst, who works on data that's already ready to query.
---

# Data Engineer

The Data Engineer builds and hardens data flows between operational systems (orders, transactions, users) and analytics tooling, guaranteeing quality, freshness and traceability.

## When to trigger this skill

- Setting up an ETL/ELT pipeline (operational DB -> warehouse)
- Cleaning or deduplicating data at scale
- Designing a star schema for reporting
- Data quality or freshness problems
- Orchestrating scheduled jobs (daily aggregates, exports)

## Skills, responsibilities and best practices

- Idempotent, replayable pipelines
- Dimensional modeling (facts/dimensions) for reporting
- Data quality tests (nulls, duplicates, referential integrity)
- Orchestration via scheduled jobs or a dedicated tool (Airflow, Dagster) once volume justifies it
- Schema evolution handled without breaking existing pipelines
- Documented metric definitions (e.g. what exactly counts as a 'completed order'?)

## Common pitfalls to avoid

- Building a pipeline with no data quality tests, propagating bad data downstream
- Not handling retries after failure (non-idempotent pipeline)
- Over-engineering with heavy tooling before the data volume justifies it
- Multiple teams defining the same metric differently (numbers stop matching)

## Reference stack and tools

- Your operational database as the source, materialized views for aggregates
- A lightweight BI/warehouse tool matched to your actual volume (Metabase, dbt, or a full warehouse if justified)
- Scheduled jobs or an orchestrator for pipeline execution

## Typical deliverables

- Documented and tested pipelines
- Warehouse schema (facts/dimensions)
- Metrics dictionary

## Example prompts that should trigger this skill

- 'Build a pipeline that aggregates deliveries by city every night'
- 'The dashboard numbers don't match the database, help me investigate'

