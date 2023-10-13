import 'package:flutter/material.dart';
import 'package:whatsup/src/features/status/status_page_widget.dart';

class StatusListWidget extends StatelessWidget {
  const StatusListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      
      children: [
      StatusPageWidget(
        children: [],
            title: 'My status',
            subTitle: 'Tap to add status update ',
            image: "assets/bighero.jpg",
           ),
          Divider(
                height: 20, thickness: 1, indent: 4, color: Colors.grey[200]),
                
        Padding(
          padding: const EdgeInsets.only(left:20),
          child: Text("Recent updates",style: TextStyle(fontSize: 15,
            fontWeight: FontWeight.bold,color: Colors.grey[500]
          ),),
        ),
        StatusPageWidget(
          children: [],
            title: 'Abel',
            subTitle: '8 min ago',
            image: "assets/elsaimg.jpeg",
           ),
        StatusPageWidget(
          children: [],
            title: 'Dhachu',
            subTitle: '20 min ago',
            image: "assets/pic2.jpeg",
            ),
      ],
      
    );
  }
}

