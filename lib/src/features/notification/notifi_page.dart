import 'package:flutter/material.dart';

import '../../core/constants/strings.dart';
import 'package:whatsup/src/core/color/color.dart';


class NotificationSettings extends StatefulWidget {
  const NotificationSettings({super.key});

  @override
  State<NotificationSettings> createState() => _NotificatinSettingsState();
}

class _NotificatinSettingsState extends State<NotificationSettings> {
  bool isSwitched = false;
  var textValue = Strings.switchoff;

  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
        textValue = Strings.switchon;
      });
    } else {
      setState(() {
        isSwitched = false;
        textValue = Strings.switchoff;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          AppBar(
            leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
            title: Text(Strings.NotificationText),
            backgroundColor: ColorConstants.kPrimaryColor,
          ),
          ListTile(
            title: Text(
              Strings.Conversationtonestext,
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle: Text(Strings.Conversationtonestext),
            leading: Icon(Icons.brightness_7_outlined),
            trailing: Switch(
              onChanged: toggleSwitch,
              value: isSwitched,
              activeColor: ColorConstants.kPrimaryColor,
              activeTrackColor: ColorConstants.kPrimaryColor,
              inactiveThumbColor: ColorConstants.kSecondaryColor,
              inactiveTrackColor: ColorConstants.kSecondaryColor,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: Container(
              height: 33,
              width: MediaQuery.of(context).size.width,
              child: Text(
                Strings.message,
                style:
                    TextStyle(color: ColorConstants.kSecondaryColor, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          ListTile(
            title: Text(
              Strings.NotificationtoneText,
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle: Text(Strings.sfxtext),
          ),
          ListTile(
            title: Text(
              Strings.vibrate,
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle: Text(Strings.defaulttext),
          ),
          ListTile(
            title: Text(
              Strings.light,
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle: Text(Strings.white),
          ),
          ListTile(
            title: Text(
              Strings.text1,
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle:
                Text(Strings.text2),
            trailing: Switch(
              onChanged: toggleSwitch,
              value: isSwitched,
              activeColor: ColorConstants.kPrimaryColor,
              activeTrackColor: ColorConstants.kPrimaryColor,
              inactiveThumbColor: ColorConstants.kSecondaryColor,
              inactiveTrackColor: ColorConstants.kSecondaryColor,
            ),
          ),
          ListTile(
            title: Text(
              Strings.txt3,
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle: Text(
                Strings.txt4),
            trailing: Switch(
              onChanged: toggleSwitch,
              value: isSwitched,
              activeColor: ColorConstants.kPrimaryColor,
              activeTrackColor: ColorConstants.kPrimaryColor,
              inactiveThumbColor: ColorConstants.kSecondaryColor,
              inactiveTrackColor: ColorConstants.kSecondaryColor,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: Container(
              height: 33,
              width: MediaQuery.of(context).size.width,
              child: Text(
                Strings.groupstxt,
                style:
                    TextStyle(color: ColorConstants.kSecondaryColor, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          ListTile(
            title: Text(
              Strings.NotificationtoneText,
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle: Text(Strings.sfxtext),
          ),
          ListTile(
            title: Text(
              Strings.vibrate,
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle: Text(Strings.defaulttext),
          ),
          ListTile(
            title: Text(
              Strings.light,
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle: Text(Strings.white),
          ),
          ListTile(
            title: Text(
              Strings.text1,
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle:
                Text(Strings.shownoti1),
            trailing: Switch(
              onChanged: toggleSwitch,
              value: isSwitched,
              activeColor: ColorConstants.kPrimaryColor,
              activeTrackColor: ColorConstants.kPrimaryColor,
              inactiveThumbColor: ColorConstants.kSecondaryColor,
              inactiveTrackColor: ColorConstants.kSecondaryColor,
            ),
          ),
          ListTile(
            title: Text(
              Strings.reaction,
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle: Text(
                Strings.shownoti),
            trailing: Switch(
              onChanged: toggleSwitch,
              value: isSwitched,
              activeColor: ColorConstants.kPrimaryColor,
              activeTrackColor: ColorConstants.kPrimaryColor,
              inactiveThumbColor: ColorConstants.kSecondaryColor,
              inactiveTrackColor: ColorConstants.kSecondaryColor,
            ),
          ),
        ],
      ),
    ));
  }
}