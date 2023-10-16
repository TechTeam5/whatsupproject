import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsup/src/core/color/color.dart';

class DividerX { 
  const DividerX._();

  static const Widget divider =  Divider(
                height: 20, thickness: 1, indent: 4, color:ColorConstants.kSecondaryColor ); 
}