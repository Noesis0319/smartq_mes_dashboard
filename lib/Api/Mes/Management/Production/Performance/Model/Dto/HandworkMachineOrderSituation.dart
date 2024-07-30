

import 'package:json_annotation/json_annotation.dart';

import '../../../../../../Util/Helper/Parsing/ApiJsonKey.dart';
import '../../../Common/Model/Type/OrderStatus.dart';
import '../../../Common/Model/Type/RunningStatus.dart';

part '../Convert/HandworkMachineOrderSituationConvert.dart';

/// <summary>
/// 수작업 설비 지시현황
/// </summary>

class HandworkMachineOrderSituationDto {
  /// <summary>
  /// 가동 상태
  /// </summary>
  RunningStatus? _runningStatus;

  /// <summary>
  /// 설비ID
  /// </summary>
  int? _machineId;

  /// <summary>
  /// 설비코드
  /// </summary>
  String? _machineCode;

  /// <summary>
  /// 설비명
  /// </summary>
  String? _machineName;

  /// <summary>
  /// 설비정렬번호
  /// </summary>
  int? _machineOrderIndex;

  /// <summary>
  /// 라인ID
  /// </summary>
  int? _lineId;

  /// <summary>
  /// 근무명
  /// </summary>
  String? _shiftName;

  /// <summary>
  /// 금형코드
  /// </summary>
  String? _moldCode;

  /// <summary>
  /// 금형명
  /// </summary>
  String? _moldName;

  /// <summary>
  /// 지시ID
  /// </summary>
  int? _orderId;

  /// <summary>
  /// 지시상태
  /// </summary>
  OrderStatus? _orderStatus;

  /// <summary>
  /// 사이클타임
  /// </summary>
  String? _cycleTime;

  /// <summary>
  /// 계획작업시간
  /// </summary>
  String? _planOperatingTime;

  /// <summary>
  /// 실시간 작업시간
  /// </summary>
  String? _realWorkTime;

  /// <summary>
  /// 실시간 가동시간
  /// </summary>
  String? _realUpTime;

  /// <summary>
  /// 비가동시간
  /// </summary>
  String? _downtime;

  /// <summary>
  /// 마지막 비가동원인
  /// </summary>
  String? _latestDowntimeReasonName;

  /// <summary>
  /// 달성률 평균
  /// </summary>
  dynamic _completionRateAverage;

  /// <summary>
  /// 목표달성률 평균
  /// </summary>
  dynamic _targetCompletionRateAverage;

  /// <summary>
  /// 가동중인 지시라인
  /// </summary>
  List<HandworkMachineOrderSituationOrderLineDto>? _operatingOrderLines;

  HandworkMachineOrderSituationDto(
      this._runningStatus,
      this._machineId,
      this._machineCode,
      this._machineName,
      this._machineOrderIndex,
      this._lineId,
      this._shiftName,
      this._moldCode,
      this._moldName,
      this._orderId,
      this._orderStatus,
      this._cycleTime,
      this._planOperatingTime,
      this._realWorkTime,
      this._realUpTime,
      this._downtime,
      this._latestDowntimeReasonName,
      this._completionRateAverage,
      this._targetCompletionRateAverage,
      this._operatingOrderLines);

  factory HandworkMachineOrderSituationDto.fromJson(Map<String, dynamic> json) =>
      _$HandworkMachineOrderSituationDtoFromJson(json);

  Map<String, dynamic> toJson() => _$HandworkMachineOrderSituationDtoToJson(this);

  List<HandworkMachineOrderSituationOrderLineDto>? get operatingOrderLines => _operatingOrderLines;

  dynamic get targetCompletionRateAverage => _targetCompletionRateAverage;

  dynamic get completionRateAverage => _completionRateAverage;

  String? get latestDowntimeReasonName => _latestDowntimeReasonName;

  String? get downtime => _downtime;

  String? get realUpTime => _realUpTime;

  String? get realWorkTime => _realWorkTime;

  String? get planOperatingTime => _planOperatingTime;

  String? get cycleTime => _cycleTime;

  OrderStatus? get orderStatus => _orderStatus;

  int? get orderId => _orderId;

  String? get moldName => _moldName;

  String? get moldCode => _moldCode;

  String? get shiftName => _shiftName;

  int? get lineId => _lineId;

  int? get machineOrderIndex => _machineOrderIndex;

  String? get machineName => _machineName;

  String? get machineCode => _machineCode;

  int? get machineId => _machineId;

  RunningStatus? get runningStatus => _runningStatus;
}

class HandworkMachineOrderSituationOrderLineDto {
  /// <summary>
  /// 라인ID
  /// </summary>
  int? _id;

  /// <summary>
  /// 지시ID
  /// </summary>
  int? _orderId;

  /// <summary>
  /// 품목ID
  /// </summary>
  int? _itemId;

  /// <summary>
  /// 품목코드
  /// </summary>
  String? _itemCode;

  /// <summary>
  /// 품명
  /// </summary>
  String? _itemName;

  /// <summary>
  /// 캐비티 수
  /// </summary>
  int? _effectiveCavity;

  /// <summary>
  /// 계획수량
  /// </summary>
  dynamic _planQuantity;

  /// <summary>
  /// 생산수량
  /// </summary>
  dynamic _productionQuantity;

  /// <summary>
  /// 유효수량
  /// </summary>
  dynamic _effectiveQuantity;

  /// <summary>
  /// 불량수량
  /// </summary>
  dynamic _defectQuantity;

  /// <summary>
  /// 마지막 불량원인
  /// </summary>
  String? _defectReason;

  /// <summary>
  /// 달성률
  /// </summary>
  dynamic _completionRate;

  /// <summary>
  /// 달성률 기대치
  /// </summary>
  dynamic _expectedCompletionRate;

  /// <summary>
  /// 불량률
  /// </summary>
  dynamic _defectiveRate;

  /// <summary>
  /// 지시 사이클타임
  /// </summary>
  String? _orderCycleTime;

  /// <summary>
  /// 실시간 작업시간
  /// </summary>
  String? _orderRealWorkTime;

  /// <summary>
  /// 지시사이클타임(초단위)
  /// </summary>
  int? _orderCycleTimeSeconds;

  /// <summary>
  /// 작업시간(시간단위)
  /// </summary>
  int? _orderRealWorkTimeMinutes;

  /// <summary>
  /// 현재시간까지 목표수량
  /// </summary>
  dynamic _targetQuantity;

  /// <summary>
  /// 분당 목표수량
  /// </summary>
  dynamic _minuteTargetQuantity;

  /// <summary>
  /// 목표 달성률
  /// </summary>
  dynamic _targetCompletionRate;


  HandworkMachineOrderSituationOrderLineDto(
      this._id,
      this._orderId,
      this._itemId,
      this._itemCode,
      this._itemName,
      this._effectiveCavity,
      this._planQuantity,
      this._productionQuantity,
      this._effectiveQuantity,
      this._defectQuantity,
      this._defectReason,
      this._completionRate,
      this._expectedCompletionRate,
      this._defectiveRate,
      this._orderCycleTime,
      this._orderRealWorkTime,
      this._orderCycleTimeSeconds,
      this._orderRealWorkTimeMinutes,
      this._targetQuantity,
      this._minuteTargetQuantity,
      this._targetCompletionRate);

  factory HandworkMachineOrderSituationOrderLineDto.fromJson(Map<String, dynamic> json) => _$OrderLineDtoFromJson(json);

  Map<String, dynamic> toJson() => _$OrderLineDtoToJson(this);

  dynamic get targetCompletionRate => _targetCompletionRate;

  dynamic get minuteTargetQuantity => _minuteTargetQuantity;

  dynamic get targetQuantity => _targetQuantity;

  int? get orderRealWorkTimeMinutes => _orderRealWorkTimeMinutes;

  int? get orderCycleTimeSeconds => _orderCycleTimeSeconds;

  String? get orderRealWorkTime => _orderRealWorkTime;

  String? get orderCycleTime => _orderCycleTime;

  dynamic get defectiveRate => _defectiveRate;

  dynamic get expectedCompletionRate => _expectedCompletionRate;

  dynamic get completionRate => _completionRate;

  String? get defectReason => _defectReason;

  dynamic get defectQuantity => _defectQuantity;

  dynamic get effectiveQuantity => _effectiveQuantity;

  dynamic get productionQuantity => _productionQuantity;

  dynamic get planQuantity => _planQuantity;

  int? get effectiveCavity => _effectiveCavity;

  String? get itemName => _itemName;

  String? get itemCode => _itemCode;

  int? get itemId => _itemId;

  int? get orderId => _orderId;

  int? get id => _id;
}
