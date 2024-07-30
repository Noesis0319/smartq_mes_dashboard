
import 'package:flutter/material.dart';

import '../../Content/Widget/Custom/Base/Controller.dart';
import '../../Resource/ResourceType.dart';
import 'Type/ConvertDataType.dart';

enum TransformType {
  Icon,
  Text,
  All,
}

class WidgetMaker {
  List<Widget> dataToWidgets({required ConvertTargetDtoName dtoName,required  List data, required Function onTapCallback}) {
    switch (dtoName) {
      case ConvertTargetDtoName.FactoryDto:
        return data
            .map((dto) => Custom.listItem.has2Line(text1: dto._id.toString(), text2: dto._name) as Widget)
            .toList();
      default:
        return [];
    }
  }

  /// 생성하는 Widget 사이의 간격만 조정
  List<Widget> resourcesToText(
      {required List<ResourceType> resources,
      double? width,
      double? height,
      double horizontalPadding = 0}) {
    List<Widget> widgets = List.generate(resources.length, (index) {
      if (index == 0) {
        return Text(
          resources[index].getText(),
        );
      } else {
        return Padding(
          padding: EdgeInsets.only(left: horizontalPadding),
          child: Text(
            resources[index].getText(),
          ),
        );
      }
    });
    return widgets;
  }
}
