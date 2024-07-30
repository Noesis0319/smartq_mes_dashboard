

import '../../../../../../Util/Helper/Parsing/ApiJsonKey.dart';

part '../Convert/CuttingOrderSituationConvert.dart';

class CuttingOrderSituationDto {
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
  /// 작업 순번
  /// </summary>
  int? _processOrder;

  /// <summary>
  /// 작업명
  /// </summary>
  String? _processName;

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
  List<CuttingOrderSituationOrderLineDto>? _orderLines;

  /// <summary>
  /// 생산 자재
  /// </summary>
  List<CuttingOrderSituationOrderMaterialDto>?

  _orderMaterials;


  CuttingOrderSituationDto(
      this._orderId,
      this._machineId,
      this._machineCode,
      this._machineName,
      this._machineOrderIndex,
      this._processOrder,
      this._processName,
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
      this._orderLines,
      this._orderMaterials);

  factory CuttingOrderSituationDto.fromJson(Map<String, dynamic> json)
    => _$CuttingOrderSituationDtoFromJson(json);
    Map<String, dynamic> toJson() => _$CuttingOrderSituationDtoToJson(this);

  List<CuttingOrderSituationOrderMaterialDto>? get orderMaterials => _orderMaterials;

  List<CuttingOrderSituationOrderLineDto>? get orderLines => _orderLines;

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

  String? get processName => _processName;

  int? get processOrder => _processOrder;

  int? get machineOrderIndex => _machineOrderIndex;

  String? get machineName => _machineName;

  String? get machineCode => _machineCode;

  int? get machineId => _machineId;

  int? get orderId => _orderId;
}

class CuttingOrderSituationOrderLineDto {
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
  /// 품번
  /// </summary>
  String? _itemNumber;

  /// <summary>
  /// 규격
  /// </summary>
  String? _itemSpec;

  /// <summary>
  /// 모델코드
  /// </summary>
  String? _itemModelCode;

  /// <summary>
  /// 모델명
  /// </summary>
  String? _itemModelName;

  /// <summary>
  /// 품목 제조사명
  /// </summary>
  String? _itemManufactureName;

  /// <summary>
  /// 품목단위
  /// </summary>
  String? _itemUnit;

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


  CuttingOrderSituationOrderLineDto(
      this._id,
      this._orderId,
      this._itemId,
      this._itemCode,
      this._itemName,
      this._itemNumber,
      this._itemSpec,
      this._itemModelCode,
      this._itemModelName,
      this._itemManufactureName,
      this._itemUnit,
      this._effectiveCavity,
      this._planQuantity,
      this._productionQuantity,
      this._effectiveQuantity,
      this._defectQuantity,
      this._defectReason,
      this._orderCycleTime,
      this._orderActualStartTime,
      this._orderActualEndTime);

  factory CuttingOrderSituationOrderLineDto.fromJson(Map<String, dynamic> json)
    => _$OrderLineDtoFromJson(json);
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

  String? get itemUnit => _itemUnit;

  String? get itemManufactureName => _itemManufactureName;

  String? get itemModelName => _itemModelName;

  String? get itemModelCode => _itemModelCode;

  String? get itemSpec => _itemSpec;

  String? get itemNumber => _itemNumber;

  String? get itemName => _itemName;

  String? get itemCode => _itemCode;

  int? get itemId => _itemId;

  int? get orderId => _orderId;

  int? get id => _id;
}

class CuttingOrderSituationOrderMaterialDto {
  /// <summary>
  /// 생산자재 _iD
  /// </summary>
  int? _id;

  /// <summary>
  /// 지시ID
  /// </summary>
  int? _orderId;

  /// <summary>
  /// 자재 _iD
  /// </summary>
  int? _materialId;

  /// <summary>
  /// 자재 코드
  /// </summary>
  String? _materialCode;

  /// <summary>
  /// 자재 품명
  /// </summary>
  String? _materialName;

  /// <summary>
  /// 자재 품번
  /// </summary>
  String? _materialNumber;

  /// <summary>
  /// 자재 단위
  /// </summary>
  String? _materialUnit;

  /// <summary>
  /// 투입합계
  /// </summary>
  dynamic _insertQuantity;

  /// <summary>
  /// 총 로스합계
  /// </summary>
  dynamic _totalLossQuantity;

  /// <summary>
  /// 총 사용량
  /// </summary>
  dynamic _usedQuantity;


  CuttingOrderSituationOrderMaterialDto(
      this._id,
      this._orderId,
      this._materialId,
      this._materialCode,
      this._materialName,
      this._materialNumber,
      this._materialUnit,
      this._insertQuantity,
      this._totalLossQuantity,
      this._usedQuantity);

  factory CuttingOrderSituationOrderMaterialDto.fromJson(Map<String, dynamic> json)
    => _$OrderMaterialDtoFromJson(json);
    Map<String, dynamic> toJson() => _$OrderMaterialDtoToJson(this);

  dynamic get usedQuantity => _usedQuantity;

  dynamic get totalLossQuantity => _totalLossQuantity;

  dynamic get insertQuantity => _insertQuantity;

  String? get materialUnit => _materialUnit;

  String? get materialNumber => _materialNumber;

  String? get materialName => _materialName;

  String? get materialCode => _materialCode;

  int? get materialId => _materialId;

  int? get orderId => _orderId;

  int? get id => _id;
}

class CuttingOrderSituationOrderMachineDto {
  /// <summary>
  /// _id
  /// </summary>
  int? _id;

  /// <summary>
  /// 지시ID
  /// </summary>
  int? _orderId;

  /// <summary>
  /// 설비Id
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
  /// 작업순번
  /// </summary>
  int? _processOrder;

  /// <summary>
  /// 작업명
  /// </summary>
  String? _processName;

  /// <summary>
  /// 실적수집 해당 여부
  /// </summary>
  bool? _isCollector;


  CuttingOrderSituationOrderMachineDto(this._id, this._orderId, this._machineId, this._machineCode, this._machineName,
      this._processOrder, this._processName, this._isCollector);

  factory CuttingOrderSituationOrderMachineDto.fromJson(Map<String, dynamic> json)
    => _$OrderMachineDtoFromJson(json);
    Map<String, dynamic> toJson() => _$OrderMachineDtoToJson(this);

  bool? get isCollector => _isCollector;

  String? get processName => _processName;

  int? get processOrder => _processOrder;

  String? get machineName => _machineName;

  String? get machineCode => _machineCode;

  int? get machineId => _machineId;

  int? get orderId => _orderId;

  int? get id => _id;
}