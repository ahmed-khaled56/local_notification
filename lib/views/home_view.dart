import 'package:flutter/material.dart';

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
            onPressedCanceled: () {},
            onTap: () {
              LocalNotifyService.showBasicNotification();
            },
          ),
        ],
      ),
    );
  }
}
