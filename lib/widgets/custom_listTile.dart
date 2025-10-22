import 'package:flutter/material.dart';
import 'package:local_notifications/services/local_notify_service.dart';

class CustomListTile extends StatelessWidget {
  final Function()? onTap;
  final void Function()? onPressedCanceled;
  final String title;

  const CustomListTile({
    super.key,
    required this.onTap,
    required this.onPressedCanceled,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Icon(Icons.notifications),
      title: Text(title),
      trailing: IconButton(
        onPressed: onPressedCanceled,
        icon: Icon(Icons.cancel),
      ),
    );
  }
}
