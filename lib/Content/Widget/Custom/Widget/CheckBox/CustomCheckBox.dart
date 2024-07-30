
import 'package:flutter/material.dart';

import '../../../../../Resource/Color.dart';
import '../../../Controller.dart';
import '../../Base/CustomWidget.dart';
import '../../Style/Dimen/Dimen.dart';

class CustomCheckBox extends CustomWidget {

  basic({
    required bool value,
    required ValueChanged onChange,
    Color? borderColor,
  }) {
    return Checkbox(
        shape: customShapeBorder.roundedRectangle(radiusDimen: RadiusDimen.CheckBox),
        side: BorderSide(color: borderColor ?? ColorConstants.Border.color),
        checkColor: CustomColor.Primary.getColor(),
        activeColor: CustomColor.Surface.getColor(),
        value: value,
        onChanged: onChange);
  }

  hasText({
    required bool value,
    required ValueChanged<bool?> onChange,
    required String text,
    TextStyle? textStyle,
    double? textSize,
    Color? borderColor,
    Color? checkColor,
    Color? activeColor,
  }) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: WidgetDimen.CheckBox.getSize(),
          width: WidgetDimen.CheckBox.getSize(),
          child: Checkbox(
              shape: customShapeBorder.roundedRectangle(radiusDimen: RadiusDimen.CheckBox),
              side: getSelectedStateBorder(
                  selectedColor: CustomColor.Primary.getColor(), unSelectedColor: ColorConstants.Border.color),
              checkColor: checkColor ?? CustomColor.Surface.getColor(),
              activeColor: activeColor ?? CustomColor.Primary.getColor(),
              value: value,
              onChanged: onChange),
        ),
        Custom.text.basic(
          text: text,
          textStyle: textStyle,
          textSize: textSize,
          textColor: ColorConstants.LightText.color,
        ),
      ],
    );
  }
}
