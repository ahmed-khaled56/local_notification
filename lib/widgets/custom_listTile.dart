import 'package:flutter/material.dart';

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
      title: Text(title, style: TextStyle(fontSize: 20)),
      trailing: IconButton(
        onPressed: onPressedCanceled,
        icon: Icon(Icons.cancel),
      ),
    );
  }
}
