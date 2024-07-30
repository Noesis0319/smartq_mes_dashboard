part of 'Controller/Controller.dart';
extension Shared on StorageController {
  void setInShared({
    required String key,
    required Object value,
  }) {
    if (value is String) {
      _sharedPreferences.then((shared) => shared.setString(key, value));
    } else if (value is bool) {
      _sharedPreferences.then((shared) => shared.setBool(key, value));
    } else if (value is int) {
      _sharedPreferences.then((shared) => shared.setInt(key, value));
    } else if (value is double) {
      _sharedPreferences.then((shared) => shared.setDouble(key, value));
    }
  }

  Future getFromShared({
    required String key,
    required PrimitiveType primitiveType,
  }) async {
    bool isContains = await isContain(key: key);
    if (!isContains) {
      return;
    }
    switch (primitiveType) {
      case PrimitiveType.String:
        return await _sharedPreferences.then((shared) => shared.getString(key));
      case PrimitiveType.Bool:
        return await _sharedPreferences.then((shared) => shared.getBool(key));
      case PrimitiveType.Int:
        return await _sharedPreferences.then((shared) => shared.getInt(key));
      case PrimitiveType.Double:
        return await _sharedPreferences.then((shared) => shared.getDouble(key));
      default:
        return await _sharedPreferences.then((shared) => shared.get(key));
      //StringList
    }
  }

  Future<bool> isContain({required String key}) async {
    bool isContain = await _sharedPreferences.then((shared) => shared.containsKey(key));
    return isContain;
  }

  void removeShared({required StorageRoute sharedRoute, required StorageKey sharedKey}) {
    String key = sharedRoute.routeName + sharedKey.key;

    _sharedPreferences.then((shared) => shared.remove(key));
  }
}
