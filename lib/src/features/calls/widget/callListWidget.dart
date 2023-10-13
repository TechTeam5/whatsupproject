import 'package:flutter/material.dart';
import 'package:whatsup/src/core/profile_images/images.dart';
import 'package:whatsup/src/features/calls/widget/call_list_icon_widget.dart';
import '../constants/strings.dart';

class CallListWidget extends StatelessWidget {
  const CallListWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CallListIconWidget(
          image: ProfilePicture.image1,
          title: Strings.name1,
          subTitle: DateTime(2023, 09, 13, 1, 20),
        ),
        CallListIconWidget(
          image: ProfilePicture.image2,
          title: Strings.name2,
          subTitle: DateTime(2023, 09, 13, 1, 20),
        ),
        CallListIconWidget(
          image: ProfilePicture.image3,
          title: Strings.name3,
          subTitle: DateTime(2023, 09, 13, 1, 20),
        ),
        CallListIconWidget(
          image: ProfilePicture.image4,
          title: Strings.name4,
          subTitle: DateTime(2023, 09, 13, 1, 20),
        ),
        CallListIconWidget(
          image: ProfilePicture.image5,
          title: Strings.name5,
          subTitle: DateTime(2023, 09, 13, 1, 20),
        ),
        CallListIconWidget(
          image: ProfilePicture.image6,
          title: Strings.name6,
          subTitle: DateTime(2023, 09, 13, 1, 20),
        ),
        CallListIconWidget(
          image: ProfilePicture.image7,
          title: Strings.name7,
          subTitle: DateTime(2023, 09, 13, 1, 20),
        ),
        CallListIconWidget(
          image: ProfilePicture.image8,
          title: Strings.name8,
          subTitle: DateTime(2023, 09, 13, 1, 20),
        ),
        CallListIconWidget(
          image: ProfilePicture.image9,
          title: Strings.name9,
          subTitle: DateTime(2023, 09, 13, 1, 20),
        ),
        CallListIconWidget(
          image: ProfilePicture.image10,
          title: Strings.name10,
          subTitle: DateTime(2023, 09, 13, 1, 20),
        ),
      ],
    );
  }
}
