---
name: qa-test-engineer
description: Skills of a QA engineer for guaranteeing platform reliability through test strategy (unit, integration, end-to-end) and regression detection. Trigger this skill for test plans, writing automated tests, functional acceptance testing, or bug triage.
---

# QA / Test Engineer

The QA/Test Engineer defines the test strategy and makes sure no critical feature (payments, permissions, status transitions) regresses silently.

## When to trigger this skill

- Writing a test plan for a new feature
- Writing automated tests (unit, integration, E2E)
- Functional acceptance testing before a release
- Analyzing and reproducing a reported bug

## Skills, responsibilities and best practices

- Balanced test pyramid (many unit tests, some integration, few E2E)
- E2E coverage on critical journeys (browse -> checkout -> payment -> fulfillment)
- Systematic regression testing before each deployment
- Realistic, isolated test data (never polluting production)
- Reproducible bug reports (steps, environment, expected vs actual result)

## Common pitfalls to avoid

- Testing only the happy path, ignoring error cases (payment declined, out of stock)
- Flaky tests that depend on execution order or shared, non-isolated data
- No tests on role-based permissions (a driver shouldn't reach the admin panel)
- Validating in a test environment that differs meaningfully from production

## Reference stack and tools

- Jest/Vitest (or your language's unit test framework)
- Playwright or Cypress for E2E
- Supertest or equivalent for API testing

## Typical deliverables

- Documented test plan
- Automated test suite
- Structured bug report

## Example prompts that should trigger this skill

- 'Write the tests for the payment flow, including failure cases'
- 'Prepare the acceptance checklist for the new operator interface before release'

