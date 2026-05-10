import Flutter
import UIKit

@main
@objc class AppDelegate: FlutterAppDelegate {

  private static let appGroupId = "group.engineeredarts.robot.liveactivity"
  private static let stopKey   = "robot.stopRequestedAt"
  private static let channelName = "engineeredarts/robot/live_activity"

  private var channel: FlutterMethodChannel?
  private var pollTimer: Timer?
  private var lastSeenStop: Double = 0

  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)

    // Wire up the MethodChannel for the Live Activity ↔ Dart bridge.
    if let controller = window?.rootViewController as? FlutterViewController {
      channel = FlutterMethodChannel(
        name: AppDelegate.channelName,
        binaryMessenger: controller.binaryMessenger
      )
      // Handle calls from Dart → native (none currently, but keeps channel open).
      channel?.setMethodCallHandler { [weak self] call, result in
        if call.method == "getPendingStop" {
          let ts = UserDefaults(suiteName: AppDelegate.appGroupId)?
            .double(forKey: AppDelegate.stopKey) ?? 0
          result(ts)
        } else {
          result(FlutterMethodNotImplemented)
        }
      }
      startPolling()
    }

    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }

  // MARK: – App Group polling

  private func startPolling() {
    pollTimer = Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true) { [weak self] _ in
      self?.checkForStopIntent()
    }
  }

  private func checkForStopIntent() {
    guard let defaults = UserDefaults(suiteName: AppDelegate.appGroupId) else { return }
    let ts = defaults.double(forKey: AppDelegate.stopKey)
    guard ts > 0, ts != lastSeenStop else { return }
    lastSeenStop = ts
    // Consume the flag so it only fires once.
    defaults.removeObject(forKey: AppDelegate.stopKey)
    // Notify Dart.
    channel?.invokeMethod("stopRequested", arguments: nil)
  }
}
