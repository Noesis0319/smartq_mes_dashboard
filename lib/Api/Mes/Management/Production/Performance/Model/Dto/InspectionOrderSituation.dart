

import '../../../../../../Util/Helper/Parsing/ApiJsonKey.dart';

part '../Convert/InspectionOrderSituationConvert.dart';

class InspectionOrderSituationDto {
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
  String  ? _actualStartTime;

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
  /// 후공정 지시라인
  /// </summary>
  List<InspectionOrderSituationPostLineItemDto>? _postLineItems;

  /// <summary>
  /// 작업자
  /// </summary>
  List<InspectionOrderSituationWorkerDto>? _workers;


  InspectionOrderSituationDto(
      this._orderId,
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
      this._downtime,
      this._latestDowntimeReasonName,
      this._postLineItems,
      this._workers);

  factory InspectionOrderSituationDto.fromJson(Map<String, dynamic> json)
    => _$InspectionOrderSituationDtoFromJson(json);
    Map<String, dynamic> toJson() => _$InspectionOrderSituationDtoToJson(this);

  List<InspectionOrderSituationWorkerDto>? get workers => _workers;

  List<InspectionOrderSituationPostLineItemDto>? get postLineItems => _postLineItems;

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

  String? get shiftName => _shiftName;

  int? get lineId => _lineId;

  int? get machineOrderIndex => _machineOrderIndex;

  String? get machineName => _machineName;

  String? get machineCode => _machineCode;

  int? get machineId => _machineId;

  int? get orderId => _orderId;
}

/// <summary>
/// 작업자
/// </summary>

class InspectionOrderSituationWorkerDto {
  /// <summary>
  /// 작업자ID
  /// </summary>
  int? _id;

  /// <summary>
  /// 지시ID
  /// </summary>
  int? _orderId;

  /// <summary>
  /// 사원Id
  /// </summary>
  int? _employeeId;

  /// <summary>
  /// 작업자 사원코드
  /// </summary>
  String? _employeeCode;

  /// <summary>
  /// 작업자 사원이름
  /// </summary>
  String? _employeeName;

  /// <summary>
  /// 실제시작시간
  /// </summary>
  String? _actualStartTime;

  /// <summary>
  /// 실제종료시간
  /// </summary>
  String? _actualEndTime;

  /// <summary>
  /// 작업시간
  /// </summary>
  String? _actualWorkTime;


  InspectionOrderSituationWorkerDto(this._id, this._orderId, this._employeeId, this._employeeCode, this._employeeName,
      this._actualStartTime, this._actualEndTime, this._actualWorkTime);

  factory InspectionOrderSituationWorkerDto.fromJson(Map<String, dynamic> json)
  => _$WorkerFromJson(json);

  Map<String, dynamic> toJson() => _$WorkerToJson(this);

  String? get actualWorkTime => _actualWorkTime;

  String? get actualEndTime => _actualEndTime;

  String? get actualStartTime => _actualStartTime;

  String? get employeeName => _employeeName;

  String? get employeeCode => _employeeCode;

  int? get employeeId => _employeeId;

  int? get orderId => _orderId;

  int? get id => _id;
}

/// <summary>
/// 후공정 라인 품목
/// </summary>

class InspectionOrderSituationPostLineItemDto {
  /// <summary>
  /// 후공정 라인 Id
  /// </summary>
  int? _id;

  /// <summary>
  /// 지시Id
  /// </summary>
  int? _orderId;

  /// <summary>
  /// 로트ID
  /// </summary>
  int? _lotId;

  /// <summary>
  /// 로트번호
  /// </summary>
  String? _lotNubmer;

  /// <summary>
  /// 품목Id
  /// </summary>
  int? _itemId;

  /// <summary>
  /// 품목코드
  /// </summary>
  String? _itemCode;

  /// <summary>
  /// 품목이름
  /// </summary>
  String? _itemName;

  /// <summary>
  /// 품목번호
  /// </summary>
  String? _itemNumber;

  /// <summary>
  /// 품목규격
  /// </summary>
  String? _itemSpec;

  /// <summary>
  /// 품목단위
  /// </summary>
  String? _itemUnit;

  /// <summary>
  /// 모델명
  /// </summary>
  String? _itemModelName;

  /// <summary>
  /// 제조사코드
  /// </summary>
  String? _itemManufactureCode;

  /// <summary>
  /// 제조사명
  /// </summary>
  String? _itemManufacturerName;

  /// <summary>
  /// 품목분류코드
  /// </summary>
  String? _itemCategoryCode;

  /// <summary>
  /// 품목분류명
  /// </summary>
  String? _itemCategoryName;

  /// <summary>
  /// 계획수량
  /// </summary>
  dynamic _planQuantity;

  /// <summary>
  /// 생산수량
  /// </summary>
  dynamic _productionQuantity;

  /// <summary>
  /// 불량수량
  /// </summary>
  dynamic _defectQuantity;

  /// <summary>
  /// 유효수량
  /// </summary>
  dynamic _effectiveQuantity;

  /// <summary>
  /// 마지막 불량원인
  /// </summary>
  String? _defectReason;


  InspectionOrderSituationPostLineItemDto(
      this._id,
      this._orderId,
      this._lotId,
      this._lotNubmer,
      this._itemId,
      this._itemCode,
      this._itemName,
      this._itemNumber,
      this._itemSpec,
      this._itemUnit,
      this._itemModelName,
      this._itemManufactureCode,
      this._itemManufacturerName,
      this._itemCategoryCode,
      this._itemCategoryName,
      this._planQuantity,
      this._productionQuantity,
      this._defectQuantity,
      this._effectiveQuantity,
      this._defectReason);

  factory InspectionOrderSituationPostLineItemDto.fromJson(Map<String, dynamic> json)
  => _$PostLineItemFromJson(json);

  Map<String, dynamic> toJson() => _$PostLineItemToJson(this);

  String? get defectReason => _defectReason;

  dynamic get effectiveQuantity => _effectiveQuantity;

  dynamic get defectQuantity => _defectQuantity;

  dynamic get productionQuantity => _productionQuantity;

  dynamic get planQuantity => _planQuantity;

  String? get itemCategoryName => _itemCategoryName;

  String? get itemCategoryCode => _itemCategoryCode;

  String? get itemManufacturerName => _itemManufacturerName;

  String? get itemManufactureCode => _itemManufactureCode;

  String? get itemModelName => _itemModelName;

  String? get itemUnit => _itemUnit;

  String? get itemSpec => _itemSpec;

  String? get itemNumber => _itemNumber;

  String? get itemName => _itemName;

  String? get itemCode => _itemCode;

  int? get itemId => _itemId;

  String? get lotNubmer => _lotNubmer;

  int? get lotId => _lotId;

  int? get orderId => _orderId;

  int? get id => _id;
}

