import 'package:flutter/material.dart';
import 'package:whatsup/src/core/color/color.dart';
import 'package:whatsup/src/core/theme/text_theme.dart';
import 'package:whatsup/src/widgets/divider.dart';

import '../../core/constants/strings.dart';


class StorageandData extends StatefulWidget {
  StorageandData({super.key});

  @override
  State<StorageandData> createState() => _StorageandData();
}

class _StorageandData extends State<StorageandData> {
  bool isSwitched = false;
  var textValue = Strings.switchoff;

  void toggleSwitch(bool value) {
    if (!isSwitched == false) {
      setState(() {
        isSwitched = true;
        textValue = Strings.switchon;
      });
      
    } else {
      setState(() {
        isSwitched = false;
        textValue = Strings.switchoff;
      });
 
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView( 
          child: Column(children: [
            AppBar(
              leading: IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_back),
              ),
              backgroundColor: ColorConstants.kPrimaryColor,
              title: Text(Strings.storageanddatatxt),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              leading: Icon(Icons.sd_storage),
              title: Text(
                Strings.managestorage,
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: Text(Strings.text1),
            ),
            DividerX.divider,
            ListTile(
              leading: Icon(Icons.network_cell),
              title: Text(
                Strings.networkandstorage,
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: Text(Strings.subtxt1),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              trailing: Switch(
                onChanged: toggleSwitch,
                value: isSwitched,
                activeColor: ColorConstants.kPrimaryColor,
                activeTrackColor: ColorConstants.kPrimaryColor,
                inactiveThumbColor: ColorConstants.kSecondaryColor,
                inactiveTrackColor: ColorConstants.kSecondaryColor,
              ),
              title: Text(
                Strings.txt2,
                
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              title: Text(
                Strings.txt3,
                style: AppTextTheme.titleTextStyle,
              ),
              subtitle: Text(Strings.off),
              
            ),
            DividerX.divider,
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
              child: Container(
                height: 33,
                width: MediaQuery.of(context).size.width,
                child: Text(
                  Strings.mediaautodwnld,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: ColorConstants.kSecondaryColor),
                ),
              ),
            ),
            ListTile(
              title: Text(
                Strings.mobiledata,
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: Text(Strings.photos),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              title: Text(
                Strings.wifi,
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: Text(Strings.photos),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              title: Text(
                Strings.roaming,
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: Text(Strings.nomedia),
            ),
          ]),
        ),
      ),
    );
  }
}
