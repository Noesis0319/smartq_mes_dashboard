part of '../Parameter/AddCall.dart';

AddCallParameter _$AddCallParameterFromJson(Map<String, dynamic> json) => AddCallParameter(
      (json[ApiJsonKey.MachineId.key] as num?)?.toInt(),
      (json[ApiJsonKey.CallCodeId.key] as num?)?.toInt(),
      (json[ApiJsonKey.ManagerIds.key] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      json[ApiJsonKey.Memo.key] as String?,
    );

Map<String, dynamic> _$AddCallParameterToJson(AddCallParameter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(ApiJsonKey.MachineId.key, instance._machineId);
  writeNotNull(ApiJsonKey.CallCodeId.key, instance._callCodeId);
  writeNotNull(ApiJsonKey.ManagerIds.key, instance._managerIds);
  writeNotNull(ApiJsonKey.Memo.key, instance._memo);
  return val;
}
