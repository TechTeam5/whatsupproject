import 'package:flutter/material.dart';

class SettingOption extends StatelessWidget {
  final String title;
  final String subtitle;
  final  Icon icon;
  final Image? image;

  final Function() onTap;

  const SettingOption({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.onTap,
    required this.icon,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: image != null ? image : icon,
      title: Text(title),
      subtitle: Text(subtitle),
      onTap: onTap,

    );
  }
}

class CommunityListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(
        children: [
          SettingOption(
            title: 'New community',
            subtitle: '',
            onTap: () {
              // Navigate to the account settings screen
            },
            icon: Icon(Icons.group_add),
          ),
          // Account
          SettingOption(
            title: 'Cusat Updates',
            subtitle: '',
            onTap: () {
              // Navigate to the account settings screen
            },
            icon: Icon(Icons.image),
            image: Image.asset('assets/images/img1.jpg'),
          ),

          // Privacy
          SettingOption(
            title: 'Announcement',
            subtitle: '+91 8330863172 joined using this group invite link',
            onTap: () {
              // Navigate to the privacy settings screen
            },
            icon: Icon(Icons.announcement_outlined),
            image: Image.asset('assets/images/img1.jpg'),
          ),

        ],
      ),
    );
  }
}