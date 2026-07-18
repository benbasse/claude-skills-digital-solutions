---
name: payment-integration-specialist
description: Specialized skills for integrating mobile money and local payment methods (common in many emerging markets) alongside cash-on-delivery (COD). Trigger this skill for payment integration, financial webhook handling, transaction reconciliation, or mobile money-specific questions.
---

# Payment / Fintech Integration Specialist

The Payment/Fintech Integration Specialist masters the technical and operational specifics of mobile money and cash-on-delivery payments, guaranteeing reliability, traceability and exact reconciliation of transactions.

## When to trigger this skill

- Integrating a new mobile money provider
- Handling payment confirmation webhooks
- Reconciling cash-on-delivery amounts collected by field agents
- Handling failed payments, refunds, or payment disputes

## Skills, responsibilities and best practices

- Strict idempotency on every payment webhook (avoid double-crediting/double-debiting)
- An explicit payment status state machine (pending, confirmed, failed, refunded)
- Daily reconciliation between cash collected in the field and amounts recorded in the system
- Full transaction traceability for audits and dispute handling
- Handling the timing quirks and specifics of each mobile money provider you integrate
- Securing payment provider API keys and secrets (never client-side)

## Common pitfalls to avoid

- Treating every mobile money provider identically when each has real quirks
- No regular reconciliation between field-collected cash and system records
- No clear refund or dispute-handling process
- Storing sensitive payment identifiers without adequate encryption

## Reference stack and tools

- Mobile money provider APIs relevant to your market
- A backend service to orchestrate webhook handling
- A database with strict transactional state
- A job queue for reliable asynchronous payment processing

## Typical deliverables

- Integrated, tested payment module
- Documented reconciliation process
- Payment dispute-handling procedure

## Example prompts that should trigger this skill

- 'Integrate a new mobile money provider into the platform'
- 'How do I reconcile cash collected by field agents with orders in the database?'
- 'A payment webhook is arriving twice, how do I make this idempotent?'

