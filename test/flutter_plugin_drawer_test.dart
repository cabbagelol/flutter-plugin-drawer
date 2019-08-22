import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_plugin_drawer/flutter_plugin_drawer.dart';

void main() {
  const MethodChannel channel = MethodChannel('flutter_plugin_drawer');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
//    expect(await FlutterPluginDrawer.platformVersion, '42');
  });
}
