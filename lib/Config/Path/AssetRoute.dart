enum AssetRoute{
  Icon(route: 'assets/icon'),
  Image(route: 'assets/image'),
  Translations(route: 'assets/translations'),
  ;
  const AssetRoute({required this.route});
  final String route;
}

enum AssetImageRoute{
  AppIcon(route: 'assets/icon/icon_message.png'),
  LoginBackground(route: 'assets/image/blue_grid_background.png'),
  DxLogo(route: 'assets/icon/DX_logo.svg'),
  DxLogoNonText(route: 'assets/icon/DX_logo_non_text.svg'),
  DxMonitoringLogo(route:'assets/image/dx_monitoring_logo.png'),
  SmartQMesIntro(route: 'assets/icon/ic_intro.svg'),
  SmartQMesLogo(route:'assets/image/smartq_mes_logo.png'),
  SmartQMesDashboardLogo(route:'assets/image/smartq_dashboard_logo.png'),
;
  const AssetImageRoute({required this.route});
  final String route;
}

enum AssetVideoRoute{
  AuthBackground(route:'assets/video/background.mp4'),
  AuthBackgroundMov(route:'assets/video/dxlogin_background.mov'),
  ;
  const AssetVideoRoute({required this.route});
  final String route;
}