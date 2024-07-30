
import 'package:flutter/material.dart';
import '/Content/Widget/Custom/Base/CustomStyle.dart';

import '../../Content/Widget/Custom/Style/CustomShapeBorder.dart';
import '../../Content/Widget/Custom/Style/Dimen/Dimen.dart';
import '../../Resource/Color.dart';
import '../Mixin/Style.dart';

/// ++ 테마 지정만으로도 색깔 지정 문제가 해결되도록(별도의 색깔 지정이 최소화 되도록)
/// ++ 테마의 각 속성이 어느 위젯, 어느 부위에 적용되는지 파악 필요(확인을 위해 임의 색상 지정)
/// ++ 미완료 된 부분에서 색상 변경이 확인되면 적절한 색상 지정 혹은 주석 추가 후 비활성화
/// 위젯 테마 지정시 primary 같은 테마 속성을 사용하지 않도록 주의
class DXTheme extends CustomStyle with StyleMixin{
  final CustomShapeBorder _customShapeBorder = CustomShapeBorder();
  ThemeData dxTheme() {
    return ThemeData(

      ///완료

      useMaterial3: false,

      ///ElevatedButton shadow
      shadowColor: ColorConstants.DxPrimary.color,

      // hoverColor: CustomColor2.surface.color,

      ///Surface
      dialogBackgroundColor: ColorConstants.Surface.color,

      ///placeholder?
      hintColor: ColorConstants.Text.color,
      dividerTheme: DividerThemeData(
          color: ColorConstants.Divider.color,
          thickness: DividerDimen.Basic.getSize(),

          ///들여쓰기
          indent: 0,

          ///내어쓰기
          endIndent: 0,

          ///상하여백
          space: 0),

      ///미완료
//#region 미완료
      dividerColor: Colors.greenAccent,

      /// 버튼의 배경색 같은 기본 색상은 ColorScheme 로 정해짐,
      /// 좀 더 디테일한 부분의 경우 지정할 필요가 있음,
      /// ColorScheme 와 다른 색상을 지정하고 싶은 경우에도 따로 지정해야함,
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
              // backgroundColor: WidgetStateProperty.all(Colors.yellow),
              // foregroundColor: WidgetStateProperty.all(Colors.greenAccent)
              )),
      textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
              // backgroundColor: WidgetStateProperty.all(Colors.yellow),
              // foregroundColor: WidgetStateProperty.all(Colors.greenAccent)
              )),
      filledButtonTheme: FilledButtonThemeData(
          style: ButtonStyle(
              // backgroundColor: WidgetStateProperty.all(Colors.yellow),
              // foregroundColor: WidgetStateProperty.all(Colors.greenAccent)
              )),
      dropdownMenuTheme: DropdownMenuThemeData(),

      inputDecorationTheme: InputDecorationTheme(
        contentPadding: EdgeInsets.zero,
        filled: true,
        enabledBorder: _customShapeBorder.outline(),
        // focusedBorder: _customShapeBorder.outline(width: BorderWidthDimen.focusedBorder, borderColor: ColorConstants.dxPrimary.color),
      ),
      primaryColor: Colors.orange,
      focusColor: Colors.lightBlueAccent,
      cardColor: Colors.lightBlueAccent,
      // canvasColor: Colors.orange,

      disabledColor: Colors.lightBlueAccent,
      splashColor: Colors.lightBlueAccent,
      highlightColor: Colors.lightBlueAccent,

      primaryColorDark: Colors.greenAccent,
      indicatorColor: Colors.greenAccent,
      unselectedWidgetColor: Colors.greenAccent,
      // scaffoldBackgroundColor: Colors.purpleAccent,
      secondaryHeaderColor: Colors.greenAccent,
      primaryColorLight: Colors.greenAccent,
      primaryTextTheme: TextTheme(
        bodyLarge: TextStyle(color: Colors.lightGreenAccent, fontSize: 500),
        bodyMedium: TextStyle(color: Colors.lightGreenAccent, fontSize: 500),
        bodySmall: TextStyle(color: Colors.lightGreenAccent, fontSize: 500),
        displayLarge: TextStyle(color: Colors.lightGreenAccent, fontSize: 500),
        displayMedium: TextStyle(color: Colors.lightGreenAccent, fontSize: 500),
        displaySmall: TextStyle(color: Colors.lightGreenAccent, fontSize: 500),
        headlineLarge: TextStyle(color: Colors.lightGreenAccent, fontSize: 500),
        headlineMedium: TextStyle(color: Colors.lightGreenAccent, fontSize: 500),
        headlineSmall: TextStyle(color: Colors.lightGreenAccent, fontSize: 500),
        labelLarge: TextStyle(
          color: Colors.greenAccent,
          decorationColor: Colors.blue,
          fontSize: 100,
        ),
        labelMedium: TextStyle(color: Colors.greenAccent, fontSize: 1000),
        labelSmall: TextStyle(color: Colors.greenAccent, fontSize: 1000),
        titleLarge: TextStyle(color: Colors.greenAccent, fontSize: 1000),
        titleMedium: TextStyle(color: Colors.greenAccent, fontSize: 1000),
        titleSmall: TextStyle(color: Colors.greenAccent, fontSize: 1000),
      ),
//#endregion


      /// 색상이 적용되지 않는 것도 있음
      textTheme: TextTheme(
        ///완료

        ///TextField label
        ///TextField input
        titleMedium: TextStyle(color: ColorConstants.Text.color, fontSize: TextDimen.TextField.getSize()),

        ///DropDownMenu text
        labelLarge: TextStyle(color: Colors.blue, fontSize: TextDimen.DropDownMenuLabel.getSize()),

        /// Text
        bodyMedium:  TextStyle(
          color: ColorConstants.Text.color,
          fontSize:  TextDimen.Basic.getSize(),
        ),

///#region 미완료
        bodyLarge: TextStyle(color: Colors.greenAccent, fontSize: 100),
        // bodyMedium: customTextStyle.basic(),
        bodySmall: TextStyle(color: Colors.greenAccent, fontSize: 100),
        displayLarge: TextStyle(color: Colors.greenAccent, fontSize: 100),
        displayMedium: TextStyle(color: Colors.greenAccent, fontSize: 100),
        displaySmall: TextStyle(color: Colors.greenAccent, fontSize: 100),
        headlineLarge: TextStyle(color: Colors.greenAccent, fontSize: 100),
        headlineMedium: TextStyle(color: Colors.greenAccent, fontSize: 100),
        headlineSmall: TextStyle(color: Colors.greenAccent, fontSize: 100),

        labelMedium: TextStyle(color: Colors.greenAccent, fontSize: 100),
        labelSmall: TextStyle(color: Colors.greenAccent, fontSize: 100),
        titleLarge: TextStyle(color: Colors.greenAccent, fontSize: 100),

        titleSmall: TextStyle(color: Colors.greenAccent, fontSize: 100),

        //#endregion
      ),

      colorScheme: ColorScheme(

        ///완료
        brightness: Brightness.light,

        ///Button,
        ///TextField cursor
        ///
        primary: ColorConstants.DxPrimary.color,

        ///Button Text
        onPrimary: ColorConstants.Surface.color,


        surface: Colors.white,

        ///Text
        ///Disable
        ///DropDown Menu text
        onSurface: ColorConstants.Text.color,



        ///미완료
        //밝기 순(primary)
        // secondaryContainer: Color(colorPrimaryLightest),
        secondaryContainer: Colors.green,
        secondary: Colors.purpleAccent,
        primaryContainer: Colors.purpleAccent,



        onPrimaryContainer: Colors.purpleAccent,

        //밝기 순(white)
        // surface: Colors.pink,

        surfaceContainerLowest: Colors.purpleAccent,
        surfaceContainerLow: Colors.lightGreenAccent,
        surfaceContainer: Colors.teal,
        surfaceContainerHigh: Colors.amberAccent,
        surfaceContainerHighest: Colors.purple,
        outlineVariant: Colors.purpleAccent,
        outline: Colors.purple,
        onSurfaceVariant: Colors.lightGreenAccent,

        scrim: Colors.greenAccent,

        //밝기 순(error)
        errorContainer: Colors.greenAccent,
        error: Colors.greenAccent,
        onErrorContainer: Colors.greenAccent,

        //기타
        tertiary: Colors.greenAccent,
        tertiaryContainer: Colors.greenAccent,
        onTertiaryContainer: Colors.greenAccent,

        //      미지정
        onError: Colors.greenAccent,
        onTertiary: Colors.greenAccent,
        onSecondary: Colors.greenAccent,

        shadow: Colors.greenAccent,
        primaryFixed: Colors.greenAccent,
        onPrimaryFixed: Colors.blue,
        onPrimaryFixedVariant: Colors.blue,
        secondaryFixed: Colors.blue,
        onSecondaryContainer: Colors.blue,
        onSecondaryFixed: Colors.blue,
        onSecondaryFixedVariant: Colors.blue,
        onTertiaryFixed: Colors.blue,
        onTertiaryFixedVariant: Colors.blue,
        inversePrimary: Colors.blue,
        tertiaryFixedDim: Colors.blue,
        tertiaryFixed: Colors.blue,
        surfaceTint: Colors.blue,
        surfaceDim: Colors.blue,
        surfaceBright: Colors.blue,
        onInverseSurface: Colors.blue,
        inverseSurface: Colors.blue,
        secondaryFixedDim: Colors.blue,
        primaryFixedDim: Colors.blue,

//
      ),
    );
  }

//   ThemeData dxTheme() {
//     return ThemeData(
//       useMaterial3: false,
//         dividerTheme: DividerThemeData(
//           color: CustomColor2.divider.color,
//           indent: 0, ///들여쓰기
//           endIndent: 0, ///내어쓰기
//           space: 0, /// 상하 여백
//           thickness: DividerDimen.basic.size,
//         ),
//         colorScheme: const ColorScheme(
//           brightness: Brightness.light,
//           //밝기 순(primary)
//           // secondaryContainer: Color(colorPrimaryLightest),
//           secondaryContainer: Color(colorPrimaryTrans),
//           secondary: Color(colorSecondary),
//           primaryContainer: Color(colorPrimaryLight2),
//           primary: Color(dxPrimary),
//           onPrimaryContainer: Color(colorPrimaryDark),
//
//           //밝기 순(white)
//           surface: Color(colorFFFFFF),
//           surfaceContainerLowest: Color(colorF5F5F5),
//           surfaceContainerLow: Color(colorF3F3F3),
//           surfaceContainer: Color(colorE0E0E0),
//           surfaceContainerHigh: Color(colorBFBFBF),
//           surfaceContainerHighest: Color(color707070),
//           outlineVariant: Color(color666666),
//           outline: Color(color333333),
//           onSurfaceVariant: Color(color323232),
//           onSurface: Color(color1F000000),
//           scrim: Color(color000000),
//
//           //밝기 순(error)
//           errorContainer: Color(colorErrorLight),
//           error: Color(colorError),
//           onErrorContainer: Color(colorFF0000),
//
//           //기타
//           tertiary: Color(colorOrange),
//           tertiaryContainer: Color(colorYellow),
//           onTertiaryContainer: Color(mesPrimary),
//
//           //      미지정
//           onError: Color(colorError),
//           onTertiary: Color(colorYellow),
//           onSecondary: Color(colorYellow),
//           onPrimary: Color(dxPrimary),
// //
//         ));
//   }
}
