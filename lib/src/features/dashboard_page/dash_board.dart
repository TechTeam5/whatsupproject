import 'package:flutter/material.dart';
import 'package:whatsup/src/features/chat/chatlist_widget.dart';

import 'package:whatsup/src/features/settings/settings.dart';

import '../search/search_page.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext mainContext) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xff075e54),
          title: Text("Whatsapp"),
          actions: [
            IconButton(onPressed: () {
              Navigator.of(mainContext).push(MaterialPageRoute(
                  builder: (context) => SearchScreen()));
            }, icon: Icon(Icons.search)),
            PopupMenuButton<String>(onSelected: (value) {
              if (value == "Settings") {
                Navigator.of(mainContext).push(MaterialPageRoute(
                    builder: (context) => const SettingsMenu()));
              }
            }, itemBuilder: (BuildContext context) {
              return [
                const PopupMenuItem(
                  child: Text("New group"),
                  value: "New group",
                ),
                PopupMenuItem(
                  child: Text("New broadcast"),
                  value: "New broadcast",
                ),
                PopupMenuItem(
                  child: Text("Linked devices"),
                  value: "Linked devices",
                ),
                PopupMenuItem(
                  child: Text("Starred messages"),
                  value: "Starred messages",
                ),
                PopupMenuItem(
                  child: Text("Payments"),
                  value: "Payments",
                ),
                PopupMenuItem(
                  child: Text("Settings"),
                  value: "Settings",
                ),
              ];
            })
          ],
          bottom: TabBar(
              controller: tabController,
              indicatorColor: Colors.white,
              tabs: [
                Tab(
                  icon: Image.asset(
                    'assets/images/community_icon.png',
                    color: Colors.white,
                    width: 30,
                    height: 20,
                  ),
                ),
                Tab(
                  text: "Chats",

                ),
                Tab(
                  text: "Status",
                ),
                Tab(
                  text: "Calls",
                ),
              ])),
      body: SafeArea(
          child: TabBarView(
            children: [
             ChatListWiget(),
            ],
            controller: tabController,
          )),
    );
  }
}
