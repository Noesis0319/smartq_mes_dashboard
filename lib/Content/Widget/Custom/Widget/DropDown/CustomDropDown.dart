
import 'package:flutter/material.dart';

import '../../../../../Api/Mes/MasterData/Model/Dto/Factory.dart';
import '../../../../../Resource/ResourceType.dart';
import '../../../Controller.dart';
import '../../Base/CustomWidget.dart';
import '../../Style/Dimen/Dimen.dart';

class CustomDropDown extends CustomWidget {
  basic<T>({
    required List<DropdownMenuEntry> items,
    required T initValue,
    required Function(T) onSelected,
    double? width,
    double? selectedTextSize,
    double? menuItemTextSize,
  }) {
    // EasyLocalization.of(context)!.setLocale(Locale('ko', 'KR'));
    return DropdownMenuTheme(
        data: customDropdownMenuThemeData.basic(filled: false, fontSize: selectedTextSize),
        child: SizedBox(
          width: width,
          child: Theme(
            data: ThemeData(
                textTheme: TextTheme(
                    labelLarge: customTextStyle.basic(
                        textSize: menuItemTextSize, safeTextSize: TextDimen.DropDownMenuItem.getSize()))),
            child: DropdownMenu(
                initialSelection: initValue,

                ///내부 TextField 의 포커스 true/false
                ///false 인 경우 포커스 불가, cursor 없어짐, hover 시 click 모양
                requestFocusOnTap: false,
                // focusNode: focusNode,
                onSelected: (value) => onSelected(value as T),
                expandedInsets: EdgeInsets.zero,
                dropdownMenuEntries: items),
          ),
        ));
  }

  hasTitleFactory({
    required List<FactoryDto> items,
    FactoryDto? initValue,
    FactoryDto? value,
    required ValueChanged onSelected,
    required ResourceType resourceType,
    FocusNode? focusNode,
    bool filled = true,
    double? padding,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Custom.text.basic(
          text: resourceType.getText(),
          textStyle: customTextStyle.basic(textSize: TextDimen.TextFieldTitle.getSize()),
        ),

        SizedBox(
          height: EdgeDimen.BetweenTitleTextField.getSize(),
        ),

        DropdownMenuTheme(
          data: customDropdownMenuThemeData.basic(filled: filled),
          child: DropdownMenu(
            initialSelection: initValue,

            ///내부 TextField 의 포커스 true/false
            ///false 인 경우 포커스 불가, cursor 없어짐, hover 시 click 모양
            requestFocusOnTap: false,
            // focusNode: focusNode,
            onSelected: onSelected,
            expandedInsets: EdgeInsets.zero,
            dropdownMenuEntries: items
                .map(
                  (e) => DropdownMenuEntry(
                    value: e,
                    label: e.name ?? "",
                  ),
                )
                .toList(),
          ),
        ),
        // DropdownButtonHideUnderline(
        // child: DropdownButton2(
        //   isExpanded: true,
        //   value: items.,
        //   items: items
        //       .map((FactoryDto item) => DropdownMenuItem(
        //             value: item,
        //             child: Text(
        //               item.name ?? "Null",
        //               style: customTextStyle.basic(fontSize: TextDimen.textField.getSize()),
        //               overflow: TextOverflow.ellipsis,
        //             ),onTap: () => item.name,
        //           ))
        //       .toList(),
        //   onChanged: onChanged,
        //   buttonStyleData: ButtonStyleData(
        //     // height: 50,
        //     // width: 160,
        //     // padding: const EdgeInsets.only(left: 14, right: 14),
        //     decoration: customBoxStyle.basic(
        //         borderRadius: RadiusDimen.littleRounded.getSize(),
        //         boxColor: CustomColor.surface.getColor(),
        //         borderColor: CustomColor.primary.getColor(),
        //         width: BorderWidthDimen.thick.getSize()),
        //     // elevation: 2,
        //   ),
        //   iconStyleData: IconStyleData(
        //     icon: const Icon(
        //       Icons.arrow_drop_down,
        //     ),
        //     iconSize: 25,
        //     iconEnabledColor: CustomColor.primary.getColor(),
        //     // iconDisabledColor: Colors.grey,
        //   ),
        //   dropdownStyleData: DropdownStyleData(
        //     // maxHeight: 200,
        //     // width: 200,
        //     decoration: BoxDecoration(
        //       // borderRadius: BorderRadius.circular(14),
        //     // scrollbarTheme: ScrollbarThemeData(
        //       color: CustomColor.surface.getColor(),
        //     ),
        //     //   radius: const Radius.circular(40),
        //     //   thickness: WidgetStateProperty.all(6),
        //     //   thumbVisibility: WidgetStateProperty.all(true),
        //     // ),
        //   ),
        //   menuItemStyleData: const MenuItemStyleData(
        //       // height: 40,
        //       // padding: EdgeInsets.only(left: 14, right: 14),
        //       ),
        // ),
        // )
        // DropdownButton(value: value,selectedItemBuilder: (context) => items.map((e) => Text(e.name?? " asd"),).toList(),items: items.map((e) => DropdownMenuItem(value: e,child: Text(e.name?? "aa")),).toList(), onChanged: onChanged)
      ],
    );
  }
}
