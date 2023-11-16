import 'package:flutter/material.dart';
class selectContactWidget extends StatefulWidget {
  const selectContactWidget({Key? key}) : super(key: key);

  @override
  State<selectContactWidget> createState() => _selectContactWidgetState();
}

class _selectContactWidgetState extends State<selectContactWidget> {
  final List<Contact> contacts = [
    Contact(name: 'Melani(You)', status: 'Message yourself', profileImage: "assets/mel.jpeg"),
    Contact(name: 'Ria', status: 'Hey there! I am using Whatsapp', profileImage: 'assets/ria.jpg'),
    Contact(name: 'Robin', status: 'Good things take time', profileImage: 'assets/Robin.jpeg'),
    Contact(name: 'Ami', status: 'Pray, Hold on, heal', profileImage: 'assets/ami.jpeg'),
    Contact(name: 'Diya', status: 'Better days are on the way', profileImage: 'assets/Diya.jpg'),
  ];
  bool isSearchBarActive = false;
  TextEditingController searchController = TextEditingController();

  void toggleSearchBar() {
    setState(() {
      isSearchBarActive = !isSearchBarActive;
    });
  }

  List<Contact> getFilteredContacts(String query) {
    return contacts
        .where((contact) =>
        contact.name.toLowerCase().contains(query.toLowerCase()))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Select Contact'),
            Text(
              ' ${contacts.length} contacts',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
        backgroundColor: Colors.green,
        actions: <Widget>[
          IconButton(
            icon: Icon(isSearchBarActive ? Icons.close : Icons.search),
            onPressed: toggleSearchBar,
          ),
          PopupMenuButton<String>(
            onSelected: (value) {
              if (value == 'settings') {
                // Handle settings option
              } else if (value == 'help') {
                // Handle help option
              }
            },
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem<String>(
                  value: 'settings',
                  child: Text('Settings'),
                ),
                PopupMenuItem<String>(
                  value: 'help',
                  child: Text('Help'),
                ),
              ];
            },
          ),
        ],
        flexibleSpace: isSearchBarActive
            ? AppBarSearchBar(searchController: searchController)
            : null, // Use null when search bar is not active
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              SizedBox(height: 80, width: 16),
              CircleAvatarWithIcon(
                icon: Icons.group,
                backgroundColor: Colors.green,
                radius: 24.0,
                iconSize: 16.0,
              ),
              SizedBox(width: 16),
              Text(
                'New Group',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: <Widget>[
              SizedBox(width: 16),
              CircleAvatarWithIcon(
                icon: Icons.person_add,
                backgroundColor: Colors.green,
                radius: 24.0,
                iconSize: 16.0,
              ),
              SizedBox(width: 16),
              Text(
                'New Contact',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(width: 150),
              Icon(
                Icons.qr_code_2,
                size: 25,
              ),
            ],
          ),
          SizedBox(height: 30),
          Row(
            children: <Widget>[
              SizedBox(width: 16),
              CircleAvatarWithIcon(
                icon: Icons.groups_3,
                backgroundColor: Colors.green,
                radius: 24.0,
                iconSize: 16.0,
              ),
              SizedBox(width: 16),
              Text(
                'New Community',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
          SizedBox(height: 30),
          Padding(
            padding: EdgeInsets.only(left: 16),
            child: Text(
              'Contacts on Whatsapp',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
          ),
          isSearchBarActive
              ? Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: getFilteredContacts(searchController.text).length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(
                        getFilteredContacts(searchController.text)[index]
                            .profileImage),
                  ),
                  title: Text(
                      getFilteredContacts(searchController.text)[index]
                          .name),
                  subtitle: Text(
                      getFilteredContacts(searchController.text)[index]
                          .status),
                  onTap: () {
                    // Handle contact selection
                  },
                );
              },
            ),
          )
              : Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: contacts.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage:
                    AssetImage(contacts[index].profileImage),
                  ),
                  title: Text(contacts[index].name),
                  subtitle: Text(contacts[index].status),
                  onTap: () {
                    // Handle contact selection
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class AppBarSearchBar extends StatelessWidget {
  final TextEditingController searchController;

  AppBarSearchBar({required this.searchController});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: TextField(
        controller: searchController,
        decoration: InputDecoration(
          hintText: 'Search...',
          border: InputBorder.none,
        ),
      ),
    );
  }
}

class CircleAvatarWithIcon extends StatelessWidget {
  final IconData icon;
  final double radius;
  final double iconSize;
  final Color iconColor;
  final Color backgroundColor;

  CircleAvatarWithIcon({
    required this.icon,
    this.radius = 24.0,
    this.iconSize = 16.0,
    this.iconColor = Colors.white,
    this.backgroundColor = Colors.blue,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: backgroundColor,
      child: Icon(
        icon,
        color: iconColor,
        size: iconSize,
      ),
    );
  }
}

class Contact {
  final String name;
  final String status;
  final String profileImage;

  Contact({required this.name, required this.status, required this.profileImage});
}
