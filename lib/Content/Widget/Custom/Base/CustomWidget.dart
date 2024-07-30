

import 'package:flutter/material.dart';
import '/Content/Widget/Custom/Base/CustomBase.dart';

import '../../../../Config/Mixin/Style.dart';
import '../../../../Config/Mixin/ThemeData.dart';

class CustomWidget extends CustomBase with StyleMixin, ThemeDataMixin,  DimenMixin {

  Color getFocusedStateColor({required Color focusedColor, required Color unFocusedColor}) {
    return WidgetStateColor.resolveWith(
          (states) {
        if (states.contains(WidgetState.focused)) {
          return focusedColor;
        } else {
          return unFocusedColor;
        }
      },
    );
  }

  BorderSide getSelectedStateBorder({required Color selectedColor, required Color unSelectedColor}) {
    return WidgetStateBorderSide.resolveWith(
          (states) {
        if (states.contains(WidgetState.selected)) {
          return BorderSide(color: selectedColor);
        } else {
          return BorderSide(color: unSelectedColor);
        }
      },
    );
  }
}
