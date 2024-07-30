
import 'package:flutter/material.dart';

import '../../../../Resource/Color.dart';
import '../Base/CustomStyle.dart';
import 'CustomShapeBorder.dart';
import 'Dimen/Dimen.dart';

///[ButtonStyle]

class CustomButtonStyle extends CustomStyle {
  final CustomShapeBorder _customShapeBorder = CustomShapeBorder();

  ButtonStyle basic(
      {Color? backGroundColor,
      Color? overlayColor,
      Color? borderColor,
      RadiusDimen? radiusDimen,
      Color? shadowColor,
      double? elevation}) {
    return ButtonStyle(
        elevation: WidgetStateProperty.all(elevation),
        backgroundColor: WidgetStateProperty.all(backGroundColor),
        overlayColor: WidgetStateProperty.all(overlayColor),
        shape: WidgetStateProperty.all(
          _customShapeBorder.roundedRectangle(radiusDimen: radiusDimen),
        ),
        side: WidgetStateProperty.all(
            BorderSide(color: borderColor ?? Colors.transparent, width: BorderWidthDimen.Basic.getSize())),
    );
  }

  ButtonStyle shrinkWrap({Color? backGroundColor, Color? overlayColor, Color? borderColor, RadiusDimen? radiusDimen}) {
    return ButtonStyle(
        padding: WidgetStateProperty.all(EdgeInsets.all(EdgeDimen.MinButtonPadding.getSize())),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: WidgetStateProperty.all(Size.zero),
        visualDensity: const VisualDensity(horizontal: 1),
        backgroundColor: WidgetStateProperty.all(getSafeColor(
          color: backGroundColor,
          safeColor: CustomColor.Primary.getColor(),
        )),
        overlayColor: WidgetStateProperty.all(getSafeColor(
          color: overlayColor,
          safeColor: CustomColor.Secondary.getColor(),
        )),
        shape: WidgetStateProperty.all(
          _customShapeBorder.roundedRectangle(radiusDimen: radiusDimen),
        ),
        side: WidgetStateProperty.all(BorderSide(
          color: getSafeBorderColor(borderColor: borderColor, safeColor: Colors.transparent),
        )));
  }

  ButtonStyle transparent({required bool isBordered, Color? color, Color? overlayColor, RadiusDimen? radiusDimen}) {
    return ButtonStyle(
      shape: WidgetStateProperty.all(
        _customShapeBorder.roundedRectangle(radiusDimen: radiusDimen),
      ),
      side: WidgetStateProperty.all(
        BorderSide(
            color: isBordered ? (color ?? CustomColor.Surface.getColor()) : Colors.transparent,
            width: isBordered ? BorderWidthDimen.Basic.getSize() : 0),
      ),
      backgroundColor: WidgetStateProperty.all(Colors.transparent),
      foregroundColor: WidgetStateProperty.all(Colors.transparent),
      shadowColor: WidgetStateProperty.all(Colors.transparent),
      overlayColor: WidgetStateProperty.all(overlayColor),
      surfaceTintColor: WidgetStateProperty.all(Colors.transparent),
    );
  }
}
