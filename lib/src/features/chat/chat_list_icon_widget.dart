import 'package:flutter/material.dart';

import '../../core/helper/datetime-helper.dart';
import '../../core/theme/text_theme.dart';


class ChatListIconWidget extends StatelessWidget {
  final String title;
  final String subTitle;
  final String image;
  final DateTime lastChatTime;
  final int unreadCount;
  const ChatListIconWidget(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.image,
      required this.lastChatTime,
      required this.unreadCount});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 40,
        backgroundImage: NetworkImage(image),
      ),
      title: Text(title, style: AppTextTheme.titleTextStyle),
      subtitle: Text(
        subTitle,
        style: AppTextTheme.subTitleTextStyle,
      ),
      trailing: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(DateTimeHelper.getFormatteDate(lastChatTime)),
          SizedBox(
            height: 8,
          ),
          Visibility(
            visible: unreadCount > 0,
            child: Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(30)),
              child: Center(child: Text('$unreadCount')),
            ),
          ),
        ],
      ),
    );
  }
}
