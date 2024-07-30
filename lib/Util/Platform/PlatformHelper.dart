
import 'dart:io';

import 'package:flutter/foundation.dart';

import '../Storage/Type/StorageType.dart';

enum PlatformType{
  Web,
  Android,
  Ios,
  Linux,
  MacOS,
  Windows,
  None,
  ;
}


class PlatformHelper{
  StorageType getPlatformDefaultStorageType(){
    if(kIsWeb){
      return StorageType.Session;
    }else{
      return StorageType.Local;
    }
  }

  PlatformType getPlatformType(){
    if (kIsWeb) {
      return PlatformType.Web;
    } else if (Platform.isAndroid) {
      return PlatformType.Android;
    } else if (Platform.isIOS) {
      return PlatformType.Ios;
    } else if (Platform.isLinux) {
      return PlatformType.Linux;
    } else if (Platform.isMacOS) {
      return PlatformType.MacOS;
    } else if (Platform.isWindows) {
      return PlatformType.Windows;
    }else{
      return PlatformType.None;
    }
  }
}