

part of '../Dto/EmployeePermission.dart';

EmployeePermissionDto _$EmployeePermissionDtoFromJson(Map<String, dynamic> json) =>
    EmployeePermissionDto(
      (json[ApiJsonKey.EmployeeId.key] as num?)?.toInt(),
      json[ApiJsonKey.Menu.key] as String?,
      json[ApiJsonKey.CanCreate.key] as bool?,
      json[ApiJsonKey.CanRead.key] as bool?,
      json[ApiJsonKey.CanUpdate.key] as bool?,
      json[ApiJsonKey.CanDelete.key] as bool?,
    );

Map<String, dynamic> _$EmployeePermissionDtoToJson(EmployeePermissionDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(ApiJsonKey.EmployeeId.key, instance._employeeId);
  writeNotNull(ApiJsonKey.Menu.key, instance._menu);
  writeNotNull(ApiJsonKey.CanCreate.key, instance._canCreate);
  writeNotNull(ApiJsonKey.CanRead.key, instance._canRead);
  writeNotNull(ApiJsonKey.CanUpdate.key, instance._canUpdate);
  writeNotNull(ApiJsonKey.CanDelete.key, instance._canDelete);
  return val;
}
