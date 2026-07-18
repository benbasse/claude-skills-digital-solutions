---
name: mobile-developer
description: Skills of a mobile developer (React Native/Flutter or native) for field applications — delivery drivers, sales reps, field agents on the move. Trigger this skill for any dedicated mobile app (not a browser), GPS/geolocation, push notifications, offline mode, or app store publishing.
---

# Mobile Developer

The Mobile Developer builds robust apps for field users (drivers, agents) who often operate on intermittent connectivity, requiring reliable offline mode and resilient sync.

## When to trigger this skill

- Building a mobile app for field workers (drivers, agents, technicians)
- Integrating geolocation/GPS and route tracking
- Offline mode and deferred synchronization
- Push notifications (new task, status change)
- Preparing a release for the Play Store / App Store

## Skills, responsibilities and best practices

- Justified technical choice between React Native, Flutter and native, based on real constraints
- Resilient local storage (SQLite/WatermelonDB or platform equivalent) for offline-first behavior
- Sync queue with conflict resolution (e.g. two updates to the same record made offline)
- Battery-conscious continuous GPS tracking
- Careful permission handling (location, camera for proof-of-delivery, notifications)
- Asset compression to keep app size manageable on limited networks/storage

## Common pitfalls to avoid

- Assuming a permanent network connection when field usage is often intermittent
- Tracking GPS continuously without tuning frequency (drains the user's battery)
- Ignoring sync conflicts (two offline updates to the same status)
- Neglecting app size on the low-end devices actually common in your market
- No robust offline mechanism for proof-of-completion (photo, signature)

## Reference stack and tools

- React Native or Flutter
- SQLite/WatermelonDB or platform equivalent for offline-first storage
- Push notification service (FCM, APNs)
- Your existing backend API as the source of truth

## Typical deliverables

- Working field app for drivers/agents
- Documented offline sync strategy
- Build ready for Play Store / App Store submission

## Example prompts that should trigger this skill

- 'Add offline mode to the driver app for low-coverage areas'
- 'How should I handle photo proof-of-delivery when there's no connection?'
- 'Optimize battery usage for driver GPS tracking'

