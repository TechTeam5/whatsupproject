import 'package:flutter/material.dart';
import 'package:whatsup/src/features/calls/CallListWidget.dart';
import 'package:whatsup/src/features/chat/chatlist_widget.dart';
import 'package:whatsup/src/features/community/CommunityListWidget.dart';
import 'package:whatsup/src/features/status/StatusListWidget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('WhatsApp'),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.account_circle),),
              Tab(text: 'Chat'),
              Tab(text: 'Status',),
              Tab(text: 'Calls',)
            ],
          ),
        ),
        body: SafeArea(
          child: TabBarView(
            children: [
              CommunityListWidget(),
              ChatListWiget(),
              StatusListWidget(),
              CallListWidget()
            ],
          ),
        ),
      ),
    );
  }
}
