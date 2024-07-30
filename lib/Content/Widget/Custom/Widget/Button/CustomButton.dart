

import 'package:flutter/material.dart';

import '../../../../../Resource/Color.dart';
import '../../../../../Resource/ResourceType.dart';
import '../../../Controller.dart';
import '../../Base/CustomWidget.dart';
import '../../Style/Dimen/Dimen.dart';

class CustomButton extends CustomWidget {
  basic({
    required VoidCallback onPressed,
    required ResourceType resourceType,
    RadiusDimen? borderRadius,
    double? elevation,
    double? textSize,
    ButtonStyle? buttonStyle,
    TextStyle? textStyle,
  }) {
    return ElevatedButton(
      onPressed: onPressed,
      style: buttonStyle ?? customButtonStyle.basic(radiusDimen: borderRadius, elevation: elevation, shadowColor: Color(0x0000001F)),
      child: Custom.text.basic(
        text:  resourceType.getText(),
        textStyle: textStyle,
        textSize: textSize,
        textColor: CustomColor.Surface.getColor(),
      ),
    );
  }

  icon({
    required VoidCallback onPressed,
    required ResourceType resourceType,
    Color? iconColor,
    double? width,
    double? height,
    ButtonStyle? buttonStyle,
    TextStyle? textStyle,
    double? iconSize,
  }) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: customButtonStyle.shrinkWrap(
            backGroundColor: CustomColor.Surface.getColor(),
            radiusDimen: RadiusDimen.Rounded,
            borderColor: CustomColor.Primary.getColor()),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            resourceType.getIcon(color: iconColor, imageHeight: iconSize),
            Text(resourceType.getText(),
                style: textStyle ?? customTextStyle.basic(textColor: CustomColor.Surface.getColor())),
          ],
        ),
      ),
    );
  }

  transparent({
    required VoidCallback onPressed,
    required ResourceType resourceType,
    required bool isBordered,
    Color? color,
    double? fontSize,
    ButtonStyle? buttonStyle,
    TextStyle? textStyle,
  }) {
    return ElevatedButton(
      onPressed: onPressed,
      style: buttonStyle ??
          customButtonStyle.transparent(isBordered: isBordered, color: color ?? CustomColor.Surface.getColor()),
      child: Text(
        resourceType.getText(),
        style: textStyle ?? customTextStyle.basic(textColor: color ?? CustomColor.Surface.getColor()),
      ),
    );
  }
}
