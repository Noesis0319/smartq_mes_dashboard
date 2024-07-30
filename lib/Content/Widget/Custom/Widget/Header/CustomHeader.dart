

import 'package:flutter/material.dart';

import '../../../../../Config/Mixin/Style.dart';
import '../../../../../Resource/Color.dart';
import '../../../../../Resource/ResourceType.dart';
import '../../../Controller.dart';
import '../../Base/CustomWidget.dart';
import '../../Style/Dimen/Dimen.dart';
import '../Picker/CustomNumberPicker.dart';

class CustomHeader extends CustomWidget {
  Widget filter({
    required BuildContext context,
    required ResourceType left1ResourceType,
    required FocusNode left1FocusNode,
    required TextEditingController left1Controller,
    required Function() left1OnTap,
    required ResourceType right1ResourceType,
    required FocusNode rightFocusNode,
    required TextEditingController right1Controller,
    required Function() right1OnTap,
    required FocusNode lookupPeriodTextFocus,
    required TextEditingController lookupPeriodController,
    required Function() onPressLookupPeriod,
    Widget? bottomLeading,
    required Function() onPressReset,
    required int dateOffsetMin,
    required int dateOffsetMax,
    int? dateOffsetItemCount,
    required String Function(String numberText) textMapper,
    required Function(int value) onPressSubmit,
  }) {
    return Column(
      children: [
        Row(
          children: [
            Flexible(
              flex: 1,
              child: Custom.textField.filled(
                  resourceType: left1ResourceType,
                  focusNode: left1FocusNode,
                  controller: left1Controller,
                  onTap: left1OnTap),
            ),
            SizedBox(
              width: EdgeDimen.WidgetHorizontal.getSize(),
            ),
            Flexible(
              flex: 1,
              child: Custom.textField.filled(
                  resourceType: right1ResourceType,
                  focusNode: rightFocusNode,
                  controller: right1Controller,
                  onTap: right1OnTap),
            )
          ],
        ),
        SizedBox(
          height: EdgeDimen.WidgetVertical.getSize(),
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              flex: 10,
              child: Custom.textField.filled(
                  resourceType: ResourceType.LookupPeriod,
                  focusNode: lookupPeriodTextFocus,
                  controller: lookupPeriodController,
                  onTap: onPressLookupPeriod),
            ),
            SizedBox(
              width: EdgeDimen.WidgetHorizontal.getSize(),
            ),
            Expanded(
              flex: 2,
              child: InkWell(
                child: Container(
                  height: WidgetDimen.DateOffsetButton.getSize(),
                  decoration: customDecoration.basic(),
                  child: const Icon(Icons.date_range),
                ),
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (_) => NumberPickerDialogState(
                      minValue: dateOffsetMin,
                      maxValue: dateOffsetMax,
                      itemCount: dateOffsetItemCount,
                      onPressSubmit: (value) {
                        onPressSubmit(value);
                      },
                      textMapper: textMapper,
                    ),
                  );
                },
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            bottomLeading ?? const SizedBox(),
            TextButton(
              style: customButtonStyle.transparent(isBordered: false),
              onPressed: onPressReset,
              child: Text(
                ResourceType.Reset.getText(),
                style: customTextStyle.basic(textColor: CustomColor.Error.getColor()),
              ),
            )
          ],
        ),
      ],
    );
  }
}

class NumberPickerDialogState extends StatefulWidget {
  final int minValue;
  final int maxValue;
  final int? itemCount;
  final String Function(String numberText) textMapper;
  final Function(int value) onPressSubmit;

  const NumberPickerDialogState(
      {super.key,
      required this.minValue,
      required this.maxValue,
      this.itemCount,
      required this.textMapper,
      required this.onPressSubmit});

  @override
  State createState() => NumberPickerDialog();
}

class NumberPickerDialog extends State<NumberPickerDialogState> with StyleMixin {
  int _currentValue = 0;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      titlePadding: EdgeInsets.zero,
      actionsPadding: EdgeInsets.zero,
      shape: customShapeBorder.roundedRectangle(),
      content: NumberPicker(
        infiniteLoop: true,
        value: _currentValue,
        itemCount: widget.itemCount ?? 5,
        minValue: widget.minValue,
        maxValue: widget.maxValue,
        onChanged: (value) => setState(() => _currentValue = value),
        textMapper: widget.textMapper,
      ),
      actions: [
        Custom.button.transparent(
            onPressed: () {
              widget.onPressSubmit(_currentValue);
              Navigator.pop(context);
            },
            resourceType: ResourceType.Submit,
            isBordered: false,
            textStyle: customTextStyle.basic(textColor: CustomColor.Primary.getColor())),
        Custom.button.transparent(
            onPressed: () {
              Navigator.pop(context);
            },
            resourceType: ResourceType.Cancel,
            isBordered: false,
            textStyle: customTextStyle.basic())
      ],
    );
  }
}
