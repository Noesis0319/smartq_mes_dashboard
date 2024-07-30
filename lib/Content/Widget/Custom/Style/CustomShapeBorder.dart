
import 'package:flutter/material.dart';

import '../../../../Resource/Color.dart';
import '../Base/CustomStyle.dart';
import 'Dimen/Dimen.dart';
import 'Dimen/Radius.dart';

///[ShapeBorder]──┬──[InputBorder]──┬──[OutlineInputBorder]
///               │                 └──[UnderlineInputBorder]
///               ├──[BoxBorder]──┬──[Border]
///               │
///               ├──[OutlineBorder]──┬──[RoundedRectangleBorder]

class CustomShapeBorder extends CustomStyle {
  final CustomRadius _customRadius = CustomRadius();

  ///Border
  Border basic({BorderWidthDimen? borderWidth, Color? borderColor}) {
    return Border.all(
        width: getSafeBorderWidth(borderWidth: borderWidth), color: getSafeBorderColor(borderColor: borderColor));
  }

  Border bottom({BorderWidthDimen? width, Color? borderColor}) {
    return Border(
        bottom: BorderSide(
            width: getSafeValue(value: width, safeValue: BorderWidthDimen.Basic.getSize()),
            color: getSafeValue(value: borderColor, safeValue: ColorConstants.Border.color)));
  }

  ///OutlineInputBorder
  OutlineInputBorder outline({BorderWidthDimen? width, Color? borderColor, RadiusDimen? borderRadius}) {
    return OutlineInputBorder(
        borderSide: BorderSide(
          color: getSafeBorderColor(borderColor: borderColor),
          width: BorderWidthDimen.Basic.getSize(),
        ),
        borderRadius: _customRadius.basic(radius: borderRadius),
    );
  }

  OutlineInputBorder focusedOutLine({RadiusDimen? borderRadius}) {
    return OutlineInputBorder(
        borderSide: BorderSide(color: CustomColor.Primary.getColor(), width: BorderWidthDimen.FocusedBorder.getSize()),
        borderRadius: _customRadius.basic(radius: borderRadius),
    );
  }

  OutlineInputBorder transparent({RadiusDimen? borderRadius}) {
    return OutlineInputBorder(
        borderSide: BorderSide(color: Colors.transparent, width: BorderWidthDimen.Basic.getSize()),
        borderRadius: _customRadius.basic(radius: borderRadius),
    );
  }

  ///UnderlineInputBorder
  UnderlineInputBorder underline({BorderWidthDimen? borderWidth, Color? borderColor}) {
    return UnderlineInputBorder(
        borderSide: BorderSide(
      color: getSafeColor(color: borderColor, safeColor: ColorConstants.DarkBorder.color),
      width: getSafeBorderWidth(borderWidth: borderWidth),
    ));
  }

  UnderlineInputBorder focusedUnderline() {
    return UnderlineInputBorder(
        borderSide: BorderSide(color: CustomColor.Primary.getColor(), width: BorderWidthDimen.FocusedBorder.getSize()));
  }

  UnderlineInputBorder dialogUnderLine() {
    return UnderlineInputBorder(
        borderSide: BorderSide(color: ColorConstants.DialogDivider.color, width: BorderWidthDimen.Basic.getSize()));
  }

  ///RoundedRectangleBorder

  RoundedRectangleBorder roundedRectangle({RadiusDimen? radiusDimen}) {
    return RoundedRectangleBorder(borderRadius: _customRadius.basic(radius: radiusDimen));
  }
}
