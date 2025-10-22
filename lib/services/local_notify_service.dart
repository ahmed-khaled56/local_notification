import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest.dart' as tz;

class LocalNotifyService {
  static FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
  static ontap(NotificationResponse notificationResponse) {}

  static Future<void> initLocalNotify() async {
    InitializationSettings Settings = InitializationSettings(
      android: AndroidInitializationSettings('mipmap/ic_launcher'),
      iOS: DarwinInitializationSettings(),
    );

    flutterLocalNotificationsPlugin.initialize(
      Settings,
      onDidReceiveBackgroundNotificationResponse: ontap,
      onDidReceiveNotificationResponse: ontap,
    );
  }

  static void showBasicNotification() async {
    NotificationDetails Details = NotificationDetails(
      android: AndroidNotificationDetails(
        "id 1",
        "basic Channel",
        priority: Priority.high,
        importance: Importance.max,
      ),
    );
    await flutterLocalNotificationsPlugin.show(
      0,
      "basic notification ",
      "Basic body",
      Details,
      payload: "Payload Data",
    );
  }

  static void showRepeatedNotification() async {
    NotificationDetails Details = NotificationDetails(
      android: AndroidNotificationDetails(
        "id 2",
        "Repeated Channel",
        priority: Priority.high,
        importance: Importance.max,
      ),
    );
    await flutterLocalNotificationsPlugin.periodicallyShow(
      androidScheduleMode: AndroidScheduleMode.alarmClock,
      1,
      'Repeated notification ',
      'Repeated body',
      RepeatInterval.everyMinute,
      Details,
      payload: "Payload Data",
    );
  }

  static void showSchdulNotification() async {
    NotificationDetails Details = NotificationDetails(
      android: AndroidNotificationDetails(
        "id 3",
        "basic Channel",
        priority: Priority.high,
        importance: Importance.max,
      ),
    );
    await flutterLocalNotificationsPlugin.zonedSchedule(
      androidScheduleMode: AndroidScheduleMode.alarmClock,
      2,
      "Shcduled notification ",
      "Shcduled body",

      tz.TZDateTime.now(tz.local).add(const Duration(seconds: 10)),
      Details,

      payload: "Payload Data",
    );
  }

  static void cancelNotification({required int id}) async {
    await flutterLocalNotificationsPlugin.cancel(id);
  }
}
