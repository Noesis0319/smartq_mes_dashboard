
import 'package:flutter/foundation.dart';
import 'package:talker/talker.dart';

class Logger {
  final _talker = Talker(
      settings: TalkerSettings(colors: {
    //TalkerLogType.httpResponse: AnsiPen()..blue(),
    //TalkerLogType.httpError: AnsiPen()..blue(),
    //TalkerLogType.httpRequest: AnsiPen()..blue(),
    TalkerLogType.debug: AnsiPen()..green(),
    //TalkerLogType.info: AnsiPen()..blue(),
    //TalkerLogType.error: AnsiPen()..blue(),
  }, ));

  void debug(Object? msg) {
    if (!kDebugMode) return;

    _talker.debug(msg);
  }

  void info(dynamic msg){
    if (!kDebugMode) return;

    _talker.info(msg);
  }

  void error(Object? msg) {
    if (!kDebugMode) return;

    _talker.error(msg);
  }

  void warning(Object? msg) {
    if (!kDebugMode) return;

    _talker.warning(msg);
  }
}
