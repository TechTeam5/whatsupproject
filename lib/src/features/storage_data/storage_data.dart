import 'package:flutter/material.dart';


class Storageanddata extends StatefulWidget {
  Storageanddata({super.key});

  @override
  State<Storageanddata> createState() => _Storageanddata();
}

class _Storageanddata extends State<Storageanddata> {
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
              title: Text("Storage and data"),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              leading: Icon(Icons.sd_storage),
              title: Text(
                "Manage storage",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: Text("7.0 GB"),
            ),
            Divider(
                height: 20, thickness: 1, indent: 4, color: Colors.grey[100]),
            ListTile(
              leading: Icon(Icons.network_cell),
              title: Text(
                "Network usage",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: Text("24.5 MB sent - 1.3 GB received"),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              trailing: Switch(
                onChanged: toggleSwitch,
                value: isSwitched,
                activeColor: Colors.green,
                activeTrackColor: Colors.green,
                inactiveThumbColor: Colors.grey,
                inactiveTrackColor: Colors.grey,
              ),
              title: Text(
                "User less data for calls",
                
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              title: Text(
                "Proxy",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: Text("off"),
              
            ),
            Divider(
                height: 20, thickness: 1, indent: 4, color: Colors.grey[100]),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
              child: Container(
                height: 33,
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "Media auto-download",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey),
                ),
              ),
            ),
            ListTile(
              title: Text(
                "When using mobile data",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: Text("Photos"),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              title: Text(
                "When connected to Wi-Fi",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: Text("Photos"),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              title: Text(
                "When Roaming",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: Text("No media"),
            ),
          ]),
        ),
      ),
    );
  }
}
