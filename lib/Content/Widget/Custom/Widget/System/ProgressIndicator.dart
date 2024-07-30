
import 'package:flutter/material.dart';

import '../../../../../Resource/Color.dart';
import '../../../../../Resource/ResourceType.dart';
import '../../Base/Controller.dart';
import '../../Style/Dimen/Dimen.dart';

class CustomProgressIndicator{

  show({required BuildContext context, }){
    showDialog(
      /// 외부 상호작용시 Dialog 닫을지 여부
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: WidgetDimen.ProgressIndicator.getSize(),
                height: WidgetDimen.ProgressIndicator.getSize(),
                margin: EdgeInsets.only(bottom: EdgeDimen.Small.getSize()),
                child: CircularProgressIndicator(
                  color: CustomColor.Primary.getColor(),
                  strokeWidth: WidgetDimen.ProgressIndicatorStroke.getSize(),
                  strokeCap: StrokeCap.round,
                ),
              ),
              Custom.text
                  .withoutScaffold(text: AlarmTextType.PleaseWait.getText(), textColor: CustomColor.Primary.getColor()),
            ],
          ),
        );
      },
    );
  }

}
