import 'package:flutter/material.dart';
import 'package:local_notifications/services/local_notify_service.dart';
import 'package:local_notifications/views/home_view.dart';
import 'package:timezone/data/latest.dart' as tz;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocalNotifyService.initLocalNotify();

  tz.initializeTimeZones();
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
          backgroundColor: Colors.deepOrangeAccent,

          title: Text(
            "Local Notifications",
            style: TextStyle(color: Colors.black, fontSize: 25),
          ),
          leading: Icon(Icons.notifications),
        ),
        body: HomeView(),
      ),
    );
  }
}
