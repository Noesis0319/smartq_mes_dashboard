
import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../../../Resource/Color.dart';
import '../../../../../Resource/ResourceType.dart';
import '../../../Controller.dart';
import '../../Style/CustomButtonStyle.dart';
import '../../Style/Dimen/Dimen.dart';

class MaterialPicker extends StatefulWidget {
  const MaterialPicker({
    super.key,
    required this.selectedColor,
    required this.onColorChanged,
    required this.onSelectDefault,
    required this.onSubmit,
  });

  final Color selectedColor;
  final ValueChanged<Color> onColorChanged;
  final VoidCallback onSelectDefault;
  final VoidCallback onSubmit;

  @override
  State<StatefulWidget> createState() => _MaterialPickerState();
}

class _MaterialPickerState extends State<MaterialPicker> {
  final List<List<Color>> _colorTypes = [
    [Colors.red, Colors.redAccent],
    [Colors.pink, Colors.pinkAccent],
    [Colors.purple, Colors.purpleAccent],
    [Colors.deepPurple, Colors.deepPurpleAccent],
    [Colors.indigo, Colors.indigoAccent],
    [Colors.blue, Colors.blueAccent],
    [Colors.lightBlue, Colors.lightBlueAccent],
    [Colors.cyan, Colors.cyanAccent],
    [Colors.teal, Colors.tealAccent],
    [Colors.green, Colors.greenAccent],
    [Colors.lightGreen, Colors.lightGreenAccent],
    [Colors.lime, Colors.limeAccent],
    [Colors.yellow, Colors.yellowAccent],
    [Colors.amber, Colors.amberAccent],
    [Colors.orange, Colors.orangeAccent],
    [Colors.deepOrange, Colors.deepOrangeAccent],
    [Colors.brown],
    [Colors.grey],
    [Colors.blueGrey],
    [Colors.black],
  ];

  List<Color> _currentColorType = [Colors.red, Colors.redAccent];
  Color _currentShading = CustomColor.Primary.getColor();
  bool isDefault = false;
  final CustomButtonStyle buttonStyle = CustomButtonStyle();

  List<Map<Color, String>> _shadingTypes(List<Color> colors) {
    List<Map<Color, String>> result = [];

    for (Color colorType in colors) {
      if (colorType == Colors.grey) {
        result.addAll([50, 100, 200, 300, 350, 400, 500, 600, 700, 800, 850, 900]
            .map((int shade) => {Colors.grey[shade]!: shade.toString()})
            .toList());
      } else if (colorType == Colors.black || colorType == Colors.white) {
        result.addAll([
          {Colors.black: ''},
          {Colors.white: ''}
        ]);
      } else if (colorType is MaterialAccentColor) {
        result.addAll([100, 200, 400, 700].map((int shade) => {colorType[shade]!: 'A$shade'}).toList());
      } else if (colorType is MaterialColor) {
        result.addAll([50, 100, 200, 300, 400, 500, 600, 700, 800, 900]
            .map((int shade) => {colorType[shade]!: shade.toString()})
            .toList());
      } else {
        result.add({const Color(0x00000000): ''});
      }
    }

    return result;
  }

  @override
  void initState() {
    for (List<Color> colors in _colorTypes) {
      _shadingTypes(colors).forEach((Map<Color, String> color) {
        if (widget.selectedColor.value == color.keys.first.value) {
          return setState(() {
            _currentColorType = colors;
            _currentShading = color.keys.first;
          });
        }
      });
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget colorList() {
      return Container(
        clipBehavior: Clip.hardEdge,
        decoration: const BoxDecoration(),
        child: Container(
          margin: EdgeInsets.only(right: EdgeDimen.WidgetHorizontal.getSize()),
          width: 60,
          height: null,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: (Theme.of(context).brightness == Brightness.light)
                      ? (Theme.of(context).brightness == Brightness.light)
                          ? Colors.grey[300]!
                          : Colors.black38
                      : Colors.black38,
                  blurRadius: 10)
            ],
            border: Border(right: BorderSide(color: ColorConstants.Divider.color, width: 1)),
          ),
          child: ScrollConfiguration(
            behavior: ScrollConfiguration.of(context).copyWith(dragDevices: PointerDeviceKind.values.toSet()),
            child: ListView(
              children: [
                Padding(padding: EdgeInsets.only(top: EdgeDimen.WidgetVertical.getSize())),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      widget.onSelectDefault();
                      _currentShading = const Color(0xff0072C6);
                      isDefault = true;
                    });
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    width: WidgetDimen.PickerDefault.getSize(),
                    height: WidgetDimen.PickerDefault.getSize(),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: isDefault
                          ? [
                              const BoxShadow(
                                color: Color(0xff0072C6),
                                blurRadius: 15,
                              )
                            ]
                          : null,
                    ),
                    child: Align(
                      child:
                          ResourceType.DX.getIcon(isDefaultColor: false, imageHeight: IconDimen.PickerDefault.getSize()),
                      alignment: Alignment.center,
                    ),
                  ),
                ),
                ..._colorTypes.map((List<Color> colors) {
                  Color colorType = colors[0];
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        _currentColorType = colors;
                        isDefault = false;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(0, 7, 0, 7),
                      child: Align(
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          width: IconDimen.Basic.getSize(),
                          height: IconDimen.Basic.getSize(),
                          decoration: BoxDecoration(
                            color: colorType,
                            shape: BoxShape.circle,
                            boxShadow: _currentColorType == colors
                                ? [
                                    colorType == Theme.of(context).cardColor
                                        ? BoxShadow(
                                            color: (Theme.of(context).brightness == Brightness.light)
                                                ? Colors.grey[300]!
                                                : Colors.black38,
                                            blurRadius: 10,
                                          )
                                        : BoxShadow(
                                            color: colorType,
                                            blurRadius: 10,
                                          ),
                                  ]
                                : null,
                            border: colorType == Theme.of(context).cardColor
                                ? Border.all(
                                    color: (Theme.of(context).brightness == Brightness.light)
                                        ? Colors.grey[300]!
                                        : Colors.black38,
                                    width: 1)
                                : null,
                          ),
                        ),
                      ),
                    ),
                  );
                }),
                const Padding(padding: EdgeInsets.only(top: 5)),
              ],
            ),
          ),
        ),
      );
    }

    Widget shadingList() {
      return ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(dragDevices: PointerDeviceKind.values.toSet()),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            const Padding(padding: EdgeInsets.only(top: 15)),
            ..._shadingTypes(_currentColorType).map((Map<Color, String> color) {
              final Color shading = color.keys.first;
              return GestureDetector(
                onTap: () {
                  setState(() {
                    _currentShading = shading;
                    isDefault = false;
                  });
                  widget.onColorChanged(shading);
                },
                child: Container(
                  margin: const EdgeInsets.only(right: 10),
                  padding: const EdgeInsets.fromLTRB(0, 7, 0, 7),
                  child: Align(
                    child: AnimatedContainer(
                      curve: Curves.fastOutSlowIn,
                      duration: const Duration(milliseconds: 500),
                      width: (_currentShading == shading ? 250 : 230),
                      height: 50,
                      decoration: BoxDecoration(
                        color: shading,
                        boxShadow: _currentShading == shading
                            ? [
                                (shading == Colors.white) || (shading == Colors.black)
                                    ? BoxShadow(
                                        color: (Theme.of(context).brightness == Brightness.light)
                                            ? Colors.grey[300]!
                                            : Colors.black38,
                                        blurRadius: 10,
                                      )
                                    : BoxShadow(
                                        color: shading,
                                        blurRadius: 10,
                                      ),
                              ]
                            : null,
                        border: (shading == Colors.white) || (shading == Colors.black)
                            ? Border.all(
                                color: (Theme.of(context).brightness == Brightness.light)
                                    ? Colors.grey[300]!
                                    : Colors.black38,
                                width: 1)
                            : null,
                      ),
                      child: AnimatedOpacity(
                        duration: const Duration(milliseconds: 300),
                        opacity: _currentShading == shading ? 1 : 0,
                        child: Container(
                          padding: const EdgeInsets.only(top: 16),
                          alignment: Alignment.topCenter,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            }),
            const Padding(padding: EdgeInsets.only(top: 15)),
          ],
        ),
      );
    }

    return SizedBox(
      width: 350,
      height: 500,
      child: Column(children: [
        Expanded(child: Row(
          children: <Widget>[
            colorList(),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: shadingList(),
              ),
            ),
          ],
        )),
        SizedBox(height: EdgeDimen.WidgetVertical.getSize(),),
        Custom.button.basic(onPressed: widget.onSubmit, resourceType: ResourceType.Submit, buttonStyle: buttonStyle.basic(backGroundColor: _currentShading))
      ],),
    );
  }
}
//