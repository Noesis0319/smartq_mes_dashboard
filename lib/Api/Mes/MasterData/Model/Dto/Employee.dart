
import '../../../../Util/Helper/Parsing/ApiJsonKey.dart';
import 'EmployeePermission.dart';

part '../Convert/EmployeeConvert.dart';


class EmployeeDto{
  int? _id;

  int? _factoryId;

  String? _factoryCode;

  String? _factoryName;

  int? _departmentId;

  String? _departmentCode;

  String? _departmentName;

  String? _departmentMemo;

  String? _code;

  String? _name;

  String? _position;

  String? _contractType;

  String? _memo;

  bool? _useLogin;

  String? _loginId;

  String? _loginPassword;

  String? _loginTag;

  String? _phoneNumber;

  String? _email;

  String? _messengerId;

  bool? _isAdmin;

  bool? _hasMultiFactory;

  List<EmployeePermissionDto>? _permissions;

  EmployeeDto(
      this._id,
      this._factoryId,
      this._factoryCode,
      this._factoryName,
      this._departmentId,
      this._departmentCode,
      this._departmentName,
      this._departmentMemo,
      this._code,
      this._name,
      this._position,
      this._contractType,
      this._memo,
      this._useLogin,
      this._loginId,
      this._loginPassword,
      this._loginTag,
      this._phoneNumber,
      this._email,
      this._messengerId,
      this._isAdmin,
      this._hasMultiFactory,
      this._permissions
      );


  int get id => _id!;

  int get factoryId => _factoryId!;

  String get factoryCode => _factoryCode!;

  String get factoryName => _factoryName!;

  int get departmentId => _departmentId!;

  String get departmentCode => _departmentCode!;

  String get departmentName => _departmentName!;

  String get departmentMemo => _departmentMemo?? "";

  String get code => _code?? "";

  String get name => _name!;

  String get position => _position?? "";

  String get contractType => _contractType?? "";

  String get memo => _memo?? "";

  bool get useLogin => _useLogin?? false;

  String get loginId => _loginId!;

  String get loginPassword => _loginPassword!;

  String? get loginTag => _loginTag;

  String? get phoneNumber => _phoneNumber;

  String? get email => _email;

  String? get messengerId => _messengerId;

  bool get isAdmin => _isAdmin?? false;

  bool get hasMultiFactory => _hasMultiFactory?? false;

  List<EmployeePermissionDto> get permissions => _permissions?? [];


  factory EmployeeDto.fromJson(Map<String, dynamic> json) =>
      _$EmployeeDtoFromJson(json);
  Map<String, dynamic> toJson()=>_$EmployeeDtoToJson(this);
}