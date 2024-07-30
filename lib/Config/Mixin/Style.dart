
import '../../Content/Widget/Custom/Style/CustomButtonStyle.dart';
import '../../Content/Widget/Custom/Style/CustomDecoration.dart';
import '../../Content/Widget/Custom/Style/CustomInputDecoration.dart';
import '../../Content/Widget/Custom/Style/CustomMenuStyle.dart';
import '../../Content/Widget/Custom/Style/CustomShapeBorder.dart';
import '../../Content/Widget/Custom/Style/CustomTextStyle.dart';
import '../../Content/Widget/Custom/Style/Dimen/BoxConstraints.dart';
import '../../Content/Widget/Custom/Style/Dimen/Radius.dart';

///혼동 방지를 위해 Style 관련 클래스의 이름은 Custom + 최상위 클래스 이름으로 정한다 (ex : Custom + ShapeBorder 안에서 자식 클래스인 Border, OutlineInputBorder 등을 리턴한다)
///요구하는 스타일의 최상위 클래스를 확인 후 해당 클래스 이름에 맞는 Custom 에서 원하는 메서드 호출
mixin StyleMixin{
  final CustomShapeBorder customShapeBorder = CustomShapeBorder();
  final CustomDecoration customDecoration = CustomDecoration();
  final CustomTextStyle customTextStyle = CustomTextStyle();
  final CustomButtonStyle customButtonStyle = CustomButtonStyle();
  final CustomMenuStyle customMenuStyle = CustomMenuStyle();
  final CustomInputDecoration customInputDecoration = CustomInputDecoration();
}

mixin DimenMixin{
  final CustomRadius customRadius = CustomRadius();
  final CustomConstraints constraints = CustomConstraints();
}

