import 'package:flutter/material.dart';
import 'package:whatsup/src/features/settings/settings_title.dart';

import 'ProfileList.dart';

class SettingsMenu extends StatefulWidget {
  const SettingsMenu({Key? key}) : super(key: key);

  @override
  State<SettingsMenu> createState() => _SettingsMenuState();
}

class _SettingsMenuState extends State<SettingsMenu> {
  // void showSearchBar() {
  //   showModalBottomSheet(
  //     context: context,
  //     builder: (context) => SearchBar(hintText: '', onSearch: () {  },),
  //   );
  // }

  void logout() {
    // TODO: Implement this function to log the user out of the app
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Settings'),
        actions: [
          // IconButton(
          //   icon: Icon(Icons.search),
          //   onPressed: showSearchBar,
          // ),
        ],
      ),
      body: ListView(
        children: [SizedBox(height: 10,),
          ProfileListTile(profilePhotoUrl: 'assets/images/rofile_photo.jpeg',
            profileSubText: 'New to whats app',
            profileName: 'Kiran lal K',
            // child: null,
          ),SizedBox(height: 10,),
          SettingsTile(
            title: 'Notifications',

            leading: Icon(Icons.notifications),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              // Navigate to the notifications settings screen
            },
          ),
          SettingsTile(
            title: 'Privacy',
            leading: Icon(Icons.privacy_tip),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              // Navigate to the privacy settings screen
            },
          ),
          SettingsTile(
            title: 'Security',
            leading: Icon(Icons.security),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              // Navigate to the security settings screen
            },
          ),
          SettingsTile(
            title: 'Theme',
            leading: Icon(Icons.color_lens),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              // Navigate to the theme settings screen
            },
          ),
          SettingsTile(
            title: 'Chat wallpaper',
            leading: Icon(Icons.wallpaper),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              // Navigate to the chat wallpaper settings screen
            },
          ),
          SettingsTile(
            title: 'Media auto-download',
            leading: Icon(Icons.cloud_download),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              // Navigate to the media auto-download settings screen
            },
          ),
          SettingsTile(
            title: 'Request account info',
            leading: Icon(Icons.account_circle),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              // Navigate to the request account info screen
            },
          ),
          SettingsTile(
            title: 'Keyboard shortcuts',
            leading: Icon(Icons.keyboard),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              // Navigate to the keyboard shortcuts settings screen
            },
          ),
          SettingsTile(
            title: 'Help',
            leading: Icon(Icons.help),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              // Navigate to the help screen
            },
          ),
          SettingsTile(
            title: 'Log out',
            leading: Icon(Icons.logout),
            onTap: logout,
          ),
        ],
      ),
    );
  }
}

