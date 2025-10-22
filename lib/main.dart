import 'package:flutter/material.dart';
import 'package:local_notifications/services/local_notify_service.dart';

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

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ListTile(
            onTap: () {
              LocalNotifyService.showBasicNotification();
            },
            leading: Icon(Icons.notifications),
            title: Text("Basic Notification"),
            trailing: IconButton(onPressed: () {}, icon: Icon(Icons.cancel)),
          ),
        ],
      ),
    );
  }
}
