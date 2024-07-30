
import 'package:flutter/material.dart';

import 'Dimen.dart';

class CustomConstraints{
  BoxConstraints toggleButtonsConstraint() {
    return BoxConstraints(
        maxHeight: WidgetDimen.ToggleButtonsHeight.getSize(),
        minHeight: WidgetDimen.ToggleButtonsHeight.getSize(),
        maxWidth: WidgetDimen.ToggleButtonsWidth.getSize(),
        minWidth: WidgetDimen.ToggleButtonsWidth.getSize());
  }
}
