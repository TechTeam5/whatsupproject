import 'package:flutter/material.dart';

import '../../core/widget/privacy_list_widget.dart';

class PrivacyPage extends StatefulWidget {
  @override
  State<PrivacyPage> createState() => _SettingsScreenState();
  }

class _SettingsScreenState extends State<PrivacyPage> {
  bool notifyAuthors = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.white,
        ),
        title: Text('Privacy',
          style: TextStyle(
              color: Colors.white
          ),
        ),
        backgroundColor: Colors.green,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                privacyListWidget(
                  subtitle: "Who can see my personal info",
                  title: '',
                ),
                privacyListWidget(title: "Last seen and online", subtitle: "My contacts"),
                privacyListWidget(title: "profile page", subtitle: "My contacts"),
                privacyListWidget(title: "About", subtitle: "My contacts"),
                privacyListWidget(title: "Status", subtitle: "My contact"),
                ListTile(
                  title: Text("Read receipts"),
                  subtitle: Text("if turned off,you won't send receive Read recepits.Read recepits are always sent for group chats"),
                  trailing: Switch(
                    value: notifyAuthors,
                    activeColor: Colors.green[900],
                    onChanged: (bool value) {
                      setState(() {
                        notifyAuthors = value;
                      }
                      );
                    },
                  ),
                ),
                Divider(
                  height: 1,
                  color: Colors.grey,
                ),
                privacyListWidget(
                  subtitle: "Disssappearing messages",
                  title: '',
                ),
                privacyListWidget(title: "Default message timer", subtitle: "Start new chats with disappearing messages set to your timer"),
                Divider(
                  height: 1,
                  color: Colors.grey,
                ),
                privacyListWidget(title: "Groups", subtitle: "Everyone"),
                privacyListWidget(title: "Live location", subtitle: "None"),
                privacyListWidget(title: "Calls", subtitle: "Silence unknown callers"),
                privacyListWidget(title: "Blocked contacts", subtitle: "None"),
                privacyListWidget(title: "Fingerpriny lock", subtitle: "Enabled after 1 minute"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}