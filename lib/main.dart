import 'package:flutter/material.dart';
import 'package:whatsup/src/features/dashboard_page/dash_board.dart';
import 'package:whatsup/src/features/settings/homepage.dart';
import 'package:whatsup/src/features/settings/settings.dart';

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
      home: DashboardPage(),
    );
  }
}


