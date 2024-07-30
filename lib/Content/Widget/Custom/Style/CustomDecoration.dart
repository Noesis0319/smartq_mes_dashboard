import 'package:flutter/material.dart';

import '../../../../Resource/Color.dart';
import '../Base/CustomStyle.dart';
import 'CustomShapeBorder.dart';
import 'Dimen/Dimen.dart';
import 'Dimen/Radius.dart';

///[Decoration]──┬──[BoxDecoration]
class CustomDecoration extends CustomStyle {
  final CustomRadius _customRadius = CustomRadius();
  final CustomShapeBorder _customShapeBorder = CustomShapeBorder();

  BoxDecoration basic({Color? boxColor,Color? borderColor, RadiusDimen? borderRadius, Border? border, BorderWidthDimen? width}) {
    return BoxDecoration(
        border: border ?? _customShapeBorder.basic(borderColor:borderColor, borderWidth:  width),
        borderRadius:_customRadius.basic(radius: borderRadius),
        color: boxColor
    );
  }

  BoxDecoration shadow({Color? boxColor, RadiusDimen? borderRadius, Border? border}){
    return BoxDecoration(
      border: border,
      borderRadius:_customRadius.basic(radius:  getSafeValue(value: borderRadius, safeValue: RadiusDimen.LittleRounded)
      ),
      color: CustomColor.Primary.getColor(),
      boxShadow: [
        BoxShadow(
          color: CustomColor.Primary.getColor(),
          offset: const Offset(0, 4),
          blurRadius: 8,
        ),
      ],
    );
  }

  BoxDecoration messageBoxStyle(Color color) {
    return BoxDecoration(
        color: color,
        border: Border(
          bottom: BorderSide(width: BorderWidthDimen.Basic.getSize(), color: ColorConstants.Divider.color,),
        ));
  }

  BoxDecoration isAlert({bool? isAlert, Color? defaultColor, Color? alertColor, Color? accentColor}) {
    if (isAlert == null) {
      return BoxDecoration(
          border: _customShapeBorder.basic(),
          borderRadius: _customRadius.basic(),
          color: defaultColor ?? CustomColor.Surface.getColor());
    } else if (isAlert) {
      return BoxDecoration(
          border: _customShapeBorder.basic(),
          borderRadius: _customRadius.basic(),
          color: alertColor ?? CustomColor.Error.getColor());
    } else {
      return BoxDecoration(
          border: _customShapeBorder.basic(),
          borderRadius: _customRadius.basic(),
          color: accentColor ?? ColorConstants.RedAccent.color);
    }
  }
}
