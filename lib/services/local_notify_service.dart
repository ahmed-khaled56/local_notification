import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class LocalNotifyService {
  static FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  static Future<void> initLocalNotify() async {
    InitializationSettings initializationSettings = InitializationSettings(
      android: AndroidInitializationSettings('mipmap/ic_launcher'),
      iOS: DarwinInitializationSettings(),
    );

    flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }
}
