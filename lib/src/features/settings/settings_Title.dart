import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsTile extends StatelessWidget {
  final String title;
  final Icon leading;
  final Icon? trailing;
  final VoidCallback onTap;

  const SettingsTile({
    Key? key,
    required this.title,
    required this.leading,
    this.trailing,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leading,
      title: Text(title),
      trailing: trailing,
      onTap: onTap,
    );
  }
}
