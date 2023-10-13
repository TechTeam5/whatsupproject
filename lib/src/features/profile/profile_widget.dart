import 'package:flutter/material.dart';

void main() {
  runApp(WhatsAppDemo());
}

class WhatsAppDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.white,
        ),
        title: Text('Profile',
          style: TextStyle(
              color: Colors.white
          ),
        ),
        backgroundColor: Colors.green,

      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 50.0,
                    backgroundImage: NetworkImage('https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80'), // Replace with your profile image URL
                  ),

                  Positioned(child: CircleAvatar(
                    backgroundColor: Colors.green,
                    radius: 15,
                    child: IconButton(
                      iconSize:15,
                      color: Colors.white,
                      icon: const Icon(Icons.camera_alt_rounded),
                      onPressed: () {
                      },
                    ),
                  ),
                    bottom: 0,right: 0,
                  )
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Name"),
              subtitle: Text("Melani Shibu"),
              trailing: Icon(Icons.edit),
            ),
            Column(
              children: [Padding(
                padding: const EdgeInsets.fromLTRB(66, 0, 0, 0),
                child: Text("This is not your username or pin. This name will be visible to your WhatsApp contacts",style: TextStyle(color: Colors.grey),),
              )


              ],
            ),
            ListTile(
              leading: Icon(Icons.info_outline),
              title: Text("About"),
              subtitle: Text("Hey there! I am using WhatsApp."),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text("Phone"),
              subtitle: Text("+917556890989"),
              trailing: Icon(Icons.edit),
            )
          ],
        ),
      ),
    );
  }
}