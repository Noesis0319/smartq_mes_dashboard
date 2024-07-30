
import 'dart:math';
import 'dart:ui';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Config/MainSetting/Locale.dart';

///Dimen 의 값들은 거의 대부분이 문서에 그려진 화면의 수치(baseScreen)
///minScreen 은 지원할 최소 사이즈
double _adjustSize({required double size}) {
  double widthAdjustmentRatio = ScreenSize.MinScreenWidth.size / ScreenSize.BaseScreenWidth.size;
  double heightAdjustmentRatio = ScreenSize.MinScreenHeight.size / ScreenSize.BaseScreenHeight.size;

  double minWidthSize = size * widthAdjustmentRatio;
  double minHeightSize = size * heightAdjustmentRatio;

  double minSize = min(minWidthSize, minHeightSize);

  ///조정한 수치가 최소 사이즈보다 작으면 최소 사이즈를 반환
  ///The size of the font on the UI design, in dp.(ScreenUtil().setSp)
  if (size.sp < minSize) {
    return minSize;
  } else {
    return size.sp;
  }
}

enum ScreenSize {
  BaseScreenWidth(1920),
  BaseScreenHeight(960),
  MinScreenWidth(1600),
  MinScreenHeight(900),

  // ///Test
  // minScreenWidth(1600),
  // minScreenHeight(900),
  ;

  const ScreenSize(this.size);

  final double size;
}

/// 메서드의 파라미터를 Dimen 으로 너무 강제하지 말 것,

///이하 반응형

enum TextDimen {
  ///Theme

  ///TextField text
  ///Dialog title
  ///Appbar title
  ///Card title
  TitleMedium(20),
  Basic(14),

  ///ErrorDialog
  ErrorDialogTitle(16),
  ErrorDialogContent(12),
  DropDownMenuLabel(18),
  DropDownMenuItem(12),
  TextFieldTitle(18),
  TextField(20),
  MenuTitle(20),

  ///Size
  VerySmall(10),
  SmallValue(12),
  Small(14),
  Middle(16),
  Big(20),
  ;

  const TextDimen(this._size);

  final double _size;

  double getSize() {
    double responsiveFontSize = _adjustSize(size: _size);

    return _adjustFontSizeForLocale(fontSize: responsiveFontSize);
  }

  _adjustFontSizeForLocale({required double fontSize}) {
    Locale currentLocale = PlatformDispatcher.instance.locale;
    switch (currentLocale) {
      case LocalizationSetting.English:
      case LocalizationSetting.Vietnamese:
      case LocalizationSetting.Spanish:
      case LocalizationSetting.Indonesian:
      return fontSize * 1.5;
      default:
        return fontSize;
    }
  }
}

enum EdgeDimen {
  ///Authentication
  // authenticationTop(40.5), localization 없을 때
  AuthenticationTop(20.5),
  AuthenticationBetweenTitleContent(47.09),
  AuthenticationBottom(30),
  AuthenticationHorizontal(50),

  ///ErrorDialog
  ErrorDialogContent(13),
  ErrorDialogContentBottom(5),
  ErrorDialogTitle(13),

  ///SnackBar
  SnackBarOffsetToBottomInWeb(30),
  BetweenWidgetVertical(20),
  BetweenTitleTextField(14),
  MinButtonPadding(5),
  Outer(15),
  WidgetHorizontal(15),
  WidgetVertical(10),

  ///Size
  VerySmall(5),
  Small(10),
  Middle(15),
  Big(20),
  VeryBig(25),
  ;

  const EdgeDimen(this._size);

  final double _size;

  double getSize() {
    return _adjustSize(size: _size);
  }
}

enum ImageDimen {
  AuthenticationLogoWidth(322.86),
  AuthenticationLogoHeight(109.51),
  AuthIntroLogo(200),
  MainAppBarIcon(30),
  ;

  const ImageDimen(this._size);

  final double _size;

  double getSize() {
    return _adjustSize(size: _size);
  }
}

enum IconDimen {
  Basic(24),
  AppbarIcon(25),
  BottomNavigationIcon(20),
  BottomNavigationActiveIcon(30),
  MessageLeadingIcon(24),
  PickerDefault(16),
  SmallResetButtonIcon(15),
  ;

  const IconDimen(this._size);

  final double _size;

  double getSize() {
    return _adjustSize(size: _size);
  }
}

/// 일반적인 툴바의 높이 kToolbarHeight = 56
enum WidgetDimen {
  ///Authentication
  AuthenticationBoxWidth(552),
  AuthenticationBoxHeight(719),
  AuthenticationShadowBox(60),
  AuthenticationTextField(60),
  LocalizationDropDownWidth(170),
  CheckBox(30),
  DateOffsetButton(50),
  PickerDefault(30),
  ProgressIndicator(35),
  ProgressIndicatorStroke(5),
  PageLoadingIndicatorStroke(10),
  ToggleButtonsHeight(40),
  ToggleButtonsWidth(100),
  ;

  const WidgetDimen(this._size);

  final double _size;

  double getSize() {
    return _adjustSize(size: _size);
  }

  getAdjustedSize({required double referenceValue}) {
    if (_size > referenceValue) {
      return referenceValue;
    } else {
      return _size.sp;
    }
  }
}

enum BorderWidthDimen {
  Basic(1),
  FocusedBorder(1.5),
  Thick(2),
  ;

  const BorderWidthDimen(this._size);

  final double _size;

  double getSize() {
    return _adjustSize(size: _size);
  }
}

enum DividerDimen {
  Thin(0.5),
  Basic(1),
  ;

  const DividerDimen(this._size);

  final double _size;

  double getSize() {
    return _adjustSize(size: _size);
  }
}

enum OffsetDimen {
  Basic(0),
  ;

  const OffsetDimen(this._size);

  final double _size;

  double getSize() {
    return _adjustSize(size: _size);
  }
}

enum LetterSpacing {
  Basic(5),
  AuthErrorDialog(0.22),
  ;

  const LetterSpacing(this._size);

  final double _size;

  double getSize() {
    return _adjustSize(size: _size);
  }
}

///이하 반응형 x

enum ElevationDimen {
  SubmitButton(10),
  ;

  const ElevationDimen(this.dimen);

  final double dimen;
}

enum OpacityDimen {
  Basic(0.5),
  ;

  const OpacityDimen(this.dimen);

  final double dimen;
}

enum RadiusDimen {
  None(0),
  CheckBox(2),
  Basic(4),
  Dialog(10),
  LittleRounded(15),
  Rounded(30),
  ;

  const RadiusDimen(this.dimen);

  final double dimen;
}

enum RatioDimen {
  AuthErrorSnackBarHorizontalMargin(0.36),
  ;

  const RatioDimen(this.dimen);

  final double dimen;
}

enum StrutHeightDimen{
  Basic(1.5),
  ;
  const StrutHeightDimen(this.dimen);
  final double dimen;
}