
import '../../../../../../Util/Helper/Parsing/ApiJsonKey.dart';

part '../Convert/HandworkOrderSituationConvert.dart';

/// <summary>
/// 수작업 지시 현황
/// 수작업 지시의 현황 정보를 나타낸다
/// </summary>
class HandworkOrderSituationDto {
  /// <summary>
  /// 지시ID
  /// </summary>
  int? _orderId;

  /// <summary>
  /// 공장Id
  /// </summary>
  int? _factoryId;

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
  /// 지시상태
  /// </summary>
  String? _orderStatus;

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
  /// 지시라인
  /// </summary>
  List<HandworkOrderSituationOrderLineDto>? _orderLines;

  /// <summary>
  /// 작업자
  /// </summary>
  List<HandworkOrderSituationWorkerDto>? _workers;

  HandworkOrderSituationDto(
      this._orderId,
      this._factoryId,
      this._machineId,
      this._machineCode,
      this._machineName,
      this._machineOrderIndex,
      this._lineId,
      this._shiftName,
      this._orderStatus,
      this._orderNumber,
      this._cycleTime,
      this._planStartTime,
      this._planEndTime,
      this._planOperatingTime,
      this._actualStartTime,
      this._actualEndTime,
      this._realWorkTime,
      this._realUpTime,
      this._downtime,
      this._latestDowntimeReasonName,
      this._completionRateAverage,
      this._targetCompletionRateAverage,
      this._orderLines,
      this._workers);

  factory HandworkOrderSituationDto.fromJson(Map<String, dynamic> json) => _$HandworkOrderSituationDtoFromJson(json);

  Map<String, dynamic> toJson() => _$HandworkOrderSituationDtoToJson(this);

  List<HandworkOrderSituationWorkerDto>? get workers => _workers;

  List<HandworkOrderSituationOrderLineDto>? get orderLines => _orderLines;

  dynamic get targetCompletionRateAverage => _targetCompletionRateAverage;

  dynamic get completionRateAverage => _completionRateAverage;

  String? get latestDowntimeReasonName => _latestDowntimeReasonName;

  String? get downtime => _downtime;

  String? get realUpTime => _realUpTime;

  String? get realWorkTime => _realWorkTime;

  String? get actualEndTime => _actualEndTime;

  String? get actualStartTime => _actualStartTime;

  String? get planOperatingTime => _planOperatingTime;

  String? get planEndTime => _planEndTime;

  String? get planStartTime => _planStartTime;

  String? get cycleTime => _cycleTime;

  String? get orderNumber => _orderNumber;

  String? get orderStatus => _orderStatus;

  String? get shiftName => _shiftName;

  int? get lineId => _lineId;

  int? get machineOrderIndex => _machineOrderIndex;

  String? get machineName => _machineName;

  String? get machineCode => _machineCode;

  int? get machineId => _machineId;

  int? get factoryId => _factoryId;

  int? get orderId => _orderId;
}

class HandworkOrderSituationOrderLineDto {
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
  ///  실시간 작업시간(분단위)
  /// </summary>
  int? _orderRealWorkTimeMinutes;

  /// <summary>
  /// 현재시간까지 목표수량
  /// </summary>
  dynamic _targetQuantity;

  /// <summary>
  /// 분당 목표수량
  /// </summary>
  dynamic _miniteTargetQuantity;

  /// <summary>
  /// 목표 달성률
  /// </summary>
  dynamic _targetCompletionRate;

  HandworkOrderSituationOrderLineDto(
      this._id,
      this._orderId,
      this._lotId,
      this._lotNumber,
      this._itemId,
      this._categoryId,
      this._itemCode,
      this._itemName,
      this._itemNumber,
      this._effectiveCavity,
      this._planQuantity,
      this._productionQuantity,
      this._effectiveQuantity,
      this._defectQuantity,
      this._defectReason,
      this._completionRate,
      this._expectedCompletionRate,
      this._orderCycleTime,
      this._orderRealWorkTime,
      this._orderCycleTimeSeconds,
      this._orderRealWorkTimeMinutes,
      this._targetQuantity,
      this._miniteTargetQuantity,
      this._targetCompletionRate);

  factory HandworkOrderSituationOrderLineDto.fromJson(Map<String, dynamic> json) => _$OrderLineDtoFromJson(json);

  Map<String, dynamic> toJson() => _$OrderLineDtoToJson(this);

  dynamic get targetCompletionRate => _targetCompletionRate;

  dynamic get miniteTargetQuantity => _miniteTargetQuantity;

  dynamic get targetQuantity => _targetQuantity;

  int? get orderRealWorkTimeMinutes => _orderRealWorkTimeMinutes;

  int? get orderCycleTimeSeconds => _orderCycleTimeSeconds;

  String? get orderRealWorkTime => _orderRealWorkTime;

  String? get orderCycleTime => _orderCycleTime;

  dynamic get expectedCompletionRate => _expectedCompletionRate;

  dynamic get completionRate => _completionRate;

  String? get defectReason => _defectReason;

  dynamic get defectQuantity => _defectQuantity;

  dynamic get effectiveQuantity => _effectiveQuantity;

  dynamic get productionQuantity => _productionQuantity;

  dynamic get planQuantity => _planQuantity;

  int? get effectiveCavity => _effectiveCavity;

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

class HandworkOrderSituationWorkerDto {
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

  HandworkOrderSituationWorkerDto(
      this._id,
      this._orderId,
      this._workerId,
      this._workerCode,
      this._workerName,
      this._workerStatus,
      this._actualStartTime,
      this._actualEndTime,
      this._actualWorkTime,
      this._offDutyTime,
      this._reworkTime);

  factory HandworkOrderSituationWorkerDto.fromJson(Map<String, dynamic> json) => _$WorkerDtoFromJson(json);

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
