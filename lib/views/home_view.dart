import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import 'package:local_notifications/services/local_notify_service.dart';
import 'package:local_notifications/widgets/custom_listTile.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
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
              //LocalNotifyService.showRepeatedNotification();
            },
          ),
        ],
      ),
    );
  }
}
