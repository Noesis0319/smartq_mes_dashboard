///
/// 연결할 앱을 추가할 경우 AndroidManifest > queries > package 추가
///
enum AppController {
  MesMobile("com.pdm.mes_mobile", "https://play.google.com/store/apps/details?id=com.pdm.mes_mobile", "", ""),
  AnyDesk("com.anydesk.anydeskandroid", "", "", ""),
  AnyDeskCustom(
      "com.anydesk.anydeskandroid.custom",
      "https://my.anydesk.com/v2/api/v2/custom-clients/downloads/public/HNQHYTLEM15T/AnyDesk_Pdmtech_Client.apk",
      "",
      ""),
  ;

  const AppController(this._packageName, this._downLoadUrl, this._iosUrlScheme, this._appStore);

  final String _packageName;
  final String _downLoadUrl;
  final String _iosUrlScheme;
  final String _appStore;

  Uri getUri() {
    return Uri.parse(_downLoadUrl);
  }

  // download() async{
  //   launchUrl(getUri());
  //
  // }
  //
  // Future<bool> isInstalled() async {
  //   return await LaunchApp.isAppInstalled(androidPackageName: _packageName, iosUrlScheme: _iosUrlScheme);
  // }
  //
  // open(bool isInstalled) async {
  //   if (_downLoadUrl == "") {
  //     LaunchApp.openApp(
  //         androidPackageName: _packageName,
  //         iosUrlScheme: _iosUrlScheme,
  //         openStore: !isInstalled,
  //         appStoreLink: _appStore);
  //   } else {
  //     if (isInstalled) {
  //       LaunchApp.openApp(
  //         androidPackageName: _packageName,
  //         iosUrlScheme: _iosUrlScheme,
  //       );
  //     } else {
  //       launchUrl(getUri());
  //     }
  //   }
  // }
}
