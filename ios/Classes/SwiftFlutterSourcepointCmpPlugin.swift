import Flutter
import UIKit

public class SwiftFlutterSourcepointCmpPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutter_sourcepoint_cmp", binaryMessenger: registrar.messenger())
    let instance = SwiftFlutterSourcepointCmpPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}
