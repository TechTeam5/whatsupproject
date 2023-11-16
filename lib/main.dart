import 'package:flutter/material.dart';
import 'package:whatsappp_addchat/src/features/select_contact/selectContactWidget.dart';
// import 'package:whatsup/src/features/select_contact/selectContactWidget.dart';
// import 'package:whatsup/src/pages/homepage.dart';

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
      home: selectContactWidget(),
    );
  }
}


