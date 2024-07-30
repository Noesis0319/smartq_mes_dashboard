

import 'package:json_annotation/json_annotation.dart';

import '../../../../../../Util/Helper/Parsing/ApiJsonKey.dart';
import '../../../Common/Model/Type/OrderStatus.dart';
import '../../../Common/Model/Type/PlanType.dart';

part '../Convert/AssemblyOrderSituationConvert.dart';

/// <summary>
/// 조립 지시 현황
/// </summary>

class AssemblyOrderSituationDto {
  /// <summary>
  /// 지시ID
  /// </summary>
  int? _orderId;

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
  /// 지시 일자
  /// </summary>
  String? _planDate;

  /// <summary>
  /// 작업 구분
  /// </summary>
  PlanType? _planType;

  /// <summary>
  /// 근무명
  /// </summary>
  String? _shiftName;

  /// <summary>
  /// 지시상태
  /// </summary>
  OrderStatus? _orderStatus;

  /// <summary>
  /// 지시번호
  /// </summary>
  String? _orderNumber;

  /// <summary>
  /// 사이클타임
  /// </summary>
  String? _cycleTime;

  /// <summary>
  /// 계획시작시간
  /// </summary>
  String? _planStartTime;

  /// <summary>
  /// 계획종료시간
  /// </summary>
  String? _planEndTime;

  /// <summary>
  /// 계획작업시간
  /// </summary>
  String? _planOperatingTime;

  /// <summary>
  /// 실제시작시간
  /// </summary>
  String? _actualStartTime;

  /// <summary>
  /// 실제시작시간
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
  /// 메모
  /// </summary>
  String? _memo;

  /// <summary>
  /// 지시라인
  /// </summary>
  List<AssemblyOrderSituationOrderLineDto>? _orderLines;

  /// <summary>
  /// 작업자
  /// </summary>
  List<AssemblyOrderSituationWorkerDto>? _workers;

  AssemblyOrderSituationDto(
      this._orderId,
      this._machineId,
      this._machineCode,
      this._machineName,
      this._machineOrderIndex,
      this._lineId,
      this._planDate,
      this._planType,
      this._shiftName,
      this._orderStatus,
      this._orderNumber,
      this._cycleTime,
      this._planStartTime,
      this._planEndTime,
      this._planOperatingTime,
      this._actualStartTime,
      this._actualEndTime,
      this._downtime,
      this._latestDowntimeReasonName,
      this._memo,
      this._orderLines,
      this._workers);

  factory AssemblyOrderSituationDto.fromJson(Map<String, dynamic> json) => _$AssemblyOrderSituationDtoFromJson(json);

  Map<String, dynamic> toJson() => _$AssemblyOrderSituationDtoToJson(this);

  List<AssemblyOrderSituationWorkerDto>? get workers => _workers;

  List<AssemblyOrderSituationOrderLineDto>? get orderLines => _orderLines;

  String? get memo => _memo;

  String? get latestDowntimeReasonName => _latestDowntimeReasonName;

  String? get downtime => _downtime;

  String? get actualEndTime => _actualEndTime;

  String? get actualStartTime => _actualStartTime;

  String? get planOperatingTime => _planOperatingTime;

  String? get planEndTime => _planEndTime;

  String? get planStartTime => _planStartTime;

  String? get cycleTime => _cycleTime;

  String? get orderNumber => _orderNumber;

  OrderStatus? get orderStatus => _orderStatus;

  String? get shiftName => _shiftName;

  PlanType? get planType => _planType;

  String? get planDate => _planDate;

  int? get lineId => _lineId;

  int? get machineOrderIndex => _machineOrderIndex;

  String? get machineName => _machineName;

  String? get machineCode => _machineCode;

  int? get machineId => _machineId;

  int? get orderId => _orderId;
}

class AssemblyOrderSituationOrderLineDto {
  /// <summary>
  /// 라인ID
  /// </summary>
  int? _id;

  /// <summary>
  /// 지시ID
  /// </summary>
  int? _orderId;

  /// <summary>
  /// 로트Id
  /// </summary>
  int? _lotId;

  /// <summary>
  /// 로트번호
  /// </summary>
  String? _lotNumber;

  /// <summary>
  /// 품목ID
  /// </summary>
  int? _itemId;

  /// <summary>
  /// 품목분류
  /// </summary>
  int? _categoryId;

  /// <summary>
  /// 품목코드
  /// </summary>
  String? _itemCode;

  /// <summary>
  /// 품명
  /// </summary>
  String? _itemName;

  /// <summary>
  /// 품번
  /// </summary>
  String? _itemNumber;

  /// <summary>
  /// 규격
  /// </summary>
  String? _itemSpec;

  /// <summary>
  /// 모델명
  /// </summary>
  String? _itemModelName;

  /// <summary>
  /// 색상명
  /// </summary>
  String? _itemColorName;

  /// <summary>
  /// 제조사명
  /// </summary>
  String? _itemManufacturerName;

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
  /// 지시 사이클타임
  /// </summary>
  String? _orderCycleTime;

  /// <summary>
  /// 실제시작시간
  /// </summary>
  String? _orderActualStartTime;

  /// <summary>
  /// 실제시작시간
  /// </summary>
  String? _orderActualEndTime;

  AssemblyOrderSituationOrderLineDto(
      this._id,
      this._orderId,
      this._lotId,
      this._lotNumber,
      this._itemId,
      this._categoryId,
      this._itemCode,
      this._itemName,
      this._itemNumber,
      this._itemSpec,
      this._itemModelName,
      this._itemColorName,
      this._itemManufacturerName,
      this._effectiveCavity,
      this._planQuantity,
      this._productionQuantity,
      this._effectiveQuantity,
      this._defectQuantity,
      this._defectReason,
      this._orderCycleTime,
      this._orderActualStartTime,
      this._orderActualEndTime);

  factory AssemblyOrderSituationOrderLineDto.fromJson(Map<String, dynamic> json) => _$OrderLineDtoFromJson(json);

  Map<String, dynamic> toJson() => _$OrderLineDtoToJson(this);

  String? get orderActualEndTime => _orderActualEndTime;

  String? get orderActualStartTime => _orderActualStartTime;

  String? get orderCycleTime => _orderCycleTime;

  String? get defectReason => _defectReason;

  dynamic get defectQuantity => _defectQuantity;

  dynamic get effectiveQuantity => _effectiveQuantity;

  dynamic get productionQuantity => _productionQuantity;

  dynamic get planQuantity => _planQuantity;

  int? get effectiveCavity => _effectiveCavity;

  String? get itemManufacturerName => _itemManufacturerName;

  String? get itemColorName => _itemColorName;

  String? get itemModelName => _itemModelName;

  String? get itemSpec => _itemSpec;

  String? get itemNumber => _itemNumber;

  String? get itemName => _itemName;

  String? get itemCode => _itemCode;

  int? get categoryId => _categoryId;

  int? get itemId => _itemId;

  String? get lotNumber => _lotNumber;

  int? get lotId => _lotId;

  int? get orderId => _orderId;

  int? get id => _id;
}

class AssemblyOrderSituationWorkerDto {
  int? _id;

  int? _orderId;

  int? _workerId;

  String? _workerCode;

  String? _workerName;

  String? _workerStatus;

  String? _actualStartTime;

  String? _actualEndTime;

  String? _actualWorkTime;

  String? _offDutyTime;

  String? _reworkTime;

  AssemblyOrderSituationWorkerDto(this._id, this._orderId, this._workerId, this._workerCode, this._workerName, this._workerStatus,
      this._actualStartTime, this._actualEndTime, this._actualWorkTime, this._offDutyTime, this._reworkTime);

  factory AssemblyOrderSituationWorkerDto.fromJson(Map<String, dynamic> json) => _$WorkerDtoFromJson(json);

  Map<String, dynamic> toJson() => _$WorkerDtoToJson(this);

  String? get reworkTime => _reworkTime;

  String? get offDutyTime => _offDutyTime;

  String? get actualWorkTime => _actualWorkTime;

  String? get actualEndTime => _actualEndTime;

  String? get actualStartTime => _actualStartTime;

  String? get workerStatus => _workerStatus;

  String? get workerName => _workerName;

  String? get workerCode => _workerCode;

  int? get workerId => _workerId;

  int? get orderId => _orderId;

  int? get id => _id;
}
