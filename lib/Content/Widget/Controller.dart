import '/Content/Widget/Custom/Widget/Text/CustomText.dart';

import 'Custom/Widget/AppBar/AppBar.dart';
import 'Custom/Widget/Button/CustomButton.dart';
import 'Custom/Widget/CheckBox/CustomCheckBox.dart';
import 'Custom/Widget/Dialog/CustomDialog.dart';
import 'Custom/Widget/Divider/CustomDivider.dart';
import 'Custom/Widget/Header/CustomHeader.dart';
import 'Custom/Widget/ListItem/ListItem.dart';
import 'Custom/Widget/ListView/CustomListView.dart';
import 'Custom/Widget/Picker/CustomDatePicker.dart';
import 'Custom/Widget/SnackBar/CustomSnackBar.dart';
import 'Custom/Widget/System/ProgressIndicator.dart';
import 'Custom/Widget/TextField/CustomTextField.dart';
import 'Custom/Widget/Toggle/Toggle.dart';

///오직 편의성,직관성을 위함
///ex) Custom.button.basic();
///Custom된 위젯 카테고리를 직관적으로 알 수 있고,
///잘 알지 못하는 상황에서도 쉽게 찾아서 쓸 수 있도록 하기 위함
///굳이 사용하지 않고 인스턴스를 바로 생성해도 무방
///
///2024/6월 기준, Custom.diaglog.search의 경우 다른 타입과 다르게 showDialog메서드 안에서 사용해야함
class Custom {
  Custom._();

  static CustomAppBar get appBar => CustomAppBar();

  static CustomButton get button => CustomButton();

  static CustomCheckBox get checkBox => CustomCheckBox();

  static CustomDatePicker get datePicker => CustomDatePicker();

  static CustomDialog get dialog => CustomDialog();

  static CustomDivider get divider => CustomDivider();

  static CustomProgressIndicator get indicator => CustomProgressIndicator();

  static CustomListView get listView => CustomListView();

  static ListItem get listItem => ListItem();

  static CustomHeader get header => CustomHeader();

  /// dialog에서 사용시 pop우선순위를 결정하는 과정에서 오류가 많이 발생
  // static CustomMenuAnchor get menuAnchor => CustomMenuAnchor();

  static CustomSnackBar get snackBar => CustomSnackBar();
  static CustomText get text => CustomText();

  static CustomTextField get textField => CustomTextField();

  static Toggle get toggle => Toggle();
}
