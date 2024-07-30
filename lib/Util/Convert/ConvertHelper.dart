
import 'package:easy_localization/easy_localization.dart';
import '/Content/Widget/BaseExtension/DateTime/TimeCalculate.dart';

import 'Type/ConvertDataType.dart';

int _minuteToSeconds = 60;
int _hourToSeconds = _minuteToSeconds * 60;
class ConvertHelper {
}

/// yyyy-MM-ddThh:mm:ss
class DateConvertHelper {
  static String getToday([DateConvertType dateConvertType = DateConvertType.DefaultType]) {
    switch (dateConvertType) {
      default:
        return DateFormat('yyyy-MM-dd').format(DateTime.now());
    }
  }

  static String getYesterday([DateConvertType dateConvertType = DateConvertType.DefaultType]) {
    switch (dateConvertType) {
      default:
        return DateFormat('yyyy-MM-dd').format(DateTime.now().subtract(const Duration(days: 1)));
    }
  }

  static String getOneWeekAgo([DateConvertType dateConvertType = DateConvertType.DefaultType]) {
    switch (dateConvertType) {
      default:
        return DateFormat('yyyy-MM-dd').format(DateTime.now().subtract(const Duration(days: 7)));
    }
  }

  static String convertDateTimeToDateString(DateTime dateTime,
      [DateConvertType convertType = DateConvertType.DefaultType]) {
    switch (convertType) {
      case DateConvertType.YMd:
        return DateFormat('yy-MM-dd').format(dateTime);
      case DateConvertType.Md:
        return DateFormat.Md().format(dateTime);
      case DateConvertType.Hm:
        return DateFormat.Hm().format(dateTime);
      default:
        return DateFormat('yyyy-MM-dd').format(dateTime);
    }
  }

  static DateTime revertDateStringToDateTime(String dateString,
      [DateConvertType convertType = DateConvertType.DefaultType]) {
    switch (convertType) {
      case DateConvertType.Md:
        return DateFormat('MM-dd').parse(dateString);
      default:
        return DateFormat('yyyy-MM-dd').parse(dateString);
    }
  }

  static extractDateString(String dateString, [DateConvertType convertType = DateConvertType.DefaultType]) {
    DateTime dateTime = DateTime.parse(dateString);

    return convertDateTimeToDateString(dateTime, convertType);
  }

  static String elapsedTime(Object? target) {
    if (target == null) return "";

    DateTime dateTime;
    if (target is String) {
      dateTime = DateTime.parse(target.toString());
    } else {
      dateTime = target as DateTime;
    }

    return dateTime.timeAgo();
  }

  static String getFirstDayOfMonth() {
    DateTime now = DateTime.now();
    return DateFormat('yyyy-MM-dd').format(DateTime(now.year, now.month, 1));
  }

  static String getLastDayOfMonth() {
    DateTime now = DateTime.now();
    return DateFormat('yyyy-MM-dd').format(DateTime(now.year, now.month, 0));
  }

  static String convertSecond(int second) {
    if (second == 0) return "00 : 00 : 00";

    int hour = second ~/ _hourToSeconds; //(second / 3600).toInt();
    int minute = (second % _hourToSeconds) != 0 ? (second % _hourToSeconds) ~/ _minuteToSeconds : 0;
    second = second % _minuteToSeconds;
    String hourString = hour != 0 ? "${convertTimeToString(hour)} : " : "";
    String minuteString = minute != 0 ? "${convertTimeToString(minute)} : " : "00 : ";
    return hourString + minuteString + convertTimeToString(second);
  }

  static String convertTimeToString(int time) {
    if (time == 0) {
      return "00";
    } else if (time >= 10) {
      return time.toString();
    } else {
      return "0$time";
    }
  }
}



