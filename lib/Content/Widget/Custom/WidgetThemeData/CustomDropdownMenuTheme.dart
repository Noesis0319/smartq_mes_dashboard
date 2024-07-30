
import 'package:flutter/material.dart';

import '../../../../Resource/Color.dart';
import '../Base/CustomWwidgetThemeData.dart';
import '../Style/Dimen/Dimen.dart';

class CustomDropdownMenuThemeData extends CustomWidgetThemeData {
  DropdownMenuThemeData basic({bool filled = true, Color? fillColor, double? fontSize}) {
    return DropdownMenuThemeData(
      inputDecorationTheme:
      InputDecorationTheme(
        suffixIconColor: CustomColor.Primary.getColor(),
        filled: filled,
        fillColor: fillColor,
        enabledBorder: customShapeBorder.transparent(borderRadius: RadiusDimen.LittleRounded),
        focusedBorder: customShapeBorder.focusedOutLine(borderRadius: RadiusDimen.LittleRounded),
      ),
      menuStyle: customMenuStyle.basic(backGroundColor: CustomColor.Surface.getColor()),
      textStyle: customTextStyle.basic(
        textColor: CustomColor.Text.getColor(),
        textSize: fontSize ?? TextDimen.TextField.getSize(),
      ),
    );
  }
}
