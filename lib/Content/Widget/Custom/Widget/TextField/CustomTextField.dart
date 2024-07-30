
import 'package:flutter/material.dart';

import '../../../../../Resource/Color.dart';
import '../../../../../Resource/ResourceType.dart';
import '../../../../../Resource/Type/PrefixType.dart';
import '../../Base/Controller.dart';
import '../../Base/CustomWidget.dart';
import '../../Style/Dimen/Dimen.dart';

class CustomTextField extends CustomWidget {
  Widget basic({
    required ResourceType resourceType,
    required TextEditingController controller,
    FocusNode? focusNode,
    Color? cursorColor,
    double? textSize,
    double? height,
    GestureTapCallback? onTap,
    Color? fillColor,
  }) {
    return SizedBox(
      height: height,
      child: TextField(
        autofocus: false,
        focusNode: focusNode,
        controller: controller,
        onTap: onTap,
        decoration: customInputDecoration.basic(resourceType: resourceType),
        style: customTextStyle.basic(textColor: CustomColor.Text.getColor(), textSize: textSize),
        cursorColor: cursorColor,
      ),
    );
  }

  Widget basicFilled({
    required ResourceType resourceType,
    required TextEditingController controller,
    FocusNode? focusNode,
    Color? cursorColor,
    double? textSize,
    double? height,
    GestureTapCallback? onTap,
    bool hasPrefixIcon = false,
  }) {
    return SizedBox(
      height: height,
      child: TextField(
        autofocus: false,
        focusNode: focusNode,
        controller: controller,
        onTap: onTap,
        decoration: customInputDecoration.basic(
          hasPrefixIcon: hasPrefixIcon,
          resourceType: resourceType,
          floatingLabelBehavior: FloatingLabelBehavior.never,
          fillColor: ColorConstants.Filled.color,
          enabledBorder: customShapeBorder.transparent(borderRadius: RadiusDimen.LittleRounded),
          focusedBorder: customShapeBorder.focusedOutLine(borderRadius: RadiusDimen.LittleRounded),
        ),
        style: customTextStyle.basic(textColor: CustomColor.Text.getColor(), textSize: textSize),
        cursorColor: cursorColor,
      ),
    );
  }

  Widget readOnly({
    required ResourceType resourceType,
    required TextEditingController controller,
    FocusNode? focusNode,
    Color? cursorColor,
    double? textSize,
    bool hasPrefixIcon = false,
    GestureTapCallback? onTap,
  }) {
    return TextField(
      focusNode: focusNode,
      controller: controller,
      onTap: onTap,
      decoration: customInputDecoration.basic(
          hasPrefixIcon: hasPrefixIcon, resourceType: resourceType, fillColor: CustomColor.Surface.getColor()),
      style: customTextStyle.basic(textColor: CustomColor.Primary.getColor(), textSize: textSize),
      cursorColor: cursorColor,
      readOnly: true,
    );
  }

  Widget filled({
    required ResourceType resourceType,
    required TextEditingController controller,
    FocusNode? focusNode,
    Color? cursorColor,
    bool hasPrefixIcon = false,
    double? textSize,
    GestureTapCallback? onTap,
  }) {
    return TextField(
      autofocus: false,
      focusNode: focusNode,
      controller: controller,
      onTap: onTap,
      decoration: customInputDecoration.basic(
        hasPrefixIcon: hasPrefixIcon,
        resourceType: resourceType,
        fillColor: ColorConstants.Filled.color,
      ),
      style: customTextStyle.basic(textColor: CustomColor.Text.getColor(), textSize: textSize),
      cursorColor: cursorColor,
      readOnly: true,
    );
  }

  Widget search({
    required ValueChanged onChange,
    FocusNode? focusNode,
    Color? cursorColor,
    double? textSize,
    GestureTapCallback? onTap,
    bool hasUnderLine = true,
    bool hasLabel = true,
    ResourceType resourceType = ResourceType.Search,
    PrefixType? prefixType,
    Color? color,
    VoidCallback? onTapIcon,
  }) {
    return TextField(
      autofocus: false,
      focusNode: focusNode,
      onTap: onTap,
      onChanged: (String value) => onChange(value),
      textAlignVertical: TextAlignVertical.center,
      decoration: customInputDecoration.hasPrefixIconButton(
        resourceType: resourceType,
        iconButton: IconButton(onPressed: onTapIcon, icon: resourceType.getIcon()),
      ),
      style: customTextStyle.basic(textColor: CustomColor.Text.getColor(), textSize: textSize),
      cursorColor: cursorColor,
    );
  }

  Widget secret({
    required ResourceType resourceType,
    required TextEditingController controller,
    FocusNode? focusNode,
    Color? cursorColor,
    double? textSize,
    bool hasPrefixIcon = false,
    GestureTapCallback? onTap,
  }) {
    return TextField(
      autofocus: false,
      focusNode: focusNode,
      controller: controller,
      onTap: onTap,
      decoration: customInputDecoration.basic(
        resourceType: resourceType,
        hasPrefixIcon: hasPrefixIcon,
        suffixIcon: const Icon(Icons.visibility_off),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        fillColor: CustomColor.Surface.getColor(),
        enabledBorder: customShapeBorder.transparent(borderRadius: RadiusDimen.LittleRounded),
        focusedBorder: customShapeBorder.focusedOutLine(borderRadius: RadiusDimen.LittleRounded),
      ),
      style: customTextStyle.basic(textColor: CustomColor.Text.getColor(), textSize: textSize),
      cursorColor: cursorColor,
      obscureText: true,
    );
  }

  Widget secretFilled({
    required ResourceType resourceType,
    required TextEditingController controller,
    FocusNode? focusNode,
    Color? cursorColor,
    double? fontSize,
    bool hasPrefixIcon = false,
    GestureTapCallback? onTap,
  }) {
    return TextField(
      autofocus: false,
      focusNode: focusNode,
      controller: controller,
      onTap: onTap,
      decoration: customInputDecoration.basic(
        resourceType: resourceType,
        hasPrefixIcon: hasPrefixIcon,
        fillColor: ColorConstants.Filled.color,
        suffixIcon: const Icon(Icons.visibility_off),
        suffixIconColor: getFocusedStateColor(
            focusedColor: CustomColor.Primary.getColor(), unFocusedColor: ColorConstants.Color7070.color),
        enabledBorder: customShapeBorder.transparent(borderRadius: RadiusDimen.LittleRounded),
        focusedBorder: customShapeBorder.focusedOutLine(borderRadius: RadiusDimen.LittleRounded),
      ),
      style: customTextStyle.basic(textColor: CustomColor.Text.getColor(), textSize: fontSize),
      cursorColor: cursorColor,
      obscureText: true,
    );
  }

  Widget hasTitle({
    required ResourceType resourceType,
    required TextEditingController controller,
    FocusNode? focusNode,
    Color? cursorColor,
    Color? fillColor,
    double? titleFontSize,
    GestureTapCallback? onTap,
    bool hasPrefixIcon = false,
    bool hasLabel = false,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Custom.text.basic(
          text: resourceType.getText(),
          textSize: getSafeTextSize(
            textSize: titleFontSize,
            safeTextSize: TextDimen.TextFieldTitle.getSize(),
          ),
          textColor: ColorConstants.LightText.color,
        ),
        SizedBox(
          height: EdgeDimen.BetweenTitleTextField.getSize(),
        ),
        TextField(
          autofocus: false,
          focusNode: focusNode,
          controller: controller,
          onTap: onTap,
          decoration: customInputDecoration.basic(
            floatingLabelBehavior: FloatingLabelBehavior.never,
            hasPrefixIcon: hasPrefixIcon,
            hasLabel: hasLabel,
            fillColor: fillColor,
            enabledBorder: customShapeBorder.transparent(borderRadius: RadiusDimen.LittleRounded),
            focusedBorder: customShapeBorder.focusedOutLine(borderRadius: RadiusDimen.LittleRounded),
          ),
          style: customTextStyle.basic(textSize: TextDimen.TextField.getSize()),
          cursorColor: cursorColor,
        )
      ],
    );
  }

  Widget hasTitleSecret(
      {required ResourceType resourceType,
      required TextEditingController controller,
      FocusNode? focusNode,
      Color? cursorColor,
      Color? fillColor,
      double? titleFontSize,
      GestureTapCallback? onTap,
      bool hasPrefixIcon = false,
      bool hasLabel = false}) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Custom.text.basic(
          text: resourceType.getText(),
          textSize: getSafeTextSize(
            textSize: titleFontSize,
            safeTextSize: TextDimen.TextFieldTitle.getSize(),
          ),
          textColor: ColorConstants.LightText.color,
        ),
        SizedBox(
          height: EdgeDimen.BetweenTitleTextField.getSize(),
        ),
        TextField(
          autofocus: false,
          focusNode: focusNode,
          controller: controller,
          onTap: onTap,
          decoration: customInputDecoration.basic(
            hasPrefixIcon: hasPrefixIcon,
            hasLabel: hasLabel,
            resourceType: resourceType,
            floatingLabelBehavior: FloatingLabelBehavior.never,
            fillColor: fillColor,
            enabledBorder: customShapeBorder.transparent(borderRadius: RadiusDimen.LittleRounded),
            focusedBorder: customShapeBorder.focusedOutLine(borderRadius: RadiusDimen.LittleRounded),
            suffixIcon: const Icon(Icons.visibility_off),
            suffixIconColor: getFocusedStateColor(
                focusedColor: CustomColor.Primary.getColor(), unFocusedColor: ColorConstants.Filled.color),
          ),
          style: customTextStyle.basic(textSize: TextDimen.TextField.getSize()),
          cursorColor: cursorColor,
          obscureText: true,
        )
      ],
    );
  }
}
