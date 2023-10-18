import 'package:flutter/material.dart';
import 'package:whatsup/src/features/chat/chatlist_widget.dart';

import 'package:whatsup/src/features/settings/settings_Page.dart';

import '../../core/Constants/Strings.dart';
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
          title: Text(Strings.WhatsApp),
          actions: [
            IconButton(onPressed: () {
              Navigator.of(mainContext).push(MaterialPageRoute(
                  builder: (context) => SearchScreen()));
            }, icon: Icon(Icons.search)),
            PopupMenuButton<String>(onSelected: (value) {
              if (value == Strings.Settings) {
                Navigator.of(mainContext).push(MaterialPageRoute(
                    builder: (context) => const SettingsMenu()));
              }
            }, itemBuilder: (BuildContext context) {
              return [
                const PopupMenuItem(
                  child: Text(Strings.NewGroup),
                  value: Strings.NewGroup,
                ),
                PopupMenuItem(
                  child: Text(Strings.NewBroadcast),
                  value: Strings.NewBroadcast,
                ),
                PopupMenuItem(
                  child: Text(Strings.Linkeddevices),
                  value: Strings.Linkeddevices,
                ),
                PopupMenuItem(
                  child: Text(Strings.Starredmessages),
                  value: Strings.Starredmessages,
                ),
                PopupMenuItem(
                  child: Text(Strings.Payments),
                  value: (Strings.Payments),
                ),
                PopupMenuItem(
                  child: Text(Strings.Settings),
                  value: Strings.Settings,
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
                  text: Strings.Chats,

                ),
                Tab(
                  text: Strings.Status,
                ),
                Tab(
                  text: Strings.Calls,
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
