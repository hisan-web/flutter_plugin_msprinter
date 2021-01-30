
import 'dart:async';

import 'package:flutter/services.dart';

class FlutterPluginMsprinter {
  static const MethodChannel _channel =
      const MethodChannel('flutter_plugin_msprinter');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<void> sendPrint() async {
    await _channel.invokeMethod('sendPrint');
  }
}
