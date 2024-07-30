

import 'package:flutter/material.dart';

import '../../../../../Resource/Color.dart';
import '../../../Controller.dart';
import '../../Base/CustomWidget.dart';
import '../../Style/Dimen/Dimen.dart';

class CustomAppBar extends CustomWidget {
  basic({String? titleText, List<Widget>? actions, Widget? leading}) {
    return AppBar(
      titleSpacing: 0,
      backgroundColor: CustomColor.Surface.getColor(),
      scrolledUnderElevation: 0,
      leading: leading,
      iconTheme: IconThemeData(
        // color: CustomColor.appBarIcon.getColor(),
      ),
      centerTitle: false,
      title:  Custom.text.basic(
        text: titleText ?? "",
        textSize: TextDimen.MenuTitle.getSize(),
        textColor: ColorConstants.LightText.color,
      ),
      actions: actions,
      actionsIconTheme: IconThemeData(size: IconDimen.AppbarIcon.getSize()),
    );
  }
}
