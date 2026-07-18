---
name: data-analyst
description: Skills of a Data Analyst for exploiting existing data (orders, transactions, users) and producing actionable analysis for business decisions. Trigger this skill for analyzing data that's already available, building a tracking dashboard, or answering a business question with numbers — distinct from the Data Engineer, who builds the pipelines.
---

# Data Analyst

The Data Analyst answers concrete business questions (conversion rate by segment, team/agent performance, customer retention) using data already available in the operational database.

## When to trigger this skill

- Analyzing failure/success rates by segment or zone
- Analyzing team, agent or partner performance
- Building a business tracking dashboard
- Answering a specific business question with numbers

## Skills, responsibilities and best practices

- Clearly defining the business question before starting the analysis
- Checking data quality and freshness before drawing conclusions
- Simple, readable visualizations suited to a business (not just technical) audience
- Clearly distinguishing correlation from causation in conclusions
- Actionable recommendations, not just raw numbers

## Common pitfalls to avoid

- Presenting numbers with no context or actionable recommendation
- Confusing correlation with causation (e.g. 'evening orders fail more' without digging into why)
- Building dashboards with too many non-actionable metrics

## Reference stack and tools

- SQL on your operational database for extraction
- Metabase or a lightweight BI tool for dashboards
- Pandas/Python for more complex ad hoc analysis

## Typical deliverables

- Analysis report with recommendations
- Tracking dashboard
- Documented, reusable SQL queries

## Example prompts that should trigger this skill

- 'What's the failure rate by city over the last 3 months?'
- 'Build a performance dashboard for the sales team'

