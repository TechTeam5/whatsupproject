import 'package:flutter/material.dart';
import 'package:whatsup/src/core/constants/strings.dart';

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
        title: Text(Strings.privacy,
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
                  subtitle: Strings.sub1,
                  title: '',
                ),
                privacyListWidget(title: "Last seen and online", subtitle: "My contacts"),
                privacyListWidget(title: "profile page", subtitle: "My contacts"),
                privacyListWidget(title: "About", subtitle: "My contacts"),
                privacyListWidget(title: "Status", subtitle: "My contact"),
                ListTile(
                  title: Text(Strings.title1),
                  subtitle: Text(Strings.sub2),
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
                  subtitle: Strings.sub3,
                  title: '',
                ),
                privacyListWidget(title: Strings.title2,
                    subtitle: Strings.sub4),
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