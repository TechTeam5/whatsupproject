import 'package:flutter/material.dart';

class StatusPageWidget extends StatelessWidget {
  final String title;
  final String subTitle;
  final String image;
  const StatusPageWidget({
    super.key,
    required this.title,
    required this.image,
    required this.subTitle, required List<Stack> children
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 40,
        backgroundImage: AssetImage(image),
        

      ),
       title: Text(title,style: TextStyle(
        fontSize: 16
       ),),
      subtitle: Text(
        subTitle,
        style:TextStyle(
          fontSize: 14
        ),
      ),

    );
  }
}
