import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import 'package:local_notifications/services/local_notify_service.dart';
import 'package:local_notifications/views/notification_details_screen.dart';
import 'package:local_notifications/widgets/custom_listTile.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void ListenNotificationStream() {
    LocalNotifyService.streamController.stream.listen((notificationResponse) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => NotificationDetailsScreen(
            notificationResponse: notificationResponse,
          ),
        ),
      );
    });
  }

  void initState() {
    super.initState();
    ListenNotificationStream();
  }

  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomListTile(
            title: "Basic Notification",
            onPressedCanceled: () {
              LocalNotifyService.cancelNotification(id: 0);
            },
            onTap: () {
              LocalNotifyService.showBasicNotification();
            },
          ),
          SizedBox(height: 10),
          CustomListTile(
            title: "Repeated Notification",
            onPressedCanceled: () {
              LocalNotifyService.cancelNotification(id: 1);
            },
            onTap: () {
              LocalNotifyService.showRepeatedNotification();
            },
          ),
          SizedBox(height: 10),
          CustomListTile(
            title: "Scheduled Notification",
            onPressedCanceled: () {
              LocalNotifyService.cancelNotification(id: 2);
            },
            onTap: () {
              LocalNotifyService.showSchdulNotification();
            },
          ),
          SizedBox(height: 8),
          ElevatedButton(
            onPressed: () {
              LocalNotifyService.cancelALLNotification();
            },
            child: Text("clear all"),
          ),
        ],
      ),
    );
  }
}
