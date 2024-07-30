

import 'package:flutter/material.dart';

import '../../../../../Config/Mixin/Style.dart';
import '../../../../../Resource/Color.dart';
import '../../../../../Resource/ResourceType.dart';
import '../../../../../Util/Convert/ConvertDataToWidgets.dart';
import '../../Base/CustomWidget.dart';
import '../../Style/Dimen/Dimen.dart';

class Toggle extends CustomWidget{
  basic(
      {int? selectedIndex,
      required List<Widget> children,
      required Function(int index) onPressed,
      required Color selectedColor}) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: _addPadding(children, selectedIndex,selectedColor, onPressed)
        );
  }

  dense(
      {required List<ResourceType> resources,
      required List<bool> isSelected,
      required Function(int index) onPressed,
      TransformType? transformType}) {
    List<Widget> widgets = _getWidgets(resources, transformType);
    return ToggleButtons(

      constraints: constraints.toggleButtonsConstraint(),
      isSelected: isSelected,
      borderRadius: BorderRadius.all(Radius.circular(RadiusDimen.Basic.dimen)),
      selectedColor: CustomColor.Surface.getColor(),
      color: CustomColor.Primary.getColor(),
      fillColor: CustomColor.Primary.getColor(),
      splashColor: CustomColor.Primary.getColor(),
      onPressed: onPressed,
      children: widgets,
    );
  }
}

class _ToggleItem extends StatelessWidget with StyleMixin {
  final Widget child;
  final VoidCallback onPressed;
  final Color color;

  _ToggleItem({required this.child, required this.onPressed, required this.color});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: customButtonStyle.shrinkWrap(backGroundColor: color, radiusDimen: RadiusDimen.Basic),
      onPressed: onPressed,
      child: child,
    );
  }
}

enum TransformType {
  icon,
  text,
  all,
}

_getWidgets(List<ResourceType> resources, TransformType? transformType) {
  WidgetMaker widgetMaker = WidgetMaker();
  switch (transformType) {
    default:
      return widgetMaker.resourcesToText(resources: resources);
  }
}

List<Widget> _addPadding(List<Widget> children, int? selectedIndex, Color selectedColor, Function(int i) onPressed){
  List<Widget> spacedChildren = [];
  for(int index = 0; index < children.length ; index++){
    if(index != 0){
      spacedChildren.add(SizedBox(width: EdgeDimen.WidgetHorizontal.getSize()));
    }

    Color finalColor;
    if (selectedIndex == null || selectedIndex != index) {
      finalColor = CustomColor.Surface.getColor();
    } else {
      finalColor = selectedColor;
    }
    spacedChildren.add(Expanded(flex: 1,child: _ToggleItem(onPressed: () => onPressed(index), color: finalColor, child: children[index]),));
  }
  return spacedChildren;
}
