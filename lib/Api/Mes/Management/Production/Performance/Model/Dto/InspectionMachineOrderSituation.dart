

import 'package:json_annotation/json_annotation.dart';

import '../../../../../../Util/Helper/Parsing/ApiJsonKey.dart';
import '../../../Common/Model/Type/OrderStatus.dart';
import '../../../Common/Model/Type/RunningStatus.dart';

part '../Convert/InspectionMachineOrderSituationConvert.dart';

class InspectionMachineOrderSituationDto {
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
  List<InspectionMachineOrderSituationPostLineItemDto>? _operatingOrderLines;


  InspectionMachineOrderSituationDto(
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

  factory InspectionMachineOrderSituationDto.fromJson(Map<String, dynamic> json) =>
      _$InspectionMachineOrderSituationDtoFromJson(json);

  Map<String, dynamic> toJson() => _$InspectionMachineOrderSituationDtoToJson(this);

  List<InspectionMachineOrderSituationPostLineItemDto>? get operatingOrderLines => _operatingOrderLines;

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

/// <summary>
/// 후공정 라인 품목
/// </summary>

class InspectionMachineOrderSituationPostLineItemDto {
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

  List<InspectionMachineOrderSituationPreviousLotRecordDto>? _previousLotRecords;


  InspectionMachineOrderSituationPostLineItemDto(
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
      this._itemCategoryCode,
      this._itemCategoryName,
      this._planQuantity,
      this._productionQuantity,
      this._defectQuantity,
      this._effectiveQuantity,
      this._defectReason,
      this._previousLotRecords);

  factory InspectionMachineOrderSituationPostLineItemDto.fromJson(Map<String, dynamic> json) =>
      _$InspectionMachineOrderSituationPostLineItemDtoFromJson(json);

  Map<String, dynamic> toJson() => _$InspectionMachineOrderSituationPostLineItemDtoToJson(this);

  List<InspectionMachineOrderSituationPreviousLotRecordDto>? get previousLotRecords => _previousLotRecords;

  String? get defectReason => _defectReason;

  dynamic get effectiveQuantity => _effectiveQuantity;

  dynamic get defectQuantity => _defectQuantity;

  dynamic get productionQuantity => _productionQuantity;

  dynamic get planQuantity => _planQuantity;

  String? get itemCategoryName => _itemCategoryName;

  String? get itemCategoryCode => _itemCategoryCode;

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

/// <summary>
/// 이전 생산 공정 로트 기록
/// </summary>

class InspectionMachineOrderSituationPreviousLotRecordDto {
  /// <summary>
  /// 생산 공정 로트 id
  /// </summary>
  int? _id;

  /// <summary>
  /// 후공정 라인 Id
  /// </summary>
  int? _postLineId;

  /// <summary>
  /// 라인 ID
  /// </summary>
  int? _lineId;

  /// <summary>
  /// 품목 Id
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
  /// 품목 단위
  /// </summary>
  String? _itemUnit;

  /// <summary>
  /// 로트 Id
  /// </summary>
  int? _lotId;

  /// <summary>
  /// 로트번호
  /// </summary>
  String? _lotNumber;

  /// <summary>
  /// 후공정 지시 이전 공정
  /// </summary>
  String? _previousProcess;

  /// <summary>
  /// 투입될 지시 공정
  /// </summary>
  String? _currentProcess;

  /// <summary>
  /// 투입 수량
  /// </summary>
  dynamic _insertedQuantity;

  /// <summary>
  /// 해당 lot 에 등록된 모든 불량 수량 (생산+후공정)
  /// </summary>
  dynamic _totalDefectQuantity;

  /// <summary>
  /// 후공정 작업에서 등록된 불량 수량
  /// </summary>
  dynamic _defectQuantity;


  InspectionMachineOrderSituationPreviousLotRecordDto(
      this._id,
      this._postLineId,
      this._lineId,
      this._itemId,
      this._itemCode,
      this._itemName,
      this._itemNumber,
      this._itemUnit,
      this._lotId,
      this._lotNumber,
      this._previousProcess,
      this._currentProcess,
      this._insertedQuantity,
      this._totalDefectQuantity,
      this._defectQuantity);

  factory InspectionMachineOrderSituationPreviousLotRecordDto.fromJson(Map<String, dynamic> json) =>
      _$InspectionMachineOrderSituationPreviousLotRecordDtoFromJson(json);

  Map<String, dynamic> toJson() => _$InspectionMachineOrderSituationPreviousLotRecordDtoToJson(this);

  dynamic get defectQuantity => _defectQuantity;

  dynamic get totalDefectQuantity => _totalDefectQuantity;

  dynamic get insertedQuantity => _insertedQuantity;

  String? get currentProcess => _currentProcess;

  String? get previousProcess => _previousProcess;

  String? get lotNumber => _lotNumber;

  int? get lotId => _lotId;

  String? get itemUnit => _itemUnit;

  String? get itemNumber => _itemNumber;

  String? get itemName => _itemName;

  String? get itemCode => _itemCode;

  int? get itemId => _itemId;

  int? get lineId => _lineId;

  int? get postLineId => _postLineId;

  int? get id => _id;
}
