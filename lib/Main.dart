
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'Config/MainSetting/Locale.dart';
import 'Config/MainSetting/MainSetting.dart';
import 'Config/Path/AssetRoute.dart';
import 'Content/Controller/MenuController.dart';
import 'Content/Controller/StateController.dart';
import 'Content/Widget/Custom/Style/Dimen/Dimen.dart';
import 'Util/Provider/Authentication/AuthenticationProvider.dart';
import 'Util/Provider/BaseProvider.dart';
import 'Util/Provider/Common/SearchableDialogProvider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await initTheme();

  // ErrorHandler.handleError();

  runApp(EasyLocalization(
      saveLocale: false,
      supportedLocales: const [
        LocalizationSetting.Korean,
        LocalizationSetting.English,
        LocalizationSetting.Vietnamese,
        LocalizationSetting.Spanish,
        LocalizationSetting.Thai,
        LocalizationSetting.Japanese,
        LocalizationSetting.Indonesian,
        LocalizationSetting.SimplifiedChinese,
        LocalizationSetting.TraditionalChinese,
      ],
      path: AssetRoute.Translations.route,
      fallbackLocale: LocalizationSetting.Korean,
      child: const MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

//  드래그 스크롤 허용?
  // MaterialApp(
  // scrollBehavior: MaterialScrollBehavior().copyWith(
  // dragDevices: {PointerDeviceKind.mouse, PointerDeviceKind.touch, PointerDeviceKind.stylus, PointerDeviceKind.unknown},
  // ),

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => BaseProvider(),
          ),
          ChangeNotifierProvider(
            create: (context) => AuthenticationProvider(),
          ),
          ChangeNotifierProvider(
            create: (context) => SearchableDialogProvider(),
          ),
        ],
        child: ScreenUtilInit(
          designSize: Size(ScreenSize.BaseScreenWidth.size, ScreenSize.BaseScreenHeight.size),

          ///화면을 기준으로 최소 텍스트 크기를 산출해 지정
          minTextAdapt: true,

          ///분할화면에서도 크기가 조정되도록 함
          splitScreenMode: true,

          builder: (context, child) {
            return MainSetting.initMainSetting(context: context);
          },
        ));
  }
}

class MainPage extends BaseState<MainPageCreator> {
  @override
  Widget build(BuildContext context) {
    return Menu.Authentication.instance();
  }
}

Future<void> initTheme() async {
  // Shared shared = Shared();
  // int? colorValue = await shared.getSeedColorValue();
  // if(colorValue != null){
  //   Color seedColor = Color(colorValue);
  //   themeData = ThemeData(
  //       colorScheme:
  //       ColorScheme.fromSeed(seedColor: seedColor, brightness: Brightness.light, primary: seedColor));
  // }else{
  //   themeData = Themes().dxTheme();
  // }
}
