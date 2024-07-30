

import 'dart:ui';

import 'package:flutter/material.dart';

import '../GlobalKey/GlobalKey.dart';
import 'ErrorView.dart';

class ErrorHandler{
  /// ++ Web 인 경우 , 화면 다르게
  static handleError() {
    FlutterError.onError = (FlutterErrorDetails details) {
      Navigator.of(MainGlobalKey.mainKey.currentContext!).push(MaterialPageRoute(builder: (context) => FlutterErrorViewCreator(details: details,)));
    };
  }

  ///platform 오류(ex : MethodChannel 사용오류)만 다루고 싶은 경우 사용.
  ///FlutterError.onError 만 사용하는 것을 권장
  static handlePlatformDispatcherError(){
    PlatformDispatcher.instance.onError = (error, stack) {
      /// 처리
      return true;
    };
  }
}