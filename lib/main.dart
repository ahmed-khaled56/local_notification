import 'package:flutter/material.dart';
import 'package:local_notifications/services/local_notify_service.dart';
import 'package:local_notifications/views/home_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocalNotifyService.initLocalNotify();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "Local Notification",
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
          ),
        ),
        body: HomeView(),
      ),
    );
  }
}
