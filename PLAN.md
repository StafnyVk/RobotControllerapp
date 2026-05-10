# Engineered Arts — Mobile Engineer Tech Test
## Comprehensive Implementation Plan

> A Flutter monorepo (Melos) robot remote-control app built with DDD architecture,
> BLoC state management, WiFi-based device integration, a simulated robot API,
> and a native iOS Live Activity + Android foreground-notification widget.
> Patterned on the JunoPlus architecture (`app`, `design_system`, `bluetooth`,
> `remote`, etc.), adapted for a WiFi-connected robot.

---

## 1. Objectives Recap

From the brief:

| # | Requirement | Plan |
|---|-------------|------|
| M1 | Connect / disconnect the robot and display status | `RobotConnectionBloc` + Dashboard |
| M2 | Send movement commands with user feedback | `RobotCommandBloc` + Control screen |
| M3 | Handle failed commands and intermittent connectivity | Retry/back-off, `connectivity_plus`, auto-reconnect, banner |
| M4 | Unit / integration tests for ≥ 1 module | BLoC tests + facade-impl tests + simulator tests |
| M5 | Structure project for maintainability & scalability | Melos monorepo, DDD layering, `freezed` unions, `injectable` DI |
| Opt1 | Native feature (Swift / Kotlin) | iOS Live Activity + Dynamic Island; Android foreground notification |
| Opt2 | Offline queued commands with retry | `OfflineCommandQueue` persisted via `shared_preferences` |
| Opt3 | Modular state mgmt & navigation ready for expansion | Per-package BLoCs + `auto_route` tab shell |

---

## 2. High-Level Architecture

### 2.1 Monorepo Layout

```
EngineeredArtsTechTest/
├── melos.yaml                         # Workspace config
├── pubspec.yaml                       # Workspace root (Dart 3.5+ workspace)
├── analysis_options.yaml              # Shared lint rules
├── PLAN.md                            # This file
├── README.md                          # Run instructions + assumptions
│
├── app/                               # Presentation + composition root
│   ├── lib/
│   │   ├── main.dart                  # Shared bootstrap
│   │   ├── main_dev.dart              # Dev flavor entry
│   │   ├── main_prod.dart             # Prod flavor entry
│   │   ├── app.dart                   # Root MaterialApp + MultiBlocProvider
│   │   ├── di.dart                    # @InjectableInit for app-level deps
│   │   ├── di.config.dart             # generated
│   │   ├── helpers.dart               # getIt alias, small utilities
│   │   ├── routing/
│   │   │   ├── app_pages.dart         # AutoRoute config
│   │   │   └── app_pages.gr.dart      # generated
│   │   ├── pages/
│   │   │   ├── splash/splash_page.dart
│   │   │   ├── home/home_page.dart             # Tab shell
│   │   │   ├── dashboard/dashboard_page.dart   # Status + battery
│   │   │   ├── control/control_page.dart       # Move/stop controls
│   │   │   ├── settings/settings_page.dart     # Server URL, diagnostics
│   │   │   └── onboarding/connect_page.dart    # First-run connect
│   │   ├── widgets/
│   │   │   ├── battery_indicator.dart
│   │   │   ├── connection_badge.dart
│   │   │   ├── command_button.dart
│   │   │   ├── telemetry_card.dart
│   │   │   ├── offline_banner.dart
│   │   │   └── queue_panel.dart
│   │   ├── services/
│   │   │   ├── connectivity_monitor.dart        # connectivity_plus wrapper
│   │   │   ├── live_activity/
│   │   │   │   └── robot_live_activity_service.dart
│   │   │   └── android_notification/
│   │   │       └── robot_foreground_service.dart
│   │   └── utils/
│   │       └── logger.dart
│   ├── ios/
│   │   ├── Runner/                               # Main iOS app
│   │   └── RobotLiveActivityWidget/              # Swift Widget Extension
│   │       ├── RobotLiveActivityWidget.swift
│   │       ├── RobotLiveActivityWidgetLiveActivity.swift
│   │       ├── RobotLiveActivityWidgetBundle.swift
│   │       ├── RobotControlIntent.swift           # App Intent: start/stop
│   │       └── Assets.xcassets/
│   ├── android/
│   │   ├── app/src/main/kotlin/.../RobotForegroundService.kt
│   │   └── app/src/main/AndroidManifest.xml
│   └── pubspec.yaml
│
├── design_system/                    # Theme tokens, reusable widgets
│   ├── lib/
│   │   ├── design_system.dart        # barrel
│   │   └── design/
│   │       ├── colors.design.dart
│   │       ├── spacings.design.dart
│   │       ├── typography.design.dart
│   │       ├── radii.design.dart
│   │       ├── motion.design.dart
│   │       └── theme.dart
│   └── pubspec.yaml
│
├── robot_service/                    # DDD package (robot comms over WiFi)
│   ├── lib/
│   │   ├── robot_service.dart        # Barrel
│   │   ├── application/              # BLoCs (application layer)
│   │   │   ├── robot_connection_bloc/
│   │   │   │   ├── robot_connection_bloc.dart
│   │   │   │   ├── robot_connection_event.dart
│   │   │   │   └── robot_connection_state.dart
│   │   │   ├── robot_telemetry_bloc/         # /status + websocket stream
│   │   │   │   ├── robot_telemetry_bloc.dart
│   │   │   │   ├── robot_telemetry_event.dart
│   │   │   │   └── robot_telemetry_state.dart
│   │   │   └── robot_command_bloc/           # move / stop
│   │   │       ├── robot_command_bloc.dart
│   │   │       ├── robot_command_event.dart
│   │   │       └── robot_command_state.dart
│   │   ├── domain/
│   │   │   ├── core/
│   │   │   │   └── unit.dart
│   │   │   ├── facade/
│   │   │   │   └── robot_facade.dart         # IRobotFacade abstract
│   │   │   ├── failure/
│   │   │   │   └── robot_failure.dart        # freezed union
│   │   │   └── model/
│   │   │       ├── robot_status.dart         # {connected, battery, moving}
│   │   │       ├── robot_command.dart        # Move/Stop/Connect/Disconnect
│   │   │       ├── robot_connection_info.dart
│   │   │       └── queued_command.dart       # for offline queue
│   │   ├── infrastructure/
│   │   │   ├── robot_facade_impl.dart        # wires REST + WebSocket
│   │   │   ├── robot_api_client.dart         # http POST/GET to simulator
│   │   │   ├── robot_telemetry_stream.dart   # WebSocket client
│   │   │   ├── offline_command_queue.dart    # persisted via shared_prefs
│   │   │   ├── retry_policy.dart             # exp-backoff helper
│   │   │   └── connectivity_gate.dart        # checks online before call
│   │   ├── di/
│   │   │   ├── di.dart
│   │   │   └── di.config.dart                # generated
│   │   └── presentation/
│   │       └── robot_service_wrapper.dart    # optional provider wrapper
│   ├── test/
│   │   ├── application/
│   │   │   ├── robot_connection_bloc_test.dart
│   │   │   ├── robot_telemetry_bloc_test.dart
│   │   │   └── robot_command_bloc_test.dart
│   │   ├── infrastructure/
│   │   │   ├── robot_facade_impl_test.dart
│   │   │   └── offline_command_queue_test.dart
│   │   └── domain/
│   │       └── robot_failure_test.dart
│   └── pubspec.yaml
│
├── robot_simulator/                  # Lightweight mock API (Dart shelf server)
│   ├── bin/
│   │   └── server.dart               # shelf + shelf_web_socket entrypoint
│   ├── lib/
│   │   ├── simulator.dart            # barrel
│   │   ├── robot_state_machine.dart  # in-memory state + tick loop
│   │   ├── rest_handlers.dart        # /status /connect /disconnect /move /stop
│   │   └── telemetry_broadcaster.dart# WS stream pushing state every 1s
│   ├── test/
│   │   └── simulator_test.dart
│   └── pubspec.yaml
│
└── scripts/
    ├── run_simulator.sh
    ├── run_dev_ios.sh
    └── run_dev_android.sh
```

### 2.2 DDD Layer Responsibilities

| Layer | Lives in | Depends on | Contract |
|-------|----------|-----------|----------|
| **Presentation** | `app/lib/pages/`, `app/lib/widgets/` | application (BLoCs), design_system | Dumb widgets + `BlocBuilder`/`BlocListener`; no business logic |
| **Application** | `robot_service/lib/application/` | domain | BLoCs orchestrate use-cases via facade |
| **Domain** | `robot_service/lib/domain/` | nothing (pure Dart) | Abstract `IRobotFacade`, `RobotFailure`, value objects/models |
| **Infrastructure** | `robot_service/lib/infrastructure/` | domain, http, web_socket_channel, shared_preferences | Concrete impl that calls simulator, handles retries, persists queue |
| **Composition root** | `app/lib/di.dart` + per-package `di/di.dart` | all | `@InjectableInit` wires everything at app boot |

### 2.3 Data Flow (happy path)

```
UI button tap
  → RobotCommandBloc.add(MoveRequested('forward'))
     → IRobotFacade.move(direction)
        → RobotApiClient.post('/move', {direction})
           → simulator RestHandler → RobotStateMachine.update()
              → WebSocket broadcaster pushes new RobotStatus
                 → RobotTelemetryStream → RobotTelemetryBloc emits new state
                    → BlocBuilder rebuilds Dashboard + LiveActivity service updates widget
```

### 2.4 Failure Flow

```
Network lost between UI and simulator
  → http throws SocketException
     → RetryPolicy retries 3× with exp backoff
        → still fails → IRobotFacade returns Do.failure(RobotFailure.connectionLost())
           → RobotCommandBloc emits CommandFailed state + enqueues into OfflineCommandQueue
              → OfflineBanner shows "Reconnecting..."; snackbar shows command queued
                 → ConnectivityMonitor detects online → queue flushes → commands retried in order
```

---

## 3. Simulated Robot API (`robot_simulator/`)

### 3.1 Why a local HTTP + WS server (not in-app mock)

- Gives us a realistic networking surface (genuine retries, timeouts, WebSocket drops).
- Can inject artificial failures and latency to test the robustness requirement.
- Reusable as a CLI while Flutter developers iterate on the app.
- Ships as a pure-Dart server using `shelf` + `shelf_web_socket` — no language switch.

### 3.2 Endpoints

| Method | Path | Body | Response | Notes |
|--------|------|------|----------|-------|
| GET | `/status` | — | `{ connected, battery, moving, direction, lastUpdated }` | Random 2% failure in dev mode |
| POST | `/connect` | `{}` | `{ok: true, sessionId}` | Sets `connected=true` |
| POST | `/disconnect` | `{}` | `{ok: true}` | Clears session |
| POST | `/move` | `{direction: "forward"\|"back"\|"left"\|"right", speed?: int}` | `{ok: true}` | Requires session. 5% random 500. |
| POST | `/stop` | `{}` | `{ok: true}` | Immediate halt |
| WS | `/telemetry` | — | Stream of `RobotStatus` JSON every 1s + on every state change | Drops connection every ~60s to test reconnect |

### 3.3 Simulated Robot Behaviour

- Battery drains at 0.02%/s when idle, 0.08%/s when moving. Recharges when `connected=false` and idle.
- When battery < 10% the robot forcibly stops, ignores `move`.
- Optional CLI flags: `--chaos` (adds random drops), `--port 8080`, `--latency 200`.

### 3.4 Run

```bash
dart run robot_simulator:server --port 8080 --chaos
```

---

## 4. `robot_service` Package — Detailed Design

### 4.1 `IRobotFacade` (domain contract)

```dart
abstract class IRobotFacade {
  Future<Do<RobotFailure, Unit>> connect();
  Future<Do<RobotFailure, Unit>> disconnect();
  Future<Do<RobotFailure, RobotStatus>> fetchStatus();
  Future<Do<RobotFailure, Unit>> move(MoveDirection direction, {int speed = 50});
  Future<Do<RobotFailure, Unit>> stop();
  Stream<RobotStatus> telemetryStream();
  Stream<ConnectionState> connectionStateStream();
}
```

> Uses `doso` (same Result type JunoPlus uses) so error handling is explicit at call sites.

### 4.2 `RobotFailure` (freezed union)

```
notConnected | connectFailed | disconnectFailed
| commandFailed | networkUnavailable | timeout
| invalidResponse | lowBattery | queuedOffline | unexpected
```

### 4.3 `RobotStatus` model

```dart
@freezed
class RobotStatus with _$RobotStatus {
  const factory RobotStatus({
    required bool connected,
    required double battery,
    required bool moving,
    MoveDirection? direction,
    @Default(0) int signalStrength,
    required DateTime lastUpdated,
  }) = _RobotStatus;

  factory RobotStatus.fromJson(Map<String, dynamic> json) =>
      _$RobotStatusFromJson(json);
}
```

### 4.4 BLoC contracts

**RobotConnectionBloc** — single-source-of-truth for connection lifecycle
- Events: `connectRequested`, `disconnectRequested`, `autoReconnect`, `connectivityChanged(online)`
- States: `initial`, `connecting`, `connected`, `disconnecting`, `disconnected`, `reconnecting(attempt)`, `failed(RobotFailure)`

**RobotTelemetryBloc** — streams telemetry
- Events: `watchStarted`, `watchStopped`, `statusReceived(RobotStatus)`, `streamErrored(RobotFailure)`
- States: `initial`, `live(RobotStatus)`, `stale(RobotStatus, lastSeen)`, `error(RobotFailure)`

**RobotCommandBloc** — command dispatch + optimistic UI + queueing
- Events: `moveRequested(direction)`, `stopRequested`, `commandSucceeded(id)`, `commandFailed(id, failure)`, `flushQueueRequested`
- States: `idle`, `dispatching(commandId)`, `succeeded(commandId)`, `failed(commandId, failure)`, `queued(commandId)`

### 4.5 Offline Command Queue

- Persisted JSON list in `shared_preferences` under key `robot.offline_queue.v1`.
- FIFO, each entry has `id`, `command`, `enqueuedAt`, `attempts`.
- `ConnectivityMonitor` listens to `connectivity_plus`; on transition offline→online it fires `flushQueueRequested`.
- Flush drains up to `maxFlushBatch = 5` commands per cycle, stops on first failure to preserve order.
- If `stop` is enqueued, it supersedes all pending `move` commands (safety invariant).

### 4.6 Retry Policy

- `RetryPolicy(maxAttempts: 3, initialDelay: 300ms, multiplier: 2)`.
- Applied only in infrastructure layer; BLoCs never see transient retries.
- Timeout per attempt: 5s.

---

## 5. Presentation Layer (`app/`)

### 5.1 Screens

1. **Splash** — 1s logo + DI bootstrap check → routes to Dashboard or Connect.
2. **Connect** — first-run screen: enter server URL (default `http://localhost:8080`), primary "Connect" CTA.
3. **Home (tab shell)** via `auto_route` — three tabs:
   - **Dashboard** (default): connection badge, animated battery ring, status card, live telemetry log
   - **Control**: directional joystick/pad + big red Stop button + speed slider
   - **Settings**: server URL, toggle chaos mode, clear queued commands, app version
4. **Global overlays**: `OfflineBanner` (top), queued-commands `QueuePanel` (bottom sheet).

### 5.2 Interaction Patterns

- Every command → optimistic update + `SnackBar` with undo when applicable.
- Loading states via Skeletonizer for status card first paint.
- Error states: inline message + retry button (never silent).
- Haptics on command send (light), on failure (error).
- Pull-to-refresh on Dashboard triggers `fetchStatus`.

### 5.3 State-management Composition

`app.dart` wraps `MaterialApp.router` in a `MultiBlocProvider`:

```dart
BlocProvider(create: (_) => getIt<RobotConnectionBloc>()
  ..add(const RobotConnectionEvent.autoReconnect())),
BlocProvider(create: (_) => getIt<RobotTelemetryBloc>()
  ..add(const RobotTelemetryEvent.watchStarted())),
BlocProvider(create: (_) => getIt<RobotCommandBloc>()),
```

Tab pages depend only on BLoCs via `context.read` / `BlocBuilder`.

### 5.4 Routing

`auto_route` config in `app/lib/routing/app_pages.dart`:

```
AutoRoute(page: SplashRoute.page, initial: true),
AutoRoute(page: ConnectRoute.page),
AutoRoute(page: HomeRoute.page, children: [
  AutoRoute(page: DashboardRoute.page, initial: true),
  AutoRoute(page: ControlRoute.page),
  AutoRoute(page: SettingsRoute.page),
]),
```

Route generation: `dart run build_runner build --delete-conflicting-outputs`.

---

## 6. Native Integration (Bonus: Swift/Kotlin)

### 6.1 iOS — Live Activity + Dynamic Island

- Widget Extension target: `RobotLiveActivityWidget`.
- App Group: `group.com.engineered-arts.robotremote` (shared UserDefaults).
- `ActivityKit` attributes carry `{batteryPct, isMoving, direction, connected}`.
- Presentations:
  - **Lock screen**: compact battery ring, status text, Stop button.
  - **Dynamic Island compact leading**: battery icon; **trailing**: movement state.
  - **Dynamic Island expanded**: full controls (Pause/Stop via `AppIntent`).
- Flutter side: `robot_live_activity_service.dart` wraps the `live_activities` pub package (same pattern as `therapy_live_activity_service.dart` in JunoPlus).
- Updates pushed from `RobotTelemetryBloc.listener` → service `updateActivity({...})`.
- Stop button in widget uses `AppIntent` → writes `"stop"` to App-Group UserDefaults → Flutter polls via MethodChannel and dispatches `RobotCommandBloc.stopRequested`.

### 6.2 Android — Foreground Notification

- `RobotForegroundService.kt` extends `Service`, shows a `NotificationCompat.Builder` with:
  - Battery %, moving state, connection state
  - Action buttons: Stop, Disconnect
- Started when RobotConnectionBloc emits `connected`, stopped on `disconnected`.
- MethodChannel `com.engineered-arts.robot/foreground` bridges actions back into Flutter.

### 6.3 Method Channels

| Channel | Direction | Purpose |
|---------|-----------|---------|
| `com.engineered-arts.robot/live_activity` | Dart ⇄ Swift | start/update/end activity, receive intents |
| `com.engineered-arts.robot/foreground` | Dart ⇄ Kotlin | start/stop service, receive notification actions |

---

## 7. Connectivity & Resilience Strategy

| Concern | Mitigation |
|---------|------------|
| WiFi drops | `connectivity_plus` listener → emit offline state → banner + queue commands |
| WS drops | `RobotTelemetryStream` auto-reconnects with exp-backoff (1s, 2s, 4s, 8s max 30s), marks `stale` state if >5s no update |
| Server 5xx | RetryPolicy retries 3× then surfaces `RobotFailure.commandFailed` |
| Duplicate commands | Each command has a client-side UUID; simulator dedupes window of 2s |
| App backgrounded | LiveActivity keeps driving telemetry; BLoCs re-subscribe in `didChangeAppLifecycleState` |
| Stale telemetry | If `lastUpdated` > 5s old, UI shows "Reconnecting…" and `RobotTelemetryBloc` transitions to `stale` |

---

## 8. Testing Strategy

### 8.1 Coverage Targets

| Module | Kind | What |
|--------|------|------|
| `RobotCommandBloc` | unit (bloc_test) | move/stop flows, queueing on failure |
| `RobotConnectionBloc` | unit | connect→error→reconnect retry loop |
| `RobotTelemetryBloc` | unit | stream → live → stale timeout |
| `RobotFacadeImpl` | integration | real simulator up, verifies HTTP + WS round-trip |
| `OfflineCommandQueue` | unit | enqueue, persist, flush, ordering, stop-supersedes-move |
| `RetryPolicy` | unit | back-off series |
| Simulator | unit | state-machine tick, battery drain, forced stop at low battery |

### 8.2 Tooling

- `bloc_test`, `mocktail` for BLoCs (mirrors JunoPlus).
- `http_mock_adapter` (or custom fake) for facade tests.
- `shelf` integration tests against a real spawned simulator on port 0.
- Golden tests for `BatteryIndicator` and `ConnectionBadge` (optional).

### 8.3 CI (outline)

- `melos run build:codegen:build:all`
- `melos run quality:analyze:all`
- `melos run test:all --coverage`
- Artifact: combined LCOV.

---

## 9. Setup & Running

### 9.1 Prereqs

```
Flutter 3.24+
Dart 3.5+
Xcode 16 (for Live Activity)
Android Studio Ladybug
Melos 6.x: dart pub global activate melos
```

### 9.2 Bootstrap

```bash
cd EngineeredArtsTechTest
melos bootstrap
melos run build:codegen:build:all
```

### 9.3 Run simulator + app together

```bash
# Terminal A
dart run robot_simulator:server --port 8080

# Terminal B
cd app
flutter run -t lib/main_dev.dart --flavor dev
```

Or:

```bash
./scripts/run_simulator.sh          # starts sim in bg
./scripts/run_dev_ios.sh            # or run_dev_android.sh
```

### 9.4 Live Activity sanity check (iOS)

1. Build via Xcode (so the Widget Extension is deployed).
2. On device: Settings → Live Activities toggle on.
3. In app tap **Connect** → Live Activity appears on lock screen + Dynamic Island.

---

## 10. Implementation Order (time-boxed ≈ 4 h)

| Order | Step | ETA |
|-------|------|-----|
| 1 | Workspace + Melos + 4 packages scaffolded | 15 m |
| 2 | `design_system` (colors, typography, spacings, theme) | 10 m |
| 3 | `robot_simulator` (REST + WS + state machine) | 25 m |
| 4 | `robot_service` domain (facade, failure, models) | 15 m |
| 5 | `robot_service` infrastructure (api_client, ws, retry, queue) | 45 m |
| 6 | `robot_service` application (3 BLoCs + freezed events/states) | 40 m |
| 7 | `app` presentation (splash, connect, home shell, dashboard, control, settings) | 50 m |
| 8 | Connectivity handling + offline banner + queue panel | 15 m |
| 9 | Tests (`RobotCommandBloc`, `OfflineCommandQueue`, simulator) | 20 m |
| 10 | Live Activity (iOS Widget Extension + Dart service) | 45 m |
| 11 | Android foreground service | 20 m |
| 12 | README + polish + run verification | 20 m |

**MVP cut line** = steps 1–9 (brief-mandatory + scaffolded bonus hooks).
**Stretch** = 10–12 (native bonus).

---

## 11. Assumptions (call out in README)

- Simulator runs on the dev machine; physical devices reach it via `http://<mac-ip>:8080`. Settings screen lets the user override.
- "Connected" means an active session handshake with the simulator, not just TCP reachability.
- WebSocket is the primary telemetry transport; REST `/status` is the fallback used during WS reconnects.
- Battery is floating-point percent; UI rounds to int for display.
- Movement commands are fire-and-forget from the app's POV — success = server 200, not physical motion confirmation.
- Live Activity is iOS 16.1+; Android fallback uses a persistent foreground notification.
- No auth layer (out of scope; JunoPlus's auth pattern is referenced in §13 for future extension).

---

## 12. UI Design Prompt (for generative UI tooling)

> ### Paste into v0 / Figma AI / Claude UI / etc.
>
> **Product**: A mobile app to remotely pilot an anthropomorphic robot ("Ameca-class")
> over WiFi — connect, monitor battery and motion telemetry, issue move/stop commands.
>
> **Audience**: Robotics operators, demo staff, and developers. Comfort with technical
> dashboards; they want data-dense but beautiful.
>
> **Brand mood**: Cinematic, near-future, trustworthy, alive. Think "Apollo mission
> control meets Tesla app meets Dieter Rams". Not a toy. Not a kids' app. A serious
> control surface with personality.
>
> **Visual direction**
> - **Palette**: deep graphite background `#0B0E14`, off-white `#E6E9F2` text,
>   single accent electric-cyan `#3CE3FF` for active state, plus signal colours
>   (success `#4ADE80`, warning `#F5B72B`, critical `#FF4D4D`). Optional aurora
>   gradient `#3CE3FF → #B78CFF` reserved for primary CTA & hero rings.
> - **Typography**: `Inter` (UI), `Space Grotesk` or `JetBrains Mono` (metrics),
>   generous line-height, tabular numerals for all telemetry.
> - **Surfaces**: layered glassmorphism but restrained — frosted card over
>   subtle noise; 1px hairline borders `rgba(255,255,255,0.06)`; elevation from
>   light tint rather than heavy shadows.
> - **Corner radii**: 20px cards, 28px bottom sheets, 14px buttons, full-pill
>   for status chips.
> - **Motion**: all state changes ease in 200–300 ms. Battery ring animates
>   with a 1s spring on change. Dynamic "breathing" pulse (0.4Hz) on the
>   connection badge while live. Movement keys ripple with the accent on tap.
>   Use Rive or Lottie for the splash logo and the "searching for robot" radar.
>
> **Screen-by-screen brief**
>
> 1. **Splash** — centered wordmark over an animated radar pulse on graphite.
>    Duration ~1.2s with a smooth crossfade into Connect or Home.
> 2. **Connect screen** — hero illustration of a stylised robot silhouette.
>    One large server-URL field with placeholder, a primary pill CTA "CONNECT"
>    that fills with the aurora gradient on press, and a subtle "Use demo
>    simulator" ghost button underneath.
> 3. **Dashboard** (default tab)
>    - Top: a circular **battery ring** (160dp) with percent in the middle,
>      drained portion dim, remaining in accent; beneath it a one-line
>      telemetry string "Online · 2ms · WiFi".
>    - Middle: **Status card** — connection chip (pulsing dot + label),
>      moving chip, direction chip, last update timestamp.
>    - Bottom: **Live telemetry log** — monospaced, most-recent-at-top,
>      diff-coloured; auto-collapses to 3 rows but expandable.
> 4. **Control screen**
>    - Large directional D-pad at bottom half: four chunky glass buttons
>      (↑ ↓ ← →), each with glowing accent border on hover/press. Centre
>      circular big red **STOP** button (84dp) — always visible, haptic heavy.
>    - Above the pad: speed slider 0–100 with tick marks, current value in
>      the monospace typeface.
>    - Top card: same battery + connection summary as dashboard but compact.
> 5. **Settings**
>    - Grouped list rows: Server URL (editable), Auto-reconnect toggle,
>      Chaos mode toggle (dev), Clear queued commands (destructive red),
>      App version, About.
>
> **Global**
> - Persistent **connection badge** in the top right of every screen.
> - **OfflineBanner**: slides down from the notch when connectivity is lost,
>   warning-amber background, reads "Offline · 2 commands queued", tappable
>   to open the QueuePanel bottom sheet.
> - **QueuePanel**: list of pending commands with timestamp, swipe-to-cancel.
> - **Empty states**: always include an illustration + one-line explanation
>   + primary CTA. Never a bare "No data".
>
> **Accessibility**
> - Contrast ≥ WCAG AA on all text. All buttons ≥ 44×44dp touch target.
> - Respect `prefers-reduced-motion` — skip the pulsing and the aurora shine.
> - Status is announced via `Semantics` labels (VoiceOver/TalkBack ready).
>
> **Deliver**
> - Dark mode only for this round (brand is dark-first). Provide a light-mode
>   pass as a secondary sheet if time allows.
> - Provide Figma components: `BatteryRing`, `ConnectionBadge`, `CommandButton`,
>   `StatusChip`, `OfflineBanner`, `QueuePanel`, `TelemetryRow`.
>
> **Nice-to-have flourishes**
> - A subtle starfield / particle parallax behind the dashboard.
> - A "robot portrait" avatar on the connect screen that tilts with
>   device gyroscope (`sensors_plus`).
> - iOS Live Activity mockup: Dynamic Island expanded view with battery
>   ring (leading), moving-state glyph (trailing), Stop button inline.
>
> **Do NOT**
> - Use stock iconography packs verbatim — prefer custom-styled Lucide
>   icons at 1.5px stroke.
> - Use flat pastel "friendly tech" colours. We are aiming cinematic.
> - Add decorative emojis inside UI copy.

---

## 13. Scalability Hooks (patterns already in place for future)

1. **Add a `fleet_management` package** — list of robots, pick one, per-robot
   telemetry; would drop into the monorepo next to `robot_service` without
   disturbing existing code.
2. **Replace simulator with real backend** — only `robot_facade_impl.dart`
   and `robot_api_client.dart` change. Everything upstream is untouched.
3. **Add auth (like JunoPlus's `authentication` package)** — new package,
   register in `app/lib/di.dart`, gate routes in `auto_route` guard.
4. **Telemetry schema evolution** — `RobotStatus.fromJson` accepts unknown
   fields; bump a `schemaVersion` field and branch in the facade.
5. **Multi-transport** — `IRobotTransport` interface behind facade so MQTT
   or gRPC can drop in.

---

## 14. Production-readiness Notes (mention in README)

Not done in the 4h window but would be added in prod:

- **Observability**: Firebase Crashlytics + custom breadcrumbs from BLoCs.
- **Feature flags**: `firebase_remote_config` to toggle chaos mode, new UI.
- **Security**: mTLS or signed-URL pairing; right now server URL is plain HTTP.
- **CI/CD**: GitHub Actions matrix (iOS/Android), Firebase App Distribution,
  semantic-release.
- **Localisation**: `intl` + ARB files; currently English-only.
- **Analytics**: track command latency, failure rates, queue depths.
- **Performance**: `flutter_displaymode` for high-refresh, `skia_gold`
  perf tests on dashboard redraw.
- **Multi-robot**: the current model assumes a singleton; a `RobotId` would
  thread through facade + BLoCs.

---

## 15. Deliverables Checklist

- [ ] Git repo with monorepo structure
- [ ] Simulator runnable with a single command
- [ ] App runs on iOS + Android simulator against simulator on localhost
- [ ] Connect/disconnect works with visible state
- [ ] Move/stop works with success + failure feedback
- [ ] Offline banner + retry queue visible and functional
- [ ] At least one package's tests pass (`robot_service/test/`)
- [ ] README explains architecture, assumptions, run steps, improvements
- [ ] iOS Live Activity shows status on lock screen (optional)
- [ ] Android foreground service notification (optional)
