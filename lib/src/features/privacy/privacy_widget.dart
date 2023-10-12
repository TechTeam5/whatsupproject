import 'package:flutter/material.dart';

import '../../core/widget/settings_widget.dart';

class PrivacyPage extends StatefulWidget {
  @override
  State<PrivacyPage> createState() => _SettingsScreenState();
  }

class _SettingsScreenState extends State<PrivacyPage> {
  bool notifyauthors = false;
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
                SettingsList(
                  subtitle: "Who can see my personal info",
                  title: '',
                ),
                SettingsList(title: "Last seen and online", subtitle: "My contacts"),
                SettingsList(title: "profile page", subtitle: "My contacts"),
                SettingsList(title: "About", subtitle: "My contacts"),
                SettingsList(title: "Status", subtitle: "My contact"),
                ListTile(
                  title: Text("Read receipts"),
                  subtitle: Text("if turned off,you won't send receive Read recepits.Read recepits are always sent for group chats"),
                  trailing: Switch(
                    value: notifyauthors,
                    activeColor: Colors.green[900],
                    onChanged: (bool value) {
                      setState(() {
                        notifyauthors = value;
                      }
                      );
                    },
                  ),
                ),
                Divider(
                  height: 1,
                  color: Colors.grey,
                ),
                SettingsList(
                  subtitle: "Disssappearing messages",
                  title: '',
                ),
                SettingsList(title: "Default message timer", subtitle: "Start new chats with disappearing messages set to your timer"),
                Divider(
                  height: 1,
                  color: Colors.grey,
                ),
                SettingsList(title: "Groups", subtitle: "Everyone"),
                SettingsList(title: "Live location", subtitle: "None"),
                SettingsList(title: "Calls", subtitle: "Silence unknown callers"),
                SettingsList(title: "Blocked contacts", subtitle: "None"),
                SettingsList(title: "Fingerpriny lock", subtitle: "Enabled after 1 minute"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}