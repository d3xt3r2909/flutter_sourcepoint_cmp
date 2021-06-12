import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_sourcepoint_cmp/flutter_sourcepoint_cmp.dart';

void main() {
  const MethodChannel channel = MethodChannel('flutter_sourcepoint_cmp');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await FlutterSourcepointCmp.platformVersion, '42');
  });
}
