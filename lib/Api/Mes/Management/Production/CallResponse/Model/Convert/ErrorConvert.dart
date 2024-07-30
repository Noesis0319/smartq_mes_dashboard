part of '../Dto/Error.dart';

ErrorDto _errorDtoFromJson(Map<String, dynamic> json) => ErrorDto(
      json[ApiJsonKey.Id.key],
      json[ApiJsonKey.FieldName.key] as String?,
      json[ApiJsonKey.FieldCaption.key] as String?,
      json[ApiJsonKey.FieldUnit.key] as String?,
      json[ApiJsonKey.Message.key] as String?,
      json[ApiJsonKey.Occurred.key] as String?,
      json[ApiJsonKey.Handled.key] as bool?,
      json[ApiJsonKey.PV.key],
      json[ApiJsonKey.SV.key],
      json[ApiJsonKey.UB.key],
      json[ApiJsonKey.LB.key],
      json[ApiJsonKey.MachineId.key],
      json[ApiJsonKey.MachineNumber.key],
      json[ApiJsonKey.LineNumber.key],
    );

Map<String, dynamic> _errorDtoToJson(ErrorDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }
  writeNotNull(ApiJsonKey.Id.key, instance._id);
  writeNotNull(ApiJsonKey.FieldName.key, instance._fieldName);
  writeNotNull(ApiJsonKey.FieldCaption.key, instance._fieldCaption);
  writeNotNull(ApiJsonKey.FieldUnit.key, instance._fieldUnit);
  writeNotNull(ApiJsonKey.Message.key, instance._message);
  writeNotNull(ApiJsonKey.Occurred.key, instance._occurred);
  writeNotNull(ApiJsonKey.Handled.key, instance._handled);
  writeNotNull(ApiJsonKey.PV.key, instance._pV);
  writeNotNull(ApiJsonKey.SV.key, instance._sV);
  writeNotNull(ApiJsonKey.UB.key, instance._uB);
  writeNotNull(ApiJsonKey.LB.key, instance._lB);
  writeNotNull(ApiJsonKey.MachineId.key, instance._machineId);
  writeNotNull(ApiJsonKey.MachineNumber.key, instance._machineNumber);
  writeNotNull(ApiJsonKey.LineNumber.key, instance._lineNumber);
  return val;
}
