part of 'Controller/Controller.dart';

extension Session on StorageController {
  void setInSession({
    required String key,
    required Object value,
  }) {
    ///임시 변환
    String value2 = value.toString();

    html.window.sessionStorage[key] = value2;
  }

  String? getFromSession({
    required String key,
    required PrimitiveType primitiveType,
  }) {
    switch(primitiveType){
      ///타입체크 후 알맞게 변환 후 리턴

      default:
        break;
    }
    return html.window.sessionStorage[key];
  }
}
