
import '../../../../Config/Mixin/CommonConstants.dart';
import '../Style/Dimen/Dimen.dart';

///[CustomBase]]──┬──[CustomWidget]
///               │
///               ├──[CustomStyle]

///Widget, Style 모두 사용
class CustomBase with CommonConstants {


  /// 값인 null 인 경우 처리
  /// safe : 지정된 값 혹은 default 리턴
  double getSafeTextSize({
    required double? textSize,
    double? safeTextSize,
  }) {
    return (textSize ?? (safeTextSize ?? TextDimen.Basic.getSize()));
  }

// WidgetStateProperty getNullAbleWidgetStateProperty({required dynamic value}) {
//   return WidgetStateProperty.resolveWith((states) => value,);
//
//   if(value == null){
//     return null;
//   }else{
//
//   }
// }
}
