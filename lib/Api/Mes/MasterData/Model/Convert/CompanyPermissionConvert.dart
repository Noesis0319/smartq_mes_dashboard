

part of '../Dto/CompanyPermission.dart';

CompanyPermissionDto _companyPermissionDtoFromJson(Map<String, dynamic> json) =>
    CompanyPermissionDto(
      json[ApiJsonKey.MenuName.key] as String?,
      json[ApiJsonKey.MenuGroup.key] as String?,
      json[ApiJsonKey.Granted.key] as bool?,
    );

Map<String, dynamic> _companyPermissionDtoToJson(CompanyPermissionDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }
  writeNotNull(ApiJsonKey.MenuName.key, instance._menuName);
  writeNotNull(ApiJsonKey.MenuGroup.key, instance._menuGroup);
  writeNotNull(ApiJsonKey.Granted.key, instance._granted);
  return val;

}


