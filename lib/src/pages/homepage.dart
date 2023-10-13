import 'package:flutter/material.dart';
import 'package:whatsup/src/features/calls/widget/callListWidget.dart';
import 'package:whatsup/src/features/chat/chatlist_widget.dart';
import 'package:whatsup/src/features/community/communityListWidget.dart';
import 'package:whatsup/src/features/status/statusListWidget.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
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
