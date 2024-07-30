
import 'package:flutter/material.dart';

import '../../../../../Resource/Color.dart';
import '../../../../../Resource/ResourceType.dart';
import '../../../Controller.dart';
import '../../Base/CustomWidget.dart';
import '../../Style/Dimen/Dimen.dart';

class ListItem extends CustomWidget {
  Widget has1DualLine({
    String? leftText1,
    String? rightText1,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Padding(
            padding: const EdgeInsets.all(0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Expanded(
                child: Custom.text.basic(
                  text: leftText1 ?? "",
                  textStyle: customTextStyle.basic(
                      textSize: TextDimen.Basic.getSize(), textColor: CustomColor.Primary.getColor()),
                ),
              ),
              Expanded(
                child: Custom.text.basic(
                    text: rightText1 ?? "",
                    textStyle: customTextStyle.basic(textSize: TextDimen.SmallValue.getSize()),
                    textAlign: TextAlign.end),
              )
            ])),
      ],
    );
  }

  Widget has2DualLine({
    String? leftText1,
    String? leftText2,
    String? rightText1,
    String? rightText2,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
            padding: const EdgeInsets.all(0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Expanded(
                child: Custom.text.basic(
                  text: leftText1 ?? "",
                  textStyle: customTextStyle.basic(
                      textSize: TextDimen.Basic.getSize(), textColor: CustomColor.Primary.getColor()),
                ),
              ),
              Expanded(
                child: Custom.text.basic(
                    text: rightText1 ?? "",
                    textStyle: customTextStyle.basic(textSize: TextDimen.SmallValue.getSize()),
                    textAlign: TextAlign.end),
              )
            ])),
        Padding(
            padding: const EdgeInsets.all(0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Expanded(
                child: Custom.text.basic(
                  text: leftText2 ?? "",
                  textStyle: customTextStyle.basic(textSize: TextDimen.SmallValue.getSize()),
                ),
              ),
              Expanded(
                child: Custom.text.basic(
                    text: rightText2 ?? "",
                    textStyle: customTextStyle.basic(textSize: TextDimen.SmallValue.getSize()),
                    textAlign: TextAlign.end),
              )
            ])),
      ],
    );
  }

  Widget has3DualLine(
      {String? leftText1,
      String? leftText2,
      String? leftText3,
      String? rightText1,
      String? rightText2,
      String? rightText3}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Padding(
            padding: const EdgeInsets.all(0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Expanded(
                child: Custom.text.basic(
                  text: leftText1 ?? "",
                  textStyle: customTextStyle.basic(
                      textSize: TextDimen.Basic.getSize(), textColor: CustomColor.Primary.getColor()),
                ),
              ),
              Expanded(
                child: Custom.text.basic(
                    text: rightText1 ?? "",
                    textStyle: customTextStyle.basic(textSize: TextDimen.SmallValue.getSize()),
                    textAlign: TextAlign.end),
              ),
            ])),
        Padding(
            padding: const EdgeInsets.all(0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Expanded(
                child: Custom.text.basic(
                  text: leftText2 ?? "",
                  textStyle: customTextStyle.basic(textSize: TextDimen.SmallValue.getSize()),
                ),
              ),
              Expanded(
                child: Custom.text.basic(
                    text: rightText2 ?? "",
                    textStyle: customTextStyle.basic(textSize: TextDimen.SmallValue.getSize()),
                    textAlign: TextAlign.end),
              ),
            ])),
        Padding(
            padding: const EdgeInsets.all(0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Expanded(
                child: Custom.text.basic(
                  text: leftText3 ?? "",
                  textStyle: customTextStyle.basic(textSize: TextDimen.SmallValue.getSize()),
                ),
              ),
              Expanded(
                child: Custom.text.basic(
                    text: rightText3 ?? "",
                    textStyle: customTextStyle.basic(textSize: TextDimen.SmallValue.getSize()),
                    textAlign: TextAlign.end),
              ),
            ])),
      ],
    );
  }

  Widget has2Line({
    String? text1,
    String? text2,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(0),
          child: Custom.text.basic(
            text: text1 ?? "",
            textStyle:
                customTextStyle.basic(textSize: TextDimen.Basic.getSize(), textColor: CustomColor.Primary.getColor()),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(0),
          child: Custom.text.basic(
            text: text2 ?? "",
            textStyle: customTextStyle.basic(textSize: TextDimen.SmallValue.getSize()),
          ),
        ),
      ],
    );
  }

  Widget has3Line({
    String? text1,
    String? text2,
    String? text3,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(0),
          child: Custom.text.basic(
            text: text1 ?? "",
            textStyle:
                customTextStyle.basic(textSize: TextDimen.Basic.getSize(), textColor: CustomColor.Primary.getColor()),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(0),
          child: Custom.text.basic(
            text: text2 ?? "",
            textStyle: customTextStyle.basic(textSize: TextDimen.SmallValue.getSize()),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(0),
          child: Custom.text.basic(
            text: text3 ?? "",
            textStyle: customTextStyle.basic(textSize: TextDimen.SmallValue.getSize()),
          ),
        ),
      ],
    );
  }

  Widget fcmBox(
      {String? iconText,
      String? leftText1,
      String? leftText2,
      String? leftText3,
      String? leftText4,
      String? rightText1,
      String? rightText2,
      String? rightText3,
      String? rightText4,
      Color? textColor,
      Color? backGroundColor,
      VoidCallback? onTapCallback,
      required bool isResponded}) {
    return GestureDetector(
      onTap: onTapCallback,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: EdgeDimen.VerySmall.getSize(), horizontal: EdgeDimen.Outer.getSize()),
        decoration: customDecoration.messageBoxStyle(backGroundColor!),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Flexible(
              flex: 3,
              child: Padding(
                padding: EdgeInsets.only(right: EdgeDimen.WidgetHorizontal.getSize()),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _getIcon(isResponded: isResponded),
                    Custom.text.basic(
                      text: iconText ?? "",
                      textStyle: customTextStyle.basic(textColor: textColor, textSize: TextDimen.SmallValue.getSize()),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
                flex: 10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                      Expanded(
                        child: Custom.text.basic(
                          text: leftText1 ?? "",
                          textStyle: customTextStyle.basic(
                              textColor: CustomColor.Primary.getColor(), textSize: TextDimen.Middle.getSize()),
                        ),
                      ),
                      Expanded(
                        child: Custom.text.basic(
                          text: rightText1 ?? "",
                          textStyle: customTextStyle.basic(textColor: textColor!),
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ]),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                      Expanded(
                        child: Custom.text.basic(
                          text: leftText2 ?? "",
                          textStyle: customTextStyle.basic(textColor: textColor),
                        ),
                      ),
                      Expanded(
                        child: Custom.text.basic(
                          text: rightText2 ?? "",
                          textStyle: customTextStyle.basic(textColor: textColor),
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ]),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                      Expanded(child:Custom.text.basic(
                        text: leftText3 ?? "",
                        textStyle: customTextStyle.basic(textColor: textColor),
                      ),),
                      Expanded(
                        child: Custom.text.basic(
                          text: rightText3 ?? "",
                          textStyle: customTextStyle.basic(textColor: textColor),
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ]),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                      Expanded(child: Custom.text.basic(
                        text: leftText4 ?? "",
                        textStyle: customTextStyle.basic(textColor: textColor),
                      ),),
                      Expanded(
                          child:  Custom.text.basic(
                            text: rightText4 ?? "",
                            textStyle: customTextStyle.basic(textColor: textColor),
                            textAlign: TextAlign.end,
                          ),)
                    ]),
                  ],
                ))
          ],
        ),
      ),
    );
  }

  Widget _getIcon({required bool isResponded}) {
    if (isResponded) {
      return ResourceType.IsResponded
          .getIcon(color: CustomColor.Primary.getColor(), imageHeight: IconDimen.Basic.getSize());
    } else {
      return ResourceType.NotResponded
          .getIcon(color: CustomColor.Error.getColor(), imageHeight: IconDimen.Basic.getSize());
    }
  }
}
