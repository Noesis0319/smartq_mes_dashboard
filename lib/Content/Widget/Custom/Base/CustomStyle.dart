
import 'package:flutter/material.dart';

import '../../../../Resource/Color.dart';
import '../Style/Dimen/Dimen.dart';
import 'CustomBase.dart';

abstract class CustomStyle extends CustomBase{
  getSafeValue({required value, required safeValue}) {
    return value ?? safeValue;
  }

  Color getSafeBorderColor({
    required Color? borderColor,
    Color? safeColor,
  }) {
    return borderColor ?? (safeColor ?? ColorConstants.Border.color);
  }

  double getSafeBorderWidth({
    required BorderWidthDimen? borderWidth,
    BorderWidthDimen? safeBorderWidthDimen,
  }) {
    return (borderWidth ?? (safeBorderWidthDimen ?? BorderWidthDimen.Basic)).getSize();
  }

  Color getSafeColor({required Color? color, required Color safeColor}) {
    return color ?? safeColor;
  }

  double getSafeRadius({
    required RadiusDimen? radiusDimen,
    RadiusDimen? safeRadiusDimen,
  }) {
    return (radiusDimen ?? (safeRadiusDimen ?? RadiusDimen.Basic)).dimen;
  }

}
