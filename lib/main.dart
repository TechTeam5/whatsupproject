import 'package:flutter/material.dart';
import 'package:whatsup/src/features/notification/notifi_page.dart';
<<<<<<< HEAD
=======
import 'package:whatsup/src/features/storage_data/storage_data.dart';
>>>>>>> 9eff369d1b98c8ed55367d5986bcbf12bfd1e5b3
import 'package:whatsup/src/pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      debugShowCheckedModeBanner: false,
<<<<<<< HEAD
      home: NotificationPage(),
=======
      home: NotificationSettings()
>>>>>>> 9eff369d1b98c8ed55367d5986bcbf12bfd1e5b3
    );
  }
}


