
import 'package:flutter/cupertino.dart';

import '../../Config/Mixin/CommonObject.dart';
import '../../Config/Mixin/Style.dart';
import '../../Main.dart';
import '../Menu/!Base/View/IntroAuth.dart';
import '../Menu/Authentication/View/Authentication.dart';
import '../Menu/DashBoard/View/StandardDashboard.dart';

abstract class BaseStateless extends StatelessWidget with CommonObject,StyleMixin{
  // final StorageController storage = StorageController();
  // final Themes themes = Themes();
  // final Logger logger = Logger();
  // late BuildContext context;
  //
  // BaseStateless({super.key});

}

abstract class BaseState<T extends StatefulWidget> extends State<T> with CommonObject, StyleMixin {
  // final StorageController storage = StorageController();
  // final Themes themes = Themes();
  // final Logger logger = Logger();



  ///Test 필요
  ///extension 에서 setState 경고문 대응
  safeSetState({Function()? function}){
    setState(() {
      function;
    });
  }
}
class MainPageCreator extends StatefulWidget{
  const MainPageCreator({super.key});
  @override
  State createState() => MainPage();
}

class IntroAuthCreator extends StatefulWidget{
  const IntroAuthCreator({super.key});

  @override
  State createState() => IntroAuth();
}

class AuthenticationCreator extends StatefulWidget {
  const AuthenticationCreator({super.key});

  @override
  State createState() => Authentication();
}

class StandardDashboardCreator extends StatefulWidget {
  const StandardDashboardCreator({super.key});

  @override
  State createState() => StandardDashboard();
}



