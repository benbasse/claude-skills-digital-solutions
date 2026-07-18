---
name: frontend-developer
description: Skills and best practices of a frontend developer (React/Vue/similar + TypeScript) for multi-role interfaces and customer-facing storefronts. Trigger this skill for any functional UI task — components, state management, forms, dashboards, responsive/mobile-first, API consumption. Trigger as soon as it's about *functional* UI (not pure visual — see the designer skill for that).
---

# Frontend Developer

The Frontend Developer turns functional requirements and mockups into performant, accessible, mobile-first interfaces for varied users (admins, staff, field workers, customers), often on unreliable connections.

## When to trigger this skill

- Building or changing a UI component
- Building a dashboard (admin, staff, operational)
- Building a checkout flow or a customer-facing storefront
- Complex state management (cart, real-time status, filters)
- Frontend performance work (Core Web Vitals, bundle size)
- Responsive and mobile-first work for field/low-bandwidth users

## Skills, responsibilities and best practices

- Component architecture that is typed and reusable (TypeScript)
- Server state via a data-fetching library (React Query/TanStack Query, SWR...), local UI state kept separate
- Robust forms with schema validation (e.g. React Hook Form + Zod, or the equivalent in your framework)
- Mobile-first design when a meaningful share of users are on mobile or low-end devices
- Explicit loading/error/empty states, with retry and offline-friendly behavior on unreliable connections
- Baseline accessibility (contrast, tap target size, keyboard navigation)
- Image optimization and lazy loading for low-bandwidth users
- Design system consistency across roles and (if applicable) multiple tenants/brands

## Common pitfalls to avoid

- Duplicating data-fetching logic in every component instead of sharing it
- Ignoring slow/unstable connections that are common for field users or emerging markets
- Oversized components mixing presentation and business logic
- Forgetting network error handling (payment, status updates)
- Never testing on small, low-end screens actually used by your target audience
- Pulling in heavy libraries that hurt mobile load time for no real benefit

## Reference stack and tools

- Frontend framework of your choice (React, Vue, Svelte...) + TypeScript
- Data-fetching layer (TanStack Query, SWR, or your framework's equivalent)
- Form + schema validation (React Hook Form + Zod, VeeValidate, etc.)
- Accessible component primitives (Radix UI, shadcn/ui, Headless UI...)
- Image optimization tooling built into your framework (e.g. next/image or equivalent)

## Typical deliverables

- Typed, tested UI components
- Working dashboards per role
- Responsive customer-facing pages
- Performance report (Lighthouse/Core Web Vitals)

## Example prompts that should trigger this skill

- 'Build the driver dashboard with today's list of deliveries'
- 'The order form needs to work well on small screens, improve it'
- 'The storefront loads slowly on mobile, optimize it'
- 'Add a status filter to the admin order list'

## Quick checklist before delivering

- [ ] Interface tested on a real mobile device or a low-end emulator
- [ ] Loading/error/empty states explicitly handled
- [ ] No sensitive data exposed client-side (API keys, tokens)
- [ ] Components strictly typed, no unjustified `any`

