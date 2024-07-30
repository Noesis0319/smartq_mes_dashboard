
import 'dart:convert';

const String _dataKey =  "Data";

class ResponseParsing {
  String objectToString({required Object response}) {
    return "";
  }

  Map<String, dynamic> getValue({required String responseBody}) {
    Map<String, dynamic> jsonData = jsonDecode(responseBody);
    Map<String, dynamic> data = jsonData[_dataKey];
    return data;
  }

  String getData({required String responseBody}) {
    Map<String, dynamic> jsonData = jsonDecode(responseBody);
    String data = jsonData[_dataKey];
    return data;
  }

  List getValueList({required String responseBody}) {
    Map<String, dynamic> jsonData = jsonDecode(responseBody);
    List values = [];
    if (jsonData[_dataKey] != null) {
      values = jsonData[_dataKey];
      return values;
    } else {
      return values;
    }
  }


  String getValueByKey({required String responseBody,required  String key}) {
    Map<String, dynamic> jsonData = jsonDecode(responseBody);
    Map<String, dynamic> data = jsonData[_dataKey];

    return data[key];
  }
}
