

import 'dart:math';

import 'package:flutter/material.dart';

import '../Config/Theme/MesTheme.dart';
import '../Config/Theme/ThemeColorType.dart';

const Color PRIMARY_DARK = Color(0xff00539A);

const Color DX_PRIMARY = Color(0xffF4503B);
const Color MES_PRIMARY = Color(0xff0072C6);

const Color SECONDARY = Color(0xffFF5C4D);
const Color PRIMARY_LIGHT2 = Color(0xff44B5C9);
const Color PRIMARY_LIGHT = Color(0xff58BBEE);
const Color PRIMARY_LIGHTEST = Color(0xFF9DC8E8);

const Color YELLOW = Color(0xffF2B542);
const Color ORANGE = Color(0xffF8A13F);
const Color ERROR = Color(0xffF4503B);
const Color ERROR_LIGHT = Color(0xFF963232);
const Color colorFF0000 = Color(0xFFFF0000);

const Color colorFFFFFF = Color(0xffFFFFFF);
const Color colorF5F5F5 = Color(0xffF5F5F5);
const Color colorF3F3F3 = Color(0xffF3F3F3);
const Color colorE0E0E0 = Color(0xffE0E0E0);
const Color colorBFBFBF = Color(0xffBFBFBF);
const Color color707070 = Color(0xff707070);
const Color color666666 = Color(0xff666666);
const Color color333333 = Color(0xff333333);
const Color color323232 = Color(0xff323232);
const Color color1F000000 = Color(0x1F000000);

const Color color000000 = Color(0x0000001F);


const Color colorPrimaryTrans = Color(0x3C0072C6);


enum ColorConstants {
  /// Theme
  DxPrimary(Color(0xffF4503B)),
  MesPrimary(Color(0xff0072C6)),
  Surface(Color(0xffFFFFFF)),

  Divider(Color(0xffF5F5F5)),
  DialogDivider(Color(0xffE0E0E0)),
  Filled(Color(0xffF5F5F5)),

  RedAccent(Color(0xFFFF0000)),

  /// Border
  Border(Color(0xffE0E0E0)),
  DarkBorder(Color(0xff333333)),

  /// Icon
  Icon(Color(0xff707070)),

  /// Text
  Text(Color(0xff333333)),
  LightText(Color(0xff666666)),

  ///추후 용도에 따라 직관적인 이름으로 변경

    //TextField suffixIcon,
  Color7070(Color(0xff707070)),
  ;

  const ColorConstants(this.color);

  final Color color;
}

///ColorScheme 로 color 지정,
///Theme 를 변경하면 함께 변하지만, 적절히 지정하지 않으면 직관성이 많이 떨어짐,
///확실한 상황적 근거가 있는 곳에 지정(ex: onPrimary 는 primary 색상이 있고 부각 되는 색깔이 필요한 곳),
enum CustomColor {

  ///텍스트
  Text(colorType: ColorType.OnSurface),

  ///테마 White
  Surface(colorType: ColorType.Surface),

  ///테마 Primary
  SecondaryContainer(colorType: ColorType.SecondaryContainer),
  Secondary(colorType: ColorType.Secondary),
  Primary(colorType: ColorType.Primary),

  ///테마 Error
  Error(colorType: ColorType.Error),


  ///primary, onTertiaryContainer 와 동일
  ;

  const CustomColor({required this.colorType});

  final ColorType colorType;

  static int getRandomColor() {
    return Random().nextInt(0xFFFFFF);
  }

  Color getColor() {

    /// ++ 현재 지정된 테마를 가져옴 , BuildContext 필요
    /// GlobalKey 사용하면 편하지만 오류의 여지가 있음
    // final context = MainGlobalKey.mainKey.currentContext;
    // ThemeData themeData = context!.read<SettingsProvider>().themeData;
    MesTheme themes = MesTheme();
    ThemeData themeData = themes.mesTheme();

    switch (colorType) {
      case ColorType.Primary:
        return themeData.colorScheme.primary;
      case ColorType.PrimaryContainer:
        return themeData.colorScheme.primaryContainer;
      case ColorType.OnPrimary:
        return themeData.colorScheme.onPrimary;
      case ColorType.OnPrimaryContainer:
        return themeData.colorScheme.onPrimaryContainer;
      case ColorType.Secondary:
        return themeData.colorScheme.secondary;
      case ColorType.SecondaryContainer:
        return themeData.colorScheme.secondaryContainer;
      case ColorType.OnSecondary:
        return themeData.colorScheme.onSecondary;
      case ColorType.Tertiary:
        return themeData.colorScheme.tertiary;
      case ColorType.OnTertiaryContainer:
        return themeData.colorScheme.onTertiaryContainer;

      case ColorType.Surface:
        return themeData.colorScheme.surface;
      case ColorType.SurfaceContainerLowest:
        return themeData.colorScheme.surfaceContainerLowest;
      case ColorType.SurfaceContainerLow:
        return themeData.colorScheme.surfaceContainerLow;
      case ColorType.SurfaceContainer:
        return themeData.colorScheme.surfaceContainer;
      case ColorType.SurfaceContainerHigh:
        return themeData.colorScheme.surfaceContainerHigh;
      case ColorType.SurfaceContainerHighest:
        return themeData.colorScheme.surfaceContainerHighest;
      case ColorType.OutlineVariant:
        return themeData.colorScheme.outlineVariant;
      case ColorType.Outline:
        return themeData.colorScheme.outline;
      case ColorType.OnSurfaceVariant:
        return themeData.colorScheme.onSurfaceVariant;
      case ColorType.OnSurface:
        return themeData.colorScheme.onSurface;
      case ColorType.Scrim:
        return themeData.colorScheme.scrim;

      case ColorType.Error:
        return themeData.colorScheme.error;
      case ColorType.ErrorContainer:
        return themeData.colorScheme.errorContainer;
      case ColorType.OnError:
        return themeData.colorScheme.onError;
      case ColorType.OnErrorContainer:
        return themeData.colorScheme.onErrorContainer;
      default:
        return themeData.colorScheme.primary;
    }
  }
}
