


import '../../../../Util/Helper/Parsing/ApiJsonKey.dart';

part '../Convert/EmployeePermissionConvert.dart';

class EmployeePermissionDto {
  int? _employeeId;
  String? _menu;
  bool? _canCreate;
  bool? _canRead;
  bool? _canUpdate;
  bool? _canDelete;

  EmployeePermissionDto(this._employeeId, this._menu, this._canCreate, this._canRead,
      this._canUpdate, this._canDelete);

  bool get canDelete => _canDelete?? false;

  bool get canUpdate => _canUpdate?? false;

  bool get canRead => _canRead?? false;

  bool get canCreate => _canCreate?? false;

  String get menu => _menu?? "";

  int get employeeId => _employeeId!;

  factory EmployeePermissionDto.fromJson(Map<String, dynamic> json) =>
      _$EmployeePermissionDtoFromJson(json);
  Map<String, dynamic> toJson()=>_$EmployeePermissionDtoToJson(this);
}
