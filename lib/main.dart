import 'package:flutter/material.dart';
import 'package:whatsup/src/features/notification/notifi_page.dart';
import 'package:whatsup/src/features/storage_data/storage_data.dart';
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
      home: NotificationSettings()
    );
  }
}


