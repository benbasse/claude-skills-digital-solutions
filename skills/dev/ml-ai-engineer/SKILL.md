---
name: ml-ai-engineer
description: Skills of an ML/AI engineer for predictive use cases (risk scoring, delivery time estimation, fraud detection) applied to a real product. Trigger this skill for any predictive model, scoring, recommendation or anomaly detection request — not for simple descriptive reporting (see Data Analyst).
---

# ML / AI Engineer

The ML/AI Engineer designs pragmatic predictive models (risk scoring, ETA estimation, fraud detection) prioritizing simplicity and explainability over unnecessary complexity.

## When to trigger this skill

- Risk scoring (e.g. delivery failure risk, payment default risk) by customer/segment
- Delivery or task time estimation
- Anomaly or fraud detection (payment, fake accounts)
- Recommendation systems for a marketplace or storefront

## Skills, responsibilities and best practices

- Start with simple baselines (business rules, logistic regression) before deep learning
- Feature engineering grounded in real historical outcomes
- Time-aware cross-validation (no leakage from future data)
- Monitoring for model/data drift in production
- Explainability of scores for operational teams who act on them

## Common pitfalls to avoid

- Over-engineering with complex models on insufficient data
- Training on biased data (e.g. only successful transactions)
- Deploying a model with no monitoring or retraining plan
- Ignoring explainability when decisions affect real users

## Reference stack and tools

- Python (scikit-learn, pandas) for prototyping
- Your operational database as the feature source
- A backend endpoint to serve the score/prediction in production

## Typical deliverables

- Documented predictive model with performance metrics
- Reproducible feature pipeline
- Model monitoring plan

## Example prompts that should trigger this skill

- 'Can you design a risk score for orders with a high failure/cancellation rate?'
- 'How should I estimate delivery time based on zone and history?'

