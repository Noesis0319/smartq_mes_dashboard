
part of '../Dto/DowntimeRecordSummary.dart';

DowntimeRecordSummaryDto _$DowntimeRecordSummaryDtoFromJson(
        Map<String, dynamic> json) =>
    DowntimeRecordSummaryDto(
      (json[ApiJsonKey.FactoryId.key] as num?)?.toInt(),
      json[ApiJsonKey.FactoryCode.key] as String?,
      json[ApiJsonKey.FactoryName.key] as String?,
      (json[ApiJsonKey.RecordId.key] as num?)?.toInt(),
      json[ApiJsonKey.StartTime.key] as String?,
      json[ApiJsonKey.EndTime.key] as String?,
      json[ApiJsonKey.Duration.key] as String?,
      json[ApiJsonKey.Memo.key] as String?,
      (json[ApiJsonKey.ReasonId.key] as num?)?.toInt(),
      json[ApiJsonKey.ReasonCode.key] as String?,
      json[ApiJsonKey.ReasonName.key] as String?,
      (json[ApiJsonKey.CausativeMachineId.key] as num?)?.toInt(),
      json[ApiJsonKey.CausativeMachineCode.key] as String?,
      json[ApiJsonKey.CausativeMachineName.key] as String?,
      json[ApiJsonKey.DowntimeType.key] as String?,
      $enumDecodeNullable(_$DowntimeLevelEnumMap, json[ApiJsonKey.DowntimeLevel.key]),
      (json[ApiJsonKey.OrderId.key] as num?)?.toInt(),
      $enumDecodeNullable(_$ProcessTypeEnumMap, json[ApiJsonKey.ProcessType.key]),
      (json[ApiJsonKey.LineId.key] as num?)?.toInt(),
      json[ApiJsonKey.LineCode.key] as String?,
      json[ApiJsonKey.LineName.key] as String?,
      (json[ApiJsonKey.MachineId.key] as num?)?.toInt(),
      json[ApiJsonKey.MachineCode.key] as String?,
      json[ApiJsonKey.MachineName.key] as String?,
    );

Map<String, dynamic> _$DowntimeRecordSummaryDtoToJson(
    DowntimeRecordSummaryDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(ApiJsonKey.FactoryId.key, instance._factoryId);
  writeNotNull(ApiJsonKey.FactoryCode.key, instance._factoryCode);
  writeNotNull(ApiJsonKey.FactoryName.key, instance._factoryName);
  writeNotNull(ApiJsonKey.RecordId.key, instance._recordId);
  writeNotNull(ApiJsonKey.StartTime.key, instance._startTime);
  writeNotNull(ApiJsonKey.EndTime.key, instance._endTime);
  writeNotNull(ApiJsonKey.Duration.key, instance._duration);
  writeNotNull(ApiJsonKey.Memo.key, instance._memo);
  writeNotNull(ApiJsonKey.ReasonId.key, instance._reasonId);
  writeNotNull(ApiJsonKey.ReasonCode.key, instance._reasonCode);
  writeNotNull(ApiJsonKey.ReasonName.key, instance._reasonName);
  writeNotNull(ApiJsonKey.CausativeMachineId.key, instance._causativeMachineId);
  writeNotNull(ApiJsonKey.CausativeMachineCode.key, instance._causativeMachineCode);
  writeNotNull(ApiJsonKey.CausativeMachineName.key, instance._causativeMachineName);
  writeNotNull(ApiJsonKey.DowntimeType.key, instance._downtimeType);
  writeNotNull(ApiJsonKey.DowntimeLevel.key, instance._downtimeLevel);
  writeNotNull(ApiJsonKey.OrderId.key, instance._orderId);
  writeNotNull(ApiJsonKey.ProcessType.key, instance._processType);
  writeNotNull(ApiJsonKey.LineId.key, instance._lineId);
  writeNotNull(ApiJsonKey.LineCode.key, instance._lineCode);
  writeNotNull(ApiJsonKey.LineName.key, instance._lineName);
  writeNotNull(ApiJsonKey.MachineId.key, instance._machineId);
  writeNotNull(ApiJsonKey.MachineCode.key, instance._machineCode);
  writeNotNull(ApiJsonKey.MachineName.key, instance._machineName);
  return val;
}

const _$ProcessTypeEnumMap = {
  ProcessType.Molding: 'Molding',
  ProcessType.Assembly: 'Assembly',
  ProcessType.Handwork: 'Handwork',
  ProcessType.Inspection: 'Inspection',
  ProcessType.Press: 'Press',
  ProcessType.Cutting: 'Cutting',
  ProcessType.Painting: 'Painting',
  ProcessType.Blending: 'Blending',
  ProcessType.Custom: 'Custom',
};


const _$DowntimeLevelEnumMap = {
  DowntimeLevel.High: 'High',
  DowntimeLevel.Low: 'Low',
};
