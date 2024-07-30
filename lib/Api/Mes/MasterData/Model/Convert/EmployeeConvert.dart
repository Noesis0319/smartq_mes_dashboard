part of '../Dto/Employee.dart';

EmployeeDto _$EmployeeDtoFromJson(Map<String, dynamic> json) => EmployeeDto(
      (json[ApiJsonKey.Id.key] as num?)?.toInt(),
      (json[ApiJsonKey.FactoryId.key] as num?)?.toInt(),
      json[ApiJsonKey.FactoryCode.key] as String?,
      json[ApiJsonKey.FactoryName.key] as String?,
      (json[ApiJsonKey.DepartmentId.key] as num?)?.toInt(),
      json[ApiJsonKey.DepartmentCode.key] as String?,
      json[ApiJsonKey.DepartmentName.key] as String?,
      json[ApiJsonKey.DepartmentMemo.key] as String?,
      json[ApiJsonKey.Code.key] as String?,
      json[ApiJsonKey.Name.key] as String?,
      json[ApiJsonKey.Position.key] as String?,
      json[ApiJsonKey.ContractType.key] as String?,
      json[ApiJsonKey.Memo.key] as String?,
      json[ApiJsonKey.UseLogin.key] as bool?,
      json[ApiJsonKey.LoginId.key] as String?,
      json[ApiJsonKey.LoginPassword.key] as String?,
      json[ApiJsonKey.LoginTag.key] as String?,
      json[ApiJsonKey.PhoneNumber.key] as String?,
      json[ApiJsonKey.Email.key] as String?,
      json[ApiJsonKey.MessengerId.key] as String?,
      json[ApiJsonKey.IsAdmin.key] as bool?,
      json[ApiJsonKey.HasMultiFactory.key] as bool?,
      (json[ApiJsonKey.Permissions.key] as List<dynamic>?)
          ?.map((e) => EmployeePermissionDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$EmployeeDtoToJson(EmployeeDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(ApiJsonKey.Id.key, instance._id);
  writeNotNull(ApiJsonKey.FactoryId.key, instance._factoryId);
  writeNotNull(ApiJsonKey.FactoryCode.key, instance._factoryCode);
  writeNotNull(ApiJsonKey.FactoryName.key, instance._factoryName);
  writeNotNull(ApiJsonKey.DepartmentId.key, instance._departmentId);
  writeNotNull(ApiJsonKey.DepartmentCode.key, instance._departmentCode);
  writeNotNull(ApiJsonKey.DepartmentName.key, instance._departmentName);
  writeNotNull(ApiJsonKey.DepartmentMemo.key, instance._departmentMemo);
  writeNotNull(ApiJsonKey.Code.key, instance._code);
  writeNotNull(ApiJsonKey.Name.key, instance._name);
  writeNotNull(ApiJsonKey.Position.key, instance._position);
  writeNotNull(ApiJsonKey.ContractType.key, instance._contractType);
  writeNotNull(ApiJsonKey.Memo.key, instance._memo);
  writeNotNull(ApiJsonKey.UseLogin.key, instance._useLogin);
  writeNotNull(ApiJsonKey.LoginId.key, instance._loginId);
  writeNotNull(ApiJsonKey.LoginPassword.key, instance._loginPassword);
  writeNotNull(ApiJsonKey.LoginTag.key, instance._loginTag);
  writeNotNull(ApiJsonKey.PhoneNumber.key, instance._phoneNumber);
  writeNotNull(ApiJsonKey.Email.key, instance._email);
  writeNotNull(ApiJsonKey.MessengerId.key, instance._messengerId);
  writeNotNull(ApiJsonKey.IsAdmin.key, instance._isAdmin);
  writeNotNull(ApiJsonKey.HasMultiFactory.key, instance._hasMultiFactory);
  writeNotNull(ApiJsonKey.Permissions.key, instance._permissions);
  return val;
}
