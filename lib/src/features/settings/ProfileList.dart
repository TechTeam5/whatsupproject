import 'package:flutter/material.dart';

class ProfileListTile extends StatelessWidget {
  final String profilePhotoUrl;
  final String profileName;
  final String profileSubText;
  // final Widget child;

  const ProfileListTile({
    Key? key,
    required this.profilePhotoUrl,
    required this.profileName,
    required this.profileSubText,
    // required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage:AssetImage(profilePhotoUrl) ,
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(profileName),
          Text(
            profileSubText,
            style: TextStyle(fontSize: 12.0, color: Colors.grey),
          ),
        ],
      ),
      // subtitle: child,
    );
  }
}
