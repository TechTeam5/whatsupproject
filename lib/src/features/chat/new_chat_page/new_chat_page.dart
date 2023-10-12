import 'package:flutter/material.dart';
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
              backgroundImage: NetworkImage(
                  "https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/v1013-p-0019d-01-ksi8b5jn.jpg?w=800&dpr=1&fit=default&crop=default&q=65&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.1&s=105acc73dbd66de4e097301c10eb6af5"),
            ),
          ],
        ),
        backgroundColor: Colors.green,
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
                        border: Border.all(color: Colors.blue),
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
                        color: Colors.green),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.mic,
                        color: Colors.white,
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
