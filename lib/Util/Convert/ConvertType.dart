class TypeConvertHelper {
  static  dynamicToInt(dynamic value) {
    if (value == null) {
      return;
    } else if (value is String) {
      return int.parse(value);
    } else {
      return value;
    }
  }


}
