
import '../../Util/Convert/ConvertHelper.dart';
import '../../Util/Log/LogController.dart';
import '../../Util/Platform/PlatformHelper.dart';
import '../../Util/Storage/Base/Controller/Controller.dart';
import '../Theme/DxTheme.dart';

///순환참조에 주의,
///필요한 경우 mixin 을 세분화,
///최상위 class 에서는 사용 자제(순환참조의 위험이 큼),
mixin CommonObject {
  final StorageController storage = StorageController();
  final PlatformHelper platformHelper = PlatformHelper();
  final DXTheme themes = DXTheme();
  final ConvertHelper convertHelper = ConvertHelper();
  final DateConvertHelper dateConvertHelper = DateConvertHelper();
  final Logger logger = Logger();
}
