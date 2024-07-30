
import '../../../../../../Util/Helper/Parsing/ApiJsonKey.dart';

part '../Convert/MoldingOrderSituationConvert.dart';

/// <summary>
/// 지시현황.
/// 성형생산지시의 현황정보를 나타낸다.
/// </summary>

class MoldingOrderSituationDto {
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
  /// 비가동시간
  /// </summary>
  String? _downtime;

  /// <summary>
  /// 마지막 비가동원인
  /// </summary>
  String? _latestDowntimeReasonName;

  /// <summary>
  /// 지시라인
  /// </summary>
  List<MoldingOrderSituationOrderLineDto>? _orderLines;

  MoldingOrderSituationDto(
      this._orderId,
      this._machineId,
      this._machineCode,
      this._machineName,
      this._machineOrderIndex,
      this._lineId,
      this._shiftName,
      this._moldCode,
      this._moldName,
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
      this._orderLines);

  factory MoldingOrderSituationDto.fromJson(Map<String, dynamic> json) => _$MoldingOrderSituationDtoFromJson(json);

  Map<String, dynamic> toJson() => _$MoldingOrderSituationDtoToJson(this);

  List<MoldingOrderSituationOrderLineDto>? get orderLines => _orderLines;

  String? get latestDowntimeReasonName => _latestDowntimeReasonName;

  String? get downtime => _downtime;

  String? get actualEndTime => _actualEndTime;

  String? get actualStartTime => _actualStartTime;

  String? get planOperatingTime => _planOperatingTime;

  String? get planEndTime => _planEndTime;

  String? get planStartTime => _planStartTime;

  String? get cycleTime => _cycleTime;

  String? get orderNumber => _orderNumber;

  String? get orderStatus => _orderStatus;

  String? get moldName => _moldName;

  String? get moldCode => _moldCode;

  String? get shiftName => _shiftName;

  int? get lineId => _lineId;

  int? get machineOrderIndex => _machineOrderIndex;

  String? get machineName => _machineName;

  String? get machineCode => _machineCode;

  int? get machineId => _machineId;

  int? get orderId => _orderId;
}

class MoldingOrderSituationOrderLineDto {
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

  MoldingOrderSituationOrderLineDto(
      this._id,
      this._orderId,
      this._lotId,
      this._lotNumber,
      this._itemId,
      this._itemCode,
      this._itemName,
      this._itemNumber,
      this._effectiveCavity,
      this._planQuantity,
      this._productionQuantity,
      this._effectiveQuantity,
      this._defectQuantity,
      this._defectReason,
      this._orderCycleTime,
      this._orderActualStartTime,
      this._orderActualEndTime);

  factory MoldingOrderSituationOrderLineDto.fromJson(Map<String, dynamic> json) => _$OrderLineDtoFromJson(json);

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

  String? get itemNumber => _itemNumber;

  String? get itemName => _itemName;

  String? get itemCode => _itemCode;

  int? get itemId => _itemId;

  String? get lotNumber => _lotNumber;

  int? get lotId => _lotId;

  int? get orderId => _orderId;

  int? get id => _id;
}
