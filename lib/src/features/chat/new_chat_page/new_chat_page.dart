import 'package:flutter/material.dart';
import 'package:whatsup/src/core/colors/colors.dart';
import 'package:whatsup/src/features/chat/new_chat_page/constants/strings.dart';
import '../../../core/theme/text_theme.dart';

class NewChatPage extends StatelessWidget {
  const NewChatPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Row(
          children: [
            SizedBox(width: 5),
            CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('Assets/images/profile.jpg')
            ),
          ],
        ),
        backgroundColor: AppColors.whatsup,
        title: Text(Strings.name, style: AppTextTheme.titleTextStyle),
        actions: [
          SizedBox(width: 10),
          Icon(Icons.videocam),
          SizedBox(width: 10),
          Icon(Icons.phone),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.more_vert),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 600,
              ),
              Row(
                children: [
                  Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColors.black),
                        borderRadius: BorderRadius.circular(20.0)),
                    margin: EdgeInsets.all(16),
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {}, icon: Icon(Icons.emoji_emotions)),
                        Expanded(
                            child: TextField(
                          decoration: InputDecoration(
                            hintText: "message",
                          ),
                        )),
                        IconButton(
                            onPressed: () {}, icon: Icon(Icons.attach_file)),
                        IconButton(
                            onPressed: () {}, icon: Icon(Icons.camera_alt))
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: AppColors.whatsup),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.mic,
                        color: AppColors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
