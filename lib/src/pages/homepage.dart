import 'package:flutter/material.dart';
import 'package:whatsup/src/features/calls/CallListWidget.dart';
import 'package:whatsup/src/features/chat/chatlist_widget.dart';
import 'package:whatsup/src/features/community/community_list_widget.dart';
import 'package:whatsup/src/features/status/StatusListWidget.dart';
import 'package:whatsup/src/whatsapp/strings.dart';

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
          title: Text(Strings.whatsapp),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.account_circle),),
              Tab(text: Strings.chat),
              Tab(text: Strings.status,),
              Tab(text: Strings.call,)
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
