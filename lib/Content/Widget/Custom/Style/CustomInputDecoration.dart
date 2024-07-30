
import 'package:flutter/material.dart';

import '../../../../Resource/Color.dart';
import '../../../../Resource/ResourceType.dart';
import '../Base/CustomStyle.dart';
import 'CustomShapeBorder.dart';
import 'CustomTextStyle.dart';
import 'Dimen/Dimen.dart';

///[InputDecoration]

class CustomInputDecoration extends CustomStyle {
  CustomShapeBorder customShapeBorder = CustomShapeBorder();
  CustomTextStyle customTextStyle = CustomTextStyle();

  InputDecoration basic({
    ResourceType? resourceType,
    bool hasPrefixIcon = false,
    bool hasLabel = true,
    Color? prefixIconColor,
    Color? suffixIconColor,
    Color? fillColor,
    FloatingLabelBehavior? floatingLabelBehavior,
    InputBorder? enabledBorder,
    InputBorder? focusedBorder,

    Widget? suffixIcon,
  }) {
    return InputDecoration(
      floatingLabelBehavior: floatingLabelBehavior,
      contentPadding: hasPrefixIcon ? EdgeInsets.zero : EdgeInsets.only(left: EdgeDimen.WidgetHorizontal.getSize()),
      prefixIcon: (hasPrefixIcon && resourceType != null) ? resourceType.getIcon() : null,
      prefixIconColor: prefixIconColor,
      suffixIcon: suffixIcon,
      suffixIconColor: suffixIconColor,
      filled: fillColor != null,
      fillColor: fillColor ?? CustomColor.Surface.getColor(),
      enabledBorder: enabledBorder,
      focusedBorder: focusedBorder,
      focusColor: Colors.transparent,
      isCollapsed: false,
      border: OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent)),
      floatingLabelStyle: TextStyle(color: CustomColor.Primary.getColor()),
      // labelStyle: customTextStyle.basic(textColor: CustomColor.text.getColor()),
      labelStyle: customTextStyle.basic(),
      labelText: (hasLabel && resourceType != null) ? resourceType.getText() : "",
    );
  }

  InputDecoration hasPrefixIconButton({
    required ResourceType resourceType,
    required Widget iconButton,
    Color? fillColor,
    FloatingLabelBehavior? floatingLabelBehavior,
    InputBorder? enabledBorder,
    InputBorder? focusedBorder,
  }) {
    return InputDecoration(
        floatingLabelBehavior: floatingLabelBehavior,
        contentPadding: EdgeInsets.only(left: EdgeDimen.WidgetHorizontal.getSize()),
        prefixIcon: iconButton,
        filled: fillColor != null,
        fillColor: fillColor,
        enabledBorder: enabledBorder ?? customShapeBorder.outline(),
        focusedBorder: focusedBorder ?? customShapeBorder.focusedOutLine(),
        floatingLabelStyle: TextStyle(color: CustomColor.Primary.getColor()),
        labelStyle: customTextStyle.basic(textColor: CustomColor.Text.getColor()),
        labelText: resourceType.getText());
  }
}
