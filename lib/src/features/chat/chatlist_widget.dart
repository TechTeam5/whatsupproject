import 'package:flutter/material.dart';
import 'package:whatsup/src/features/chat/chat_list_icon_widget.dart';

class ChatListWiget extends StatelessWidget {
  const ChatListWiget({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ChatListIconWidget(
            title: 'Laxmi ',
            subTitle: 'Hi ',
            image: "https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/v1013-p-0019d-01-ksi8b5jn.jpg?w=800&dpr=1&fit=default&crop=default&q=65&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.1&s=105acc73dbd66de4e097301c10eb6af5",
            lastChatTime: DateTime(2023, 09, 13,01,20),
            unreadCount: 2),
        ChatListIconWidget(
            title: 'Sreehari',
            subTitle: 'Hello ',
            image: "https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/v1013-p-0019d-01-ksi8b5jn.jpg?w=800&dpr=1&fit=default&crop=default&q=65&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.1&s=105acc73dbd66de4e097301c10eb6af5",
            lastChatTime: DateTime(2023,09,9,03,05),
            unreadCount: 3),
        ChatListIconWidget(
            title: 'Anasooya',
            subTitle: 'Evda? ',
            image: "https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/v1013-p-0019d-01-ksi8b5jn.jpg?w=800&dpr=1&fit=default&crop=default&q=65&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.1&s=105acc73dbd66de4e097301c10eb6af5",
            lastChatTime: DateTime(2023, 09, 13,10,45),
            unreadCount: 1),
        ChatListIconWidget(
            title: 'Angel',
            subTitle: 'What about our project ',
            image: "https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/v1013-p-0019d-01-ksi8b5jn.jpg?w=800&dpr=1&fit=default&crop=default&q=65&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.1&s=105acc73dbd66de4e097301c10eb6af5",
            lastChatTime: DateTime(2023, 09, 13,11,25),
            unreadCount: 5),
        ChatListIconWidget(
            title: 'Vino',
            subTitle: 'Hey ',
            image: "https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/v1013-p-0019d-01-ksi8b5jn.jpg?w=800&dpr=1&fit=default&crop=default&q=65&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.1&s=105acc73dbd66de4e097301c10eb6af5",
            lastChatTime: DateTime(2023, 09, 13,1,20),
            unreadCount: 2),
        ChatListIconWidget(
            title: 'Louis',
            subTitle: 'Hi ',
            image: "https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/v1013-p-0019d-01-ksi8b5jn.jpg?w=800&dpr=1&fit=default&crop=default&q=65&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.1&s=105acc73dbd66de4e097301c10eb6af5",
            lastChatTime: DateTime(2023, 09, 13,23,20),
            unreadCount: 4),

        ChatListIconWidget(
            title: 'Ben',
            subTitle: 'Hi ',
            image: "https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/v1013-p-0019d-01-ksi8b5jn.jpg?w=800&dpr=1&fit=default&crop=default&q=65&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.1&s=105acc73dbd66de4e097301c10eb6af5",
            lastChatTime: DateTime(2023, 09, 13,22,20),
            unreadCount: 3),
        ChatListIconWidget(
            title: 'Abin',
            subTitle: 'Hello ',
            image: "https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/v1013-p-0019d-01-ksi8b5jn.jpg?w=800&dpr=1&fit=default&crop=default&q=65&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.1&s=105acc73dbd66de4e097301c10eb6af5",
            lastChatTime: DateTime(2023,09,01,11,11),
            unreadCount: 2),
        ChatListIconWidget(
            title: 'Indru',
            subTitle: 'Evda? ',
            image: "https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/v1013-p-0019d-01-ksi8b5jn.jpg?w=800&dpr=1&fit=default&crop=default&q=65&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.1&s=105acc73dbd66de4e097301c10eb6af5",
            lastChatTime: DateTime(2023, 09, 13,1,20),
            unreadCount: 1),
        ChatListIconWidget(
            title: 'Kailas',
            subTitle: 'What about our project ',
            image: "https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/v1013-p-0019d-01-ksi8b5jn.jpg?w=800&dpr=1&fit=default&crop=default&q=65&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.1&s=105acc73dbd66de4e097301c10eb6af5",
            lastChatTime: DateTime(2023, 09, 13,1,20),
            unreadCount: 2),
        ChatListIconWidget(
            title: 'G',
            subTitle: 'Hey ',
            image: "https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/v1013-p-0019d-01-ksi8b5jn.jpg?w=800&dpr=1&fit=default&crop=default&q=65&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.1&s=105acc73dbd66de4e097301c10eb6af5",
            lastChatTime: DateTime(2023, 09, 13,1,20),
            unreadCount: 3),
        ChatListIconWidget(
            title: 'Amal',
            subTitle: 'Hi ',
            image: "https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/v1013-p-0019d-01-ksi8b5jn.jpg?w=800&dpr=1&fit=default&crop=default&q=65&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.1&s=105acc73dbd66de4e097301c10eb6af5",
            lastChatTime: DateTime(2023, 09, 13,1,20),
            unreadCount: 4),

      ],
    );
  }
}








