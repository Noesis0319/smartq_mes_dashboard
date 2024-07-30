

import 'package:json_annotation/json_annotation.dart';

import '../../../../../../Util/Helper/Parsing/ApiJsonKey.dart';
import '../../../../../MasterData/Model/Type/DowntimeLevel.dart';
import '../../../../../MasterData/Model/Type/ProcessType.dart';
import 'DowntimeMachine.dart';

part '../Convert/DowntimeRecordConvert.dart';

class DowntimeRecordDto {
  /// <summary>
  /// 공장Id
  /// </summary>
  int? _factoryId;

  /// <summary>
  /// 공장코드
  /// </summary>
  String? _factoryCode;

  /// <summary>
  /// 공장명
  /// </summary>
  String? _factoryName;

  int? _recordId;

  String? _startTime;

  String? _endTime;

  String? _duration;

  String? _memo;

  int? _reasonId;

  String? _reasonCode;

  String? _reasonName;

  /// <summary>
  /// 비가동 원인 설비
  /// </summary>
  int? _causativeMachineId;

  String? _causativeMachineCode;

  String? _causativeMachineName;

  /// <summary>
  /// 비가동 유형
  /// </summary>
  String? _downtimeType;

  /// <summary>
  /// 비가동 수준
  /// </summary>
  DowntimeLevel? _downtimeLevel;

  /// <summary>
  /// 지시Id
  /// </summary>
  int? _orderId;

  /// <summary>
  /// 공정
  /// </summary>
  ProcessType? _processType;

  /// <summary>
  /// 비가동 등록 설비
  /// </summary>
  DowntimeMachineDto? _downtimeMachine;

  /// <summary>
  /// 비가동등록설비 Id
  /// </summary>
  int? _downtimeMachineId;

  /// <summary>
  /// 라인Id
  /// </summary>
  int? _downtimeLineId;

  /// <summary>
  /// 라인코드
  /// </summary>
  String? _downtimeLineCode;

  /// <summary>
  /// 라인명
  /// </summary>
  String? _downtimeLineName;

  /// <summary>
  /// 설비 Id
  /// </summary>
  int? _machineId;

  /// <summary>
  /// 비가동설비코드
  /// </summary>
  String? _downtimeMachineCode;

  /// <summary>
  /// 비가동설비명
  /// </summary>
  String? _downtimeMachineName;


  DowntimeRecordDto(
      this._factoryId,
      this._factoryCode,
      this._factoryName,
      this._recordId,
      this._startTime,
      this._endTime,
      this._duration,
      this._memo,
      this._reasonId,
      this._reasonCode,
      this._reasonName,
      this._causativeMachineId,
      this._causativeMachineCode,
      this._causativeMachineName,
      this._downtimeType,
      this._downtimeLevel,
      this._orderId,
      this._processType,
      this._downtimeMachine,
      this._downtimeMachineId,
      this._downtimeLineId,
      this._downtimeLineCode,
      this._downtimeLineName,
      this._machineId,
      this._downtimeMachineCode,
      this._downtimeMachineName);

  factory DowntimeRecordDto.fromJson(Map<String, dynamic> json) => _$DowntimeRecordDtoFromJson(json);

  Map<String, dynamic> toJson() => _$DowntimeRecordDtoToJson(this);

  String? get downtimeMachineName => _downtimeMachineName;

  String? get downtimeMachineCode => _downtimeMachineCode;

  int? get machineId => _machineId;

  String? get downtimeLineName => _downtimeLineName;

  String? get downtimeLineCode => _downtimeLineCode;

  int? get downtimeLineId => _downtimeLineId;

  int? get downtimeMachineId => _downtimeMachineId;

  DowntimeMachineDto? get downtimeMachine => _downtimeMachine;

  ProcessType? get processType => _processType;

  int? get orderId => _orderId;

  DowntimeLevel? get downtimeLevel => _downtimeLevel;

  String? get downtimeType => _downtimeType;

  String? get causativeMachineName => _causativeMachineName;

  String? get causativeMachineCode => _causativeMachineCode;

  int? get causativeMachineId => _causativeMachineId;

  String? get reasonName => _reasonName;

  String? get reasonCode => _reasonCode;

  int? get reasonId => _reasonId;

  String? get memo => _memo;

  String? get duration => _duration;

  String? get endTime => _endTime;

  String? get startTime => _startTime;

  int? get recordId => _recordId;

  String? get factoryName => _factoryName;

  String? get factoryCode => _factoryCode;

  int? get factoryId => _factoryId;
}
