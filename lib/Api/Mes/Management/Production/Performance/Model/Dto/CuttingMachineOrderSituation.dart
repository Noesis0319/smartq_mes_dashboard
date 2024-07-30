

import 'package:json_annotation/json_annotation.dart';

import '../../../../../../Util/Helper/Parsing/ApiJsonKey.dart';
import '../../../Common/Model/Type/OrderStatus.dart';
import '../../../Common/Model/Type/RunningStatus.dart';

part '../Convert/CuttingMachineOrderSituationConvert.dart';

class CuttingMachineOrderSituationDto {
  /// <summary>
  /// 가동 상태
  /// </summary>
  RunningStatus? _runningStatus;

  /// <summary>
  /// 실적수집 설비ID
  /// </summary>
  int? _collectorMachineId;

  /// <summary>
  /// 실적수집 설비코드
  /// </summary>
  String? _collectorMachineCode;

  /// <summary>
  /// 실적수집 설비명
  /// </summary>
  String? _collectorMachineName;

  /// <summary>
  /// 설비 Id
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
  List<CuttingMachineOrderSituationOrderLineDto>? _operatingOrderLines;

  /// <summary>
  /// 당일 생산지시 절삭 투입 자재 목록
  /// </summary>
  CuttingMachineOrderSituationOrderMaterialDto? _orderMaterials;


  CuttingMachineOrderSituationDto(
      this._runningStatus,
      this._collectorMachineId,
      this._collectorMachineCode,
      this._collectorMachineName,
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
      this._actualStartTime,
      this._actualEndTime,
      this._downtime,
      this._latestDowntimeReasonName,
      this._operatingOrderLines,
      this._orderMaterials);

  factory CuttingMachineOrderSituationDto.fromJson(Map<String, dynamic> json) =>
      _$CuttingMachineOrderSituationDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CuttingMachineOrderSituationDtoToJson(this);

  CuttingMachineOrderSituationOrderMaterialDto? get orderMaterials => _orderMaterials;

  List<CuttingMachineOrderSituationOrderLineDto>? get operatingOrderLines => _operatingOrderLines;

  String? get latestDowntimeReasonName => _latestDowntimeReasonName;

  String? get downtime => _downtime;

  String? get actualEndTime => _actualEndTime;

  String? get actualStartTime => _actualStartTime;

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

  String? get collectorMachineName => _collectorMachineName;

  String? get collectorMachineCode => _collectorMachineCode;

  int? get collectorMachineId => _collectorMachineId;

  RunningStatus? get runningStatus => _runningStatus;
}

class CuttingMachineOrderSituationMachineDto {
  int? _id;

  int? _lineId;
  String? _code;

  String? _name;

  int? _orderIndex;


  CuttingMachineOrderSituationMachineDto(this._id, this._lineId, this._code, this._name, this._orderIndex);

  factory CuttingMachineOrderSituationMachineDto.fromJson(Map<String, dynamic> json)
  => _$MachineDtoFromJson(json);
  Map<String, dynamic> toJson() => _$MachineDtoToJson(this);

  int? get orderIndex => _orderIndex;

  String? get name => _name;

  String? get code => _code;

  int? get lineId => _lineId;

  int? get id => _id;
}

class CuttingMachineOrderSituationOrderDto {
  /// <summary>
  /// 지시ID
  /// </summary>
  int? _orderId;

  /// <summary>
  /// 설비ID
  /// </summary>
  int? _machineId;

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
  /// 사이클타임
  /// </summary>
  String? _cycleTime;

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
  /// 실제작업시간
  /// </summary>
  String? _actualWorkTime;

  /// <summary>
  /// 가동시간
  /// </summary>
  String? _upTime;

  /// <summary>
  /// 비가동시간
  /// </summary>
  String? _downtime;

  /// <summary>
  /// 마지막 비가동원인
  /// </summary>
  String? _latestDowntimeReasonName;


  CuttingMachineOrderSituationOrderDto(
      this._orderId,
      this._machineId,
      this._shiftName,
      this._moldCode,
      this._moldName,
      this._orderStatus,
      this._cycleTime,
      this._planOperatingTime,
      this._actualStartTime,
      this._actualEndTime,
      this._actualWorkTime,
      this._upTime,
      this._downtime,
      this._latestDowntimeReasonName);

  factory CuttingMachineOrderSituationOrderDto.fromJson(Map<String, dynamic> json)
  => _$OrderDtoFromJson(json);
  Map<String, dynamic> toJson() => _$OrderDtoToJson(this);

  String? get latestDowntimeReasonName => _latestDowntimeReasonName;

  String? get downtime => _downtime;

  String? get upTime => _upTime;

  String? get actualWorkTime => _actualWorkTime;

  String? get actualEndTime => _actualEndTime;

  String? get actualStartTime => _actualStartTime;

  String? get planOperatingTime => _planOperatingTime;

  String? get cycleTime => _cycleTime;

  String? get orderStatus => _orderStatus;

  String? get moldName => _moldName;

  String? get moldCode => _moldCode;

  String? get shiftName => _shiftName;

  int? get machineId => _machineId;

  int? get orderId => _orderId;
}

class CuttingMachineOrderSituationOrderLineDto {
  /// <summary>
  /// 라인ID
  /// </summary>
  int? _id;

  /// <summary>
  /// 지시ID
  /// </summary>
  int? _orderId;

  /// <summary>
  /// 로트ID
  /// </summary>
  int? _lotId;

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

  List<CuttingMachineOrderSituationOrderLabelDto>? _orderLabels;


  CuttingMachineOrderSituationOrderLineDto(
      this._id,
      this._orderId,
      this._lotId,
      this._itemId,
      this._itemCode,
      this._itemName,
      this._effectiveCavity,
      this._planQuantity,
      this._productionQuantity,
      this._effectiveQuantity,
      this._defectQuantity,
      this._defectReason,
      this._orderCycleTime,
      this._orderActualStartTime,
      this._orderActualEndTime,
      this._orderLabels);

  factory CuttingMachineOrderSituationOrderLineDto.fromJson(Map<String, dynamic> json)
  => _$OrderLineDtoFromJson(json);
  Map<String, dynamic> toJson() => _$OrderLineDtoToJson(this);

  List<CuttingMachineOrderSituationOrderLabelDto>? get orderLabels => _orderLabels;

  String? get orderActualEndTime => _orderActualEndTime;

  String? get orderActualStartTime => _orderActualStartTime;

  String? get orderCycleTime => _orderCycleTime;

  String? get defectReason => _defectReason;

  dynamic get defectQuantity => _defectQuantity;

  dynamic get effectiveQuantity => _effectiveQuantity;

  dynamic get productionQuantity => _productionQuantity;

  dynamic get planQuantity => _planQuantity;

  int? get effectiveCavity => _effectiveCavity;

  String? get itemName => _itemName;

  String? get itemCode => _itemCode;

  int? get itemId => _itemId;

  int? get lotId => _lotId;

  int? get orderId => _orderId;

  int? get id => _id;
}

class CuttingMachineOrderSituationOrderMachineDto {
  /// <summary>
  /// 절삭 설비 Id
  /// </summary>
  int? _id;

  /// <summary>
  /// 지시Id
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
  /// 실적수집 설비 해당 여부
  /// </summary>
  bool? _isCollector;

  /// <summary>
  /// 작업순서
  /// </summary>
  int? _processOrder;

  /// <summary>
  /// 작업명
  /// </summary>
  String? _processName;

  /// <summary>
  /// 단위 작업 시간
  /// </summary>
  String? _unitOperatingTime;

  /// <summary>
  /// 단위 운송 시간
  /// </summary>
  String? _unitTransferTime;

  /// <summary>
  /// 합계 시간
  /// </summary>
  String? _totalTime;

  /// <summary>
  /// 캐비티수
  /// </summary>
  int? _cavityCount;


  CuttingMachineOrderSituationOrderMachineDto(
      this._id,
      this._orderId,
      this._machineId,
      this._machineCode,
      this._machineName,
      this._isCollector,
      this._processOrder,
      this._processName,
      this._unitOperatingTime,
      this._unitTransferTime,
      this._totalTime,
      this._cavityCount);

  factory CuttingMachineOrderSituationOrderMachineDto.fromJson(Map<String, dynamic> json)
  => _$OrderMachineDtoFromJson(json);
  Map<String, dynamic> toJson() => _$OrderMachineDtoToJson(this);

  int? get cavityCount => _cavityCount;

  String? get totalTime => _totalTime;

  String? get unitTransferTime => _unitTransferTime;

  String? get unitOperatingTime => _unitOperatingTime;

  String? get processName => _processName;

  int? get processOrder => _processOrder;

  bool? get isCollector => _isCollector;

  String? get machineName => _machineName;

  String? get machineCode => _machineCode;

  int? get machineId => _machineId;

  int? get orderId => _orderId;

  int? get id => _id;
}

class CuttingMachineOrderSituationOrderMaterialDto {
  /// <summary>
  /// 생산자재 ID
  /// </summary>
  int? _id;

  /// <summary>
  /// 지시ID
  /// </summary>
  int? _orderId;

  /// <summary>
  /// 자재 ID
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


  CuttingMachineOrderSituationOrderMaterialDto(
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

  factory CuttingMachineOrderSituationOrderMaterialDto.fromJson(Map<String, dynamic> json)
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

class CuttingMachineOrderSituationOrderLabelDto {
  /// <summary>
  /// 로트Id
  /// </summary>
  int? _lotId;

  /// <summary>
  /// 라벨Id
  /// </summary>
  int? _id;

  /// <summary>
  /// 로트번호
  /// </summary>
  String? _lotNumber;

  /// <summary>
  /// 라벨 번호
  /// </summary>
  String? _labelNumber;

  /// <summary>
  /// 초기 발행 수량
  /// </summary>
  dynamic _initialQty;

  /// <summary>
  /// 라벨 재고 수량
  /// </summary>
  dynamic _inventoryQty;


  CuttingMachineOrderSituationOrderLabelDto(
      this._lotId, this._id, this._lotNumber, this._labelNumber, this._initialQty, this._inventoryQty);

  factory CuttingMachineOrderSituationOrderLabelDto.fromJson(Map<String, dynamic> json)
    => _$OrderLabelDtoFromJson(json);
    Map<String, dynamic> toJson() => _$OrderLabelDtoToJson(this);

  dynamic get inventoryQty => _inventoryQty;

  dynamic get initialQty => _initialQty;

  String? get labelNumber => _labelNumber;

  String? get lotNumber => _lotNumber;

  int? get id => _id;

  int? get lotId => _lotId;
}
