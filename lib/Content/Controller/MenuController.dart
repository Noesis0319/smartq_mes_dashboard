
import 'package:flutter/material.dart';

import 'StateController.dart';

/// ++ 권한체크가 필요하게 될 경우, MesServerMenus 에 해당하는 권한 체크
enum Menu {
  MainPage,
  IntroAuth,
  Authentication,
  StandardDashboard,
  ;

  void pushNamed({required BuildContext context}) {
    Navigator.pushNamed(context, name);
  }

  void pushReplacementNamed({required BuildContext context}) {
    Navigator.pushReplacementNamed(context, name);
  }

  void pushNamedAndRemoveUntil({required BuildContext context}) {
    Navigator.pushNamedAndRemoveUntil(context, name, (route) => false);
  }

  Widget instance(){
    switch (this) {
      case MainPage:
        return const MainPageCreator();
      case IntroAuth:
        return const IntroAuthCreator();
      case Authentication :
        return const AuthenticationCreator();
      case StandardDashboard:
        return const StandardDashboardCreator();
      default:
        return const MainPageCreator();
    }
  }
}



class MenuManager {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    String route = settings.name ?? "";

    Menu menu = Menu.values.firstWhere((element) => element.name == route,);

    return MaterialPageRoute(builder: (context) => menu.instance());
  }
}

enum StateType {
  Stateful,
  Stateless,
  ;
}
