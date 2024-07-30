

import 'package:flutter/cupertino.dart';

import '../../Config/Mixin/CommonObject.dart';

class BaseProvider extends ChangeNotifier with CommonObject{
  int currentMillis = 0;

  void setCurrentMillis({required int millis}){
    currentMillis = millis;

    notifyListeners();
  }
}