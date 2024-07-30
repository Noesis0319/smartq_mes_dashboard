
import 'package:flutter/material.dart';

import '../../../../../Resource/Color.dart';
import '../../Base/CustomWidget.dart';
import '../../Style/Dimen/Dimen.dart';

class CustomDivider extends CustomWidget{
  basic({double padding = 0}) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: padding),
      child: Divider(height: DividerDimen.Thin.getSize(), color: ColorConstants.Divider.color,),
    );
  }
}
