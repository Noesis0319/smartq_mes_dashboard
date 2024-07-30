
import 'package:flutter/material.dart';

import '../../../../Resource/Color.dart';
import '../Base/CustomStyle.dart';
import 'Dimen/Dimen.dart';

class CustomTextStyle extends CustomStyle {
  TextStyle basic(
      {Color? textColor, double? textSize, double? safeTextSize, LetterSpacing? letterSpacing, bool isBold = false}) {
    return TextStyle(
      color: textColor,
      fontSize: getSafeTextSize(textSize: textSize, safeTextSize: safeTextSize),
      fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
      letterSpacing: letterSpacing?.getSize(),
    );
  }

  TextStyle isAlert(bool? isAlert) {
    if (isAlert == null) {
      return TextStyle(color: CustomColor.Text.getColor(), fontSize: TextDimen.Basic.getSize());
    } else if (isAlert) {
      return TextStyle(color: CustomColor.Surface.getColor(), fontSize: TextDimen.Basic.getSize());
    } else {
      return TextStyle(color: CustomColor.Surface.getColor(), fontSize: TextDimen.Basic.getSize());
    }
  }

  TextStyle sfDatePickerWeekend() {
    return TextStyle(color: CustomColor.Error.getColor());
  }

  TextStyle sfDatePickerToday() {
    return TextStyle(color: CustomColor.Primary.getColor());
  }

  TextStyle sfDatePickerHeader() {
    return TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: TextDimen.Basic.getSize(),
      letterSpacing: LetterSpacing.Basic.getSize(),
    );
  }
}
