import 'package:flutter/material.dart';


class NotificationPage extends StatefulWidget {
  NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  bool isSwitched = false;
  var textValue = 'Switch is OFF';

  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
        textValue = 'Switch Button is ON';
      });
      print('Switch Button is ON');
    } else {
      setState(() {
        isSwitched = false;
        textValue = 'Switch Button is OFF';
      });
      print('Switch Button is OFF');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            AppBar(
              leading: IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_back),
              ),
              backgroundColor: Colors.teal[900],
              title: Text("Notification"),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              title: Text(
                "Coversation tones",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle:
              Text("Play sounds for incoming and outgoing \nmessages"),
              trailing: Switch(
                onChanged: toggleSwitch,
                value: isSwitched,
                activeColor: Colors.green,
                activeTrackColor: Colors.green,
                inactiveThumbColor: Colors.grey,
                inactiveTrackColor: Colors.grey,
              ),
            ),
            Divider(
                height: 20, thickness: 1, indent: 4, color: Colors.grey[100]),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
              child: Container(
                height: 33,
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "Messages",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey),
                ),
              ),
            ),
            ListTile(
              title: Text(
                "Notification tone",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: Text("Default(Fadeln.ogg)"),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              title: Text(
                "Vibrate",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text("Default"),
            ),
            ListTile(
              title: Text(
                "Popup Notification",
                style: TextStyle(fontWeight: FontWeight.w300),
              ),
              subtitle: Text("Not available"),
            ),
            ListTile(
              title: Text(
                "Light",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: Text("White"),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              title: Text(
                "Use high Priority notifications",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: Text(
                  "Show previews of notifications at the top \n of the screen"),
              trailing: Switch(
                onChanged: toggleSwitch,
                value: isSwitched,
                activeColor: Colors.green,
                activeTrackColor: Colors.green,
                inactiveThumbColor: Colors.grey,
                inactiveTrackColor: Colors.grey,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              title: Text(
                "Reaction Notifications",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: Text(
                  "Show notifications for reactions to \n  messages you send"),
              trailing: Switch(
                onChanged: toggleSwitch,
                value: isSwitched,
                activeColor: Colors.green,
                activeTrackColor: Colors.green,
                inactiveThumbColor: Colors.grey,
                inactiveTrackColor: Colors.grey,
              ),
            ),
            Divider(
                height: 20, thickness: 1, indent: 4, color: Colors.grey[100]),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
              child: Container(
                height: 33,
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "Groups",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey),
                ),
              ),
            ),
            ListTile(
              title: Text(
                "Notification tone",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: Text("Deafult(Fadlen.ogg)"),
            ),
            ListTile(
              title: Text(
                "Vibrate",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: Text("Default"),
            ),
            ListTile(
              title: Text(
                "Light",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: Text("White"),
            ),
            ListTile(
              title: Text(
                "Use high Priority notifications",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: Text(
                  "Show previews of notifications at the top \n of the screen"),
              trailing: Switch(
                onChanged: toggleSwitch,
                value: isSwitched,
                activeColor: Colors.green,
                activeTrackColor: Colors.green,
                inactiveThumbColor: Colors.grey,
                inactiveTrackColor: Colors.grey,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              title: Text(
                "Reaction Notifications",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: Text(
                  "Show notifications for reactions to \n  messages you send"),
              trailing: Switch(
                onChanged: toggleSwitch,
                value: isSwitched,
                activeColor: Colors.green,
                activeTrackColor: Colors.green,
                inactiveThumbColor: Colors.grey,
                inactiveTrackColor: Colors.grey,
              ),
            ),
            Divider(
                height: 20, thickness: 1, indent: 4, color: Colors.grey[100]),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
              child: Container(
                height: 33,
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "Calls",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey),
                ),
              ),
            ),
            ListTile(
              title: Text(
                "Ringtone",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: Text("Deafult(Pachainirame.mp3"),
            ),
            ListTile(
              title: Text(
                "Vibrate",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: Text("Default"),
            ),
          ]),
        ),
      ),
    );
  }
}
