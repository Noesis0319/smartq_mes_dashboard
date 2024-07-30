import 'package:shared_preferences/shared_preferences.dart';
import "package:universal_html/html.dart" as html;
import '../../../../Api/Mes/MasterData/Model/Dto/Employee.dart';
import '../../../../Resource/Type/PrimitiveType.dart';
import '../../../Platform/PlatformHelper.dart';
import '../../Key/StorageKey.dart';
import '../../Type/StorageType.dart';

part '../SharedPreferences.dart';
part '../Session.dart';
part 'Part/AuthenticationPart.dart';
part 'Part/EtcPart.dart';

class StorageController {
  final Future<SharedPreferences> _sharedPreferences = SharedPreferences.getInstance();
  final PlatformHelper _platformHelper = PlatformHelper();

  void setData({
    StorageType? storageType,
    required StorageRoute sharedRoute,
    required StorageKey sharedKey,
    required Object value,
  }) {
    String key = sharedRoute.routeName + sharedKey.key;
    switch (storageType) {
      case StorageType.Local:
        setInShared(key: key, value: value);
        break;
      case StorageType.Session:
        setInSession(key: key, value: value);
        break;
      default:
        setInShared(key: key, value: value);
        break;
    }
  }

   getData({
    StorageType? storageType,
    required StorageRoute storageRoute,
    required StorageKey storageKey,
    required PrimitiveType primitiveType,
  }) async{
    String key = storageRoute.routeName + storageKey.key;
    switch (storageType) {
      case StorageType.Local:
        return await getFromShared(key: key, primitiveType: primitiveType);
      case StorageType.Session:
        return getFromSession(key: key, primitiveType: primitiveType);
      default:
        return await getFromShared(key: key, primitiveType: primitiveType);
    }
  }
}
