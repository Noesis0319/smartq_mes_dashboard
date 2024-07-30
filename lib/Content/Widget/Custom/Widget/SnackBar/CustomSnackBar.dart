
import 'package:flutter/material.dart';

import '../../../../../Config/Duration/Duration.dart';
import '../../../../../Resource/Color.dart';
import '../../../../../Resource/ResourceType.dart';
import '../../../Controller.dart';
import '../../Base/CustomWidget.dart';

enum SnackBarType {
  Success,
  Fail,
  ;
}

/// 스낵바의 크기만 조절하려면 width 속성을 써도 되지만
/// width 와 위치를 조절하는 margin 속성을 함께 쓰지 못하도록 해놓았기 때문에
/// 스낵바의 크기/위치 모두 조절하려면
/// margin bottom 으로 (화면 바닥으로부터의 높이) 위치를 조절하고,
/// margin right/left 로 (스낵바 좌우공간크기) 스낵바의 크기를 조절해야한다.
class CustomSnackBar extends CustomWidget {
  show({
    required BuildContext context,
    required SnackBarType snackBarType,
    required String message,
    int? duration,
    double horizontalMargin = 0,
    double bottomMargin = 0,
  }) {
    switch (snackBarType) {
      case SnackBarType.Success:
        return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Custom.text.basic(
            text: message,
            textColor: CustomColor.Surface.getColor(),
          ),
          duration: Duration(milliseconds: duration ?? DurationConstant.StandardSnackBarDuration.millisecond),
          behavior: SnackBarBehavior.floating,
          shape: customShapeBorder.roundedRectangle(),
          backgroundColor: CustomColor.Primary.getColor(),
          action: SnackBarAction(
            onPressed: () {},
            label: ResourceType.Submit.getText(),
            textColor: CustomColor.Surface.getColor(),
          ),
          margin: EdgeInsets.only(bottom: bottomMargin, left: horizontalMargin, right: horizontalMargin),
        ));
      case SnackBarType.Fail:
        return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Custom.text.basic(
            text: message,
            textColor: CustomColor.Surface.getColor(),
          ),
          duration: Duration(milliseconds: duration ?? DurationConstant.OneDay.millisecond),
          behavior: SnackBarBehavior.floating,
          shape: customShapeBorder.roundedRectangle(),
          backgroundColor: CustomColor.Error.getColor(),
          action: SnackBarAction(
            onPressed: () {},
            label: ResourceType.Submit.getText(),
            textColor: CustomColor.Surface.getColor(),
          ),
          margin: EdgeInsets.only(bottom: bottomMargin, left: horizontalMargin, right: horizontalMargin),
        ));
    }
  }
}
