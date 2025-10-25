import 'package:flutter/material.dart';

import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationDetailsScreen extends StatelessWidget {
  const NotificationDetailsScreen({
    super.key,
    required this.notificationResponse,
  });
  final NotificationResponse notificationResponse;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Notification Details')),
      body: Column(
        children: [
          Text("${notificationResponse.id}"),

          SizedBox(height: 8),
          Text("${notificationResponse.payload}"),
        ],
      ),
    );
  }
}
