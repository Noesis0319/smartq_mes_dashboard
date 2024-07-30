import 'package:flutter/material.dart';

import '../../../../Resource/Color.dart';
import '../Base/CustomStyle.dart';

///[MenuStyle]

class CustomMenuStyle extends CustomStyle{
  MenuStyle basic({Color? backGroundColor, Color? surfaceTintColor, Color? shadowColor}){
    return MenuStyle(
        backgroundColor:
        WidgetStateProperty.all(backGroundColor),
        surfaceTintColor:
        WidgetStateProperty.all(surfaceTintColor),
        shadowColor: WidgetStateColor.resolveWith((states) => shadowColor?? CustomColor.Surface.getColor())
    );
  }
}
