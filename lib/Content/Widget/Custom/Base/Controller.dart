

import '../Widget/AppBar/AppBar.dart';
import '../Widget/Button/CustomButton.dart';
import '../Widget/CheckBox/CustomCheckBox.dart';
import '../Widget/Dialog/CustomDialog.dart';
import '../Widget/Divider/CustomDivider.dart';
import '../Widget/DropDown/CustomDropDown.dart';
import '../Widget/Header/CustomHeader.dart';
import '../Widget/ListItem/ListItem.dart';
import '../Widget/ListView/CustomListView.dart';
import '../Widget/Picker/CustomDatePicker.dart';
import '../Widget/ScrollView/SingleChildScrollView.dart';
import '../Widget/SnackBar/CustomSnackBar.dart';
import '../Widget/System/ProgressIndicator.dart';
import '../Widget/Text/CustomText.dart';
import '../Widget/TextField/CustomTextField.dart';
import '../Widget/Toggle/Toggle.dart';

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

  static CustomDropDown get dropDown => CustomDropDown();

  static CustomProgressIndicator get indicator => CustomProgressIndicator();

  static CustomListView get listView => CustomListView();

  static ListItem get listItem => ListItem();

  static CustomHeader get header => CustomHeader();

  static CustomSnackBar get snackBar => CustomSnackBar();

  static CustomText get text => CustomText();

  static CustomTextField get textField => CustomTextField();

  static CustomSingleChildScrollView get singleChildScrollView => CustomSingleChildScrollView();

  static Toggle get toggle => Toggle();
}
