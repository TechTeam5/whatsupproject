import 'package:flutter/material.dart';
import '../../../core/theme/text_theme.dart';

class CallListIconWidget extends StatelessWidget {
  final String image;
  final String title;
  final DateTime subTitle;
  const CallListIconWidget(
      {super.key,
      required this.image,
      required this.title,
      required this.subTitle});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 40,
        backgroundImage: NetworkImage(image),
      ),
      title: Text('$title', style: AppTextTheme.titleTextStyle),
      subtitle: Text(
        '$subTitle',
        style: AppTextTheme.subTitleTextStyle,
      ),
      trailing: Icon(Icons.phone),
    );
  }
}
