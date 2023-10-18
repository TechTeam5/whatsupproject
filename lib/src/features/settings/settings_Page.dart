import 'package:flutter/material.dart';
import 'package:whatsup/src/features/settings/settings_Title.dart';
import '../../core/Constants/Strings.dart';
import 'profile_List.dart';

class SettingsMenu extends StatefulWidget {
  const SettingsMenu({Key? key}) : super(key: key);

  @override
  State<SettingsMenu> createState() => _SettingsMenuState();
}

class _SettingsMenuState extends State<SettingsMenu> {
  void logout() {
    //Write Logout Logic
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(Strings.Settings),
        actions: [
          // IconButton(
          //   icon: Icon(Icons.search),
          //   onPressed: showSearchBar,
          // ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(bottom: 100),
        children: [
          SizedBox(
            height: 10,
          ),
          ProfileListTile(
            profilePhotoUrl: 'assets/images/rofile_photo.jpeg',
            profileSubText: Strings.NewToWhatsApp,
            profileName: Strings.ProfileName,
            // child: null,
          ),
          SizedBox(
            height: 10,
          ),
          SettingsTile(
            title: Strings.Notifications,
            leading: Icon(Icons.notifications),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              // Navigate to the notifications settings screen
            },
          ),
          SettingsTile(
            title: Strings.Privacy,
            leading: Icon(Icons.privacy_tip),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              // Navigate to the privacy settings screen
            },
          ),
          SettingsTile(
            title: Strings.Security,
            leading: Icon(Icons.security),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              // Navigate to the security settings screen
            },
          ),
          SettingsTile(
            title: Strings.Theme,
            leading: Icon(Icons.color_lens),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              // Navigate to the theme settings screen
            },
          ),
          SettingsTile(
            title: Strings.ChatWallpaper,
            leading: Icon(Icons.wallpaper),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              // Navigate to the chat wallpaper settings screen
            },
          ),
          SettingsTile(
            title: Strings.MediaAutoDownload,
            leading: Icon(Icons.cloud_download),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              // Navigate to the media auto-download settings screen
            },
          ),
          SettingsTile(
            title: Strings.RequestAccountInfo,
            leading: Icon(Icons.account_circle),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              // Navigate to the request account info screen
            },
          ),
          SettingsTile(
            title: Strings.KeyboardShortcuts,
            leading: Icon(Icons.keyboard),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              // Navigate to the keyboard shortcuts settings screen
            },
          ),
          SettingsTile(
            title: Strings.Help,
            leading: Icon(Icons.help),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              // Navigate to the help screen
            },
          ),
          SettingsTile(
            title: Strings.LogOut,
            leading: Icon(Icons.logout),
            onTap: logout,
          ),
        ],
      ),
    );
  }
}
