import 'package:flutter/material.dart';

import '../../../../../Resource/Color.dart';
import '../../../../../Resource/ResourceType.dart';
import '../../../../../Resource/Type/PrefixType.dart';
import '../../../Controller.dart';
import '../../Base/CustomWidget.dart';
import '../../Style/CustomEdgeInsets.dart';
import '../../Style/Dimen/Dimen.dart';

class CustomDialog extends CustomWidget {
  basic({
    required BuildContext buildContext,
    Widget? title,
    double? height,
    required Widget content,
    Color? backgroundColor,
    Widget? header,
    bool hasHeader = true,
    List<Widget>? actions,
  }) {
    showDialog(
        context: buildContext,
        builder: (context) {
          return AlertDialog(
            titlePadding: EdgeInsets.zero,
            contentPadding: EdgeInsets.zero,
            backgroundColor: backgroundColor,
            shape: customShapeBorder.roundedRectangle(),
            title: header ??
                (hasHeader
                    ? AppBar(
                        titleSpacing: 0,
                        title: title,
                        backgroundColor: CustomColor.Surface.getColor(),
                      )
                    : null),
            content: SizedBox(height: height, child: content),
            actions: actions,
          );
        });
  }

  search({
    required int itemCount,
    required NullableIndexedWidgetBuilder itemBuilder,
    required ValueChanged onChange,
    required BuildContext context,
    Color? backgroundColor,
  }) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: AlertDialog(
          titlePadding: EdgeInsets.zero,
          contentPadding: EdgeInsets.zero,
          backgroundColor: backgroundColor,
          shape: customShapeBorder.roundedRectangle(),
          title: AppBar(
            shape: customShapeBorder.underline(
              borderWidth: BorderWidthDimen.Basic,
              borderColor: ColorConstants.Divider.color,
            ),
            titleSpacing: 0,
            title: Padding(
              padding: EdgeInsets.only(top: EdgeDimen.Outer.getSize()),
              child: Custom.textField.search(
                  hasUnderLine: false,
                  onChange: onChange,
                  prefixType: PrefixType.IconButton,
                  onTapIcon: () => Navigator.pop(context),
                  resourceType: ResourceType.Back),
            ),
            backgroundColor: CustomColor.Surface.getColor(),
            automaticallyImplyLeading: false,
          ),
          content: SizedBox(
              width: double.maxFinite,
              height: double.maxFinite,
              child: ListView.builder(shrinkWrap: true, itemCount: itemCount, itemBuilder: itemBuilder))),
    );
  }

  error({required BuildContext buildContext, required String title, Color? backgroundColor}) {
    showDialog(
        context: buildContext,
        builder: (context) => AlertDialog(
              titlePadding: CustomEdgeInsets.exceptBottom(dimen: EdgeDimen.ErrorDialogContent),
              contentPadding: CustomEdgeInsets.exceptBottom(
                  dimen: EdgeDimen.ErrorDialogContent, bottomDimen: EdgeDimen.ErrorDialogContentBottom),
              backgroundColor: backgroundColor,
              shape: customShapeBorder.roundedRectangle(),
              title: Custom.text.basic(
                text: title,
                textStyle: customTextStyle.basic(
                    textSize: TextDimen.ErrorDialogTitle.getSize(),
                    textColor: ColorConstants.MesPrimary.color,
                    isBold: true),
              ),
              content: SizedBox(
                  // width: double.maxFinite,
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Custom.text.basic(
                    text: AlarmTextType.AuthenticationError.getText(),
                    textStyle: customTextStyle.basic(
                        textSize: TextDimen.ErrorDialogContent.getSize(),
                        textColor: ColorConstants.LightText.color,
                        letterSpacing: LetterSpacing.AuthErrorDialog),
                  ),
                  SizedBox(
                    height: LetterSpacing.AuthErrorDialog.getSize(),
                  ),
                  Custom.text.basic(
                    text: AlarmTextType.CustomerService.getText(),
                    textStyle: customTextStyle.basic(isBold: true, textSize: TextDimen.ErrorDialogContent.getSize()),
                  ),
                  SizedBox(
                    height: EdgeDimen.ErrorDialogContentBottom.getSize(),
                  ),
                  Align(
                    child: Custom.button.transparent(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        resourceType: ResourceType.Submit,
                        isBordered: false,
                        color: ColorConstants.MesPrimary.color,
                        fontSize: TextDimen.ErrorDialogTitle.getSize()),
                    alignment: Alignment.center,
                  )
                ],
              )),
            ));
  }

  error2Button(
      {required BuildContext buildContext,
      required String title,
      required Function() onPressed,
      Color? backgroundColor}) {
    showDialog(
        context: buildContext,
        builder: (context) => AlertDialog(
              contentPadding: EdgeInsets.only(
                  top: EdgeDimen.ErrorDialogContent.getSize(),
                  bottom: EdgeDimen.WidgetHorizontal.getSize(),
                  left: EdgeDimen.ErrorDialogContent.getSize(),
                  right: EdgeDimen.ErrorDialogContent.getSize()),
              backgroundColor: backgroundColor,
              shape: customShapeBorder.roundedRectangle(),
              title: Custom.text.basic(
                text: title,
                textStyle: customTextStyle.basic(textColor: CustomColor.Error.getColor(), isBold: true),
              ),
              content: SizedBox(
                  width: double.maxFinite,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Custom.text.basic(
                        text: AlarmTextType.AuthenticationError.getText(),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Custom.button.transparent(
                              onPressed: onPressed,
                              color: CustomColor.Error.getColor(),
                              resourceType: ResourceType.CustomerServicePhoneNumber,
                              fontSize: TextDimen.ErrorDialogTitle.getSize(),
                              isBordered: false),
                          Custom.button.transparent(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              resourceType: ResourceType.Close,
                              isBordered: false,
                              color: CustomColor.Error.getColor(),
                              fontSize: TextDimen.ErrorDialogTitle.getSize())
                        ],
                      )
                    ],
                  )),
            ));
  }

  prompt({
    required BuildContext buildContext,
    String? title,
    required String content,
    required VoidCallback confirmCallback,
    Color? backgroundColor,
  }) {
    showDialog(
        context: buildContext,
        builder: (context) {
          return AlertDialog(
            titlePadding: CustomEdgeInsets.exceptBottom(dimen: EdgeDimen.VeryBig),
            contentPadding: EdgeInsets.symmetric(
                horizontal: EdgeDimen.VeryBig.getSize(), vertical: EdgeDimen.WidgetVertical.getSize()),
            backgroundColor: backgroundColor,
            shape: customShapeBorder.roundedRectangle(),
            title: Custom.text.basic(
              text: title ?? "",
              textStyle: customTextStyle.basic(textColor: CustomColor.Error.getColor()),
            ),
            content: SizedBox(
                width: double.maxFinite,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Custom.text.basic(
                      text: content,
                      textStyle: customTextStyle.basic(
                          textSize: TextDimen.SmallValue.getSize(), textColor: ColorConstants.LightText.color),
                    ),
                    SizedBox(
                      height: EdgeDimen.WidgetVertical.getSize(),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Custom.button.transparent(
                            onPressed: confirmCallback,
                            resourceType: ResourceType.Submit,
                            textStyle: customTextStyle.basic(textColor: CustomColor.Error.getColor()),
                            isBordered: false),
                        Custom.button.transparent(
                            onPressed: () => Navigator.pop(context),
                            resourceType: ResourceType.Cancel,
                            textStyle: customTextStyle.basic(textColor: CustomColor.Error.getColor()),
                            isBordered: false)
                      ],
                    )
                  ],
                )),
          );
        });
  }
}
