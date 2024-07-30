
import 'package:flutter/material.dart';

import 'Dimen/Dimen.dart';

class CustomEdgeInsets {
  static EdgeInsets basic({double? topPadding, double? leftPadding, double? rightPadding, double? bottomPadding}) {
    return EdgeInsets.only(
        top: topPadding ?? EdgeDimen.WidgetVertical.getSize(),
        left: leftPadding ?? EdgeDimen.WidgetHorizontal.getSize(),
        right: rightPadding ?? EdgeDimen.WidgetHorizontal.getSize(),
        bottom: bottomPadding ?? EdgeDimen.WidgetVertical.getSize());
  }

  static EdgeInsets exceptTop({required EdgeDimen dimen, double topPadding = 0}) {
    return EdgeInsets.only(top: topPadding, left: dimen.getSize(), right: dimen.getSize(), bottom: dimen.getSize());
  }

  static EdgeInsets exceptRight({required EdgeDimen dimen, double rightPadding = 0}) {
    return EdgeInsets.only(top: dimen.getSize(), left: dimen.getSize(), right: rightPadding, bottom: dimen.getSize());
  }

  static EdgeInsets exceptLeft({required EdgeDimen dimen, double leftPadding = 0}) {
    return EdgeInsets.only(top: dimen.getSize(), left: leftPadding, right: dimen.getSize(), bottom: dimen.getSize());
  }

  static EdgeInsets exceptBottom({required EdgeDimen dimen, EdgeDimen? bottomDimen}) {
    return EdgeInsets.only(top: dimen.getSize(), left: dimen.getSize(), right: dimen.getSize(), bottom: bottomDimen == null ? 0 : bottomDimen.getSize());
  }
}
