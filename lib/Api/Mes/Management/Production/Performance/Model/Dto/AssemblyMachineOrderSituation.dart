

import 'package:json_annotation/json_annotation.dart';

import '../../../../../../Util/Helper/Parsing/ApiJsonKey.dart';
import '../../../Common/Model/Type/OrderStatus.dart';
import '../../../Common/Model/Type/RunningStatus.dart';

part '../Convert/AssemblyMachineOrderSituationConvert.dart';

/// <summary>
/// 조립 설비 지시 현황
/// </summary>
class AssemblyMachineOrderSituationDto {
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
  /// 지시ID
  /// </summary>
  int? _orderId;

  /// <summary>
  /// 지시상태
  /// </summary>
  OrderStatus? _orderStatus;

  /// <summary>
  /// 계획작업시간
  /// </summary>
  String? _planOperatingTime;

  /// <summary>
  /// 실제 시작시각
  /// </summary>
  String? _actualStartTime;

  /// <summary>
  /// 실제종료시각
  /// </summary>
  String? _actualEndTime;

  /// <summary>
  /// 비가동시간
  /// </summary>
  String? _downtime;

  /// <summary>
  /// 마지막 비가동원인
  /// </summary>
  String? _latestDowntimeReasonName;

  /// <summary>
  /// 가동중인 지시라인
  /// </summary>
  List<AssemblyMachineOrderSituationOrderLineDto>? _operatingOrderLines;


  AssemblyMachineOrderSituationDto(
      this._runningStatus,
      this._machineId,
      this._machineCode,
      this._machineName,
      this._machineOrderIndex,
      this._lineId,
      this._shiftName,
      this._orderId,
      this._orderStatus,
      this._planOperatingTime,
      this._actualStartTime,
      this._actualEndTime,
      this._downtime,
      this._latestDowntimeReasonName,
      this._operatingOrderLines);

  factory AssemblyMachineOrderSituationDto.fromJson(Map<String, dynamic> json) =>
      _$AssemblyMachineOrderSituationDtoFromJson(json);

  Map<String, dynamic> toJson() => _$AssemblyMachineOrderSituationDtoToJson(this);

  List<AssemblyMachineOrderSituationOrderLineDto>? get operatingOrderLines => _operatingOrderLines;

  String? get latestDowntimeReasonName => _latestDowntimeReasonName;

  String? get downtime => _downtime;

  String? get actualEndTime => _actualEndTime;

  String? get actualStartTime => _actualStartTime;

  String? get planOperatingTime => _planOperatingTime;

  OrderStatus? get orderStatus => _orderStatus;

  int? get orderId => _orderId;

  String? get shiftName => _shiftName;

  int? get lineId => _lineId;

  int? get machineOrderIndex => _machineOrderIndex;

  String? get machineName => _machineName;

  String? get machineCode => _machineCode;

  int? get machineId => _machineId;

  RunningStatus? get runningStatus => _runningStatus;
}

class AssemblyMachineOrderSituationOrderLineDto {
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

  AssemblyMachineOrderSituationOrderLineDto(this._id, this._orderId, this._itemId, this._itemCode, this._itemName, this._effectiveCavity,
      this._planQuantity, this._productionQuantity, this._effectiveQuantity, this._defectQuantity, this._defectReason);

  factory AssemblyMachineOrderSituationOrderLineDto.fromJson(Map<String, dynamic> json) => _$OrderLineDtoFromJson(json);

  Map<String, dynamic> toJson() => _$OrderLineDtoToJson(this);

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
