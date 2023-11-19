import 'package:flutter/material.dart';
import 'package:whatsup/src/features/chat/chat_page.dart';
import 'package:whatsup/src/pages/homepage.dart';
import 'package:whatsup/src/whatsapp/strings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Strings.flutter,

      debugShowCheckedModeBanner: false,
      home: ProfilePage(),
    );
  }
}


