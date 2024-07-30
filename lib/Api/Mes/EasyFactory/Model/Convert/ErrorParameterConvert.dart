part of '../Parameter/ErrorParameter.dart';


Map<String, dynamic> _errorParameterToJson(ErrorParameter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(ApiJsonKey.MachineNumber.key, instance._machineNumber);
  writeNotNull(ApiJsonKey.FieldName.key, instance._fieldName);
  writeNotNull(ApiJsonKey.Message.key, instance._message);
  writeNotNull(ApiJsonKey.Occurred.key, instance._occurred);
  writeNotNull(ApiJsonKey.PV.key, instance._pV);
  writeNotNull(ApiJsonKey.SV.key, instance._sV);
  writeNotNull(ApiJsonKey.UB.key, instance._uB);
  writeNotNull(ApiJsonKey.LB.key, instance._lB);
  writeNotNull(ApiJsonKey.RawData.key, instance._rawData);
  return val;
}
