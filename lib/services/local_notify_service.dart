import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class LocalNotifyService {
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  Future<void> initLocalNotify() async {
    InitializationSettings initializationSettings = InitializationSettings();
    flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }
}
