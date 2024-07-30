
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Content/Controller/MenuController.dart';
import '../../Content/Widget/Custom/Style/Dimen/Dimen.dart';
import '../../Util/GlobalKey/GlobalKey.dart';
import '../Theme/MesTheme.dart';

class MainSetting {
  static Widget initMainSetting({required BuildContext context}) {
    return screenUtilSetting(
      child: materialAppSetting(context: context),
    );
  }

  static MaterialApp materialAppSetting({required BuildContext context}) {
    return MaterialApp(
        theme: MesTheme().mesTheme(),
        debugShowCheckedModeBanner: false,
        navigatorKey: MainGlobalKey.mainKey,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        initialRoute: Menu.MainPage.name,
        onGenerateRoute: MenuManager.generateRoutes);
  }

  static screenUtilSetting({required Widget child}) {
    return ScreenUtilInit(
      designSize: Size(ScreenSize.BaseScreenWidth.size, ScreenSize.BaseScreenHeight.size),

      ///화면을 기준으로 최소 텍스트 크기를 산출해 지정
      minTextAdapt: true,

      ///분할화면에서도 크기가 조정되도록 함
      splitScreenMode: true,

      builder: (context, _) {
        return child;
      },
    );
  }
}
