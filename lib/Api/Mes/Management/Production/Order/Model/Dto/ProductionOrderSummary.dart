
import 'package:json_annotation/json_annotation.dart';

import '../../../../../../Util/Helper/Parsing/ApiJsonKey.dart';
import '../../../../../MasterData/Model/Type/ProcessType.dart';
import '../../../Common/Model/Type/OrderStatus.dart';
import '../../../Common/Model/Type/PlanType.dart';
import '../../../Common/Model/Type/ProductionType.dart';

part '../Convert/ProductionOrderSummaryConvert.dart';

/// <summary>
/// 지시요약
/// </summary>

class ProductionOrderSummary {
  /// <summary>
  /// 지시ID
  /// </summary>
  int? _orderId;

  /// <summary>
  /// 공정구분
  /// </summary>
  ProcessType? _processType;

  /// <summary>
  /// 공정구분 _iD
  /// </summary>
  int? _processCategoryId;

  /// <summary>
  /// 공정구분명
  /// </summary>
  String? _processCategoryName;

  /// <summary>
  /// 지시번호
  /// </summary>
  String? _orderNumber;

  /// <summary>
  /// 계획일자
  /// </summary>
  String? _planDate;

  /// <summary>
  /// 작업 구분
  /// </summary>
  PlanType? _planType;

  /// <summary>
  /// 작업 상태
  /// </summary>
  OrderStatus? _orderStatus;

  /// <summary>
  /// 메모
  /// </summary>
  String? _memo;

  /// <summary>
  /// 계획시작시간
  /// </summary>
  String? _planStartTime;

  /// <summary>
  /// 계획종료시간
  /// </summary>
  String? _planEndTime;

  /// <summary>
  /// 계획 휴게시간
  /// </summary>
  String? _planBreakTime;

  /// <summary>
  /// 계획작업시간
  /// </summary>
  String? _planOperatingTime;

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

  /// <summary>
  /// 실시간 작업시간
  /// </summary>
  String? _realWorkTime;

  /// <summary>
  /// 가동시간
  /// </summary>
  String? _upTime;

  /// <summary>
  /// 실시간 가동시간
  /// </summary>
  String? _realUpTime;

  /// <summary>
  /// 비가동시간
  /// </summary>
  String? _downtime;

  /// <summary>
  /// 마지막 비가동 시간
  /// </summary>
  String? _pauseTime;

  /// <summary>
  /// 사이클타임
  /// </summary>
  String? _cycleTime;

  /// <summary>
  /// 사이클카운트
  /// </summary>
  int? _cycleCount;

  /// <summary>
  /// 담당자Id
  /// </summary>
  int? _managerId;

  /// <summary>
  /// 담당자코드
  /// </summary>
  String? _managerCode;

  /// <summary>
  /// 담당자이름
  /// </summary>
  String? _managerName;

  /// <summary>
  /// 근무Id
  /// </summary>
  int? _shiftId;

  /// <summary>
  /// 근무코드
  /// </summary>
  String? _shiftCode;

  /// <summary>
  /// 근무이름
  /// </summary>
  String? _shiftName;

  /// <summary>
  /// 설비Id
  /// </summary>
  int? _machineId;

  /// <summary>
  /// 설비코드
  /// </summary>
  String? _machineCode;

  /// <summary>
  /// 설비이름
  /// </summary>
  String? _machineName;

  /// <summary>
  /// 라인Id
  /// </summary>
  int? _lineId;

  /// <summary>
  /// 라인코드
  /// </summary>
  String? _lineCode;

  /// <summary>
  /// 라인이름
  /// </summary>
  String? _lineName;

  /// <summary>
  /// 금형Id
  /// </summary>
  int? _moldId;

  /// <summary>
  /// 금형코드
  /// </summary>
  String? _moldCode;

  /// <summary>
  /// 금형이름
  /// </summary>
  String? _moldName;

  /// <summary>
  /// 금형번호
  /// </summary>
  String? _moldNumber;

  /// <summary>
  /// 금형규격
  /// </summary>
  String? _moldSpec;

  /// <summary>
  /// 최근비가동원인
  /// </summary>
  int? _latestDowntimeReasonId;

  /// <summary>
  /// 최근비가동원인코드
  /// </summary>
  String? _latestDowntimeReasonCode;

  /// <summary>
  /// 최근비가동원인명
  /// </summary>
  String? _latestDowntimeReasonName;

  /// <summary>
  /// 지시라인ID
  /// </summary>
  int? _orderLineId;

  /// <summary>
  /// 계획수량
  /// </summary>
  dynamic _planQuantity;

  /// <summary>
  /// 캐비티 수
  /// </summary>
  int? _cavity;

  /// <summary>
  /// 유효 캐비티 수
  /// </summary>
  int? _effectiveCavity;

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
  /// 입고수량
  /// </summary>
  dynamic _putAwayQuantity;

  /// <summary>
  /// BomID
  /// </summary>
  int? _bomId;

  /// <summary>
  /// 로트ID
  /// </summary>
  int? _lotId;

  /// <summary>
  /// 로트번호
  /// </summary>
  String? _lotNumber;

  /// <summary>
  /// 도장 작업 구분
  /// </summary>
  ProductionType? _productionType;

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
  /// 품목 재질코드
  /// </summary>
  String? _itemTextureCode;

  /// <summary>
  /// 품목 재질명
  /// </summary>
  String? _itemTextureName;

  /// <summary>
  /// 품목분류코드
  /// </summary>
  String? _itemCategoryCode;

  /// <summary>
  /// 품목분류명
  /// </summary>
  String? _itemCategoryName;

  /// <summary>
  /// 모델코드
  /// </summary>
  String? _itemModelCode;

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
  /// 색상코드
  /// </summary>
  String? _itemColorCode;

  /// <summary>
  /// 색상이름
  /// </summary>
  String? _itemColorName;

  /// <summary>
  /// 색상RGB코드
  /// </summary>
  int? _itemColorRgb;

  /// <summary>
  /// 자재 총 투입 수량
  /// </summary>
  dynamic _totalMaterialInsertQty;

  /// <summary>
  /// 자재 총 로스수량
  /// </summary>
  dynamic _totalMaterialLossQty;

  /// <summary>
  /// 자재 총 사용수량
  /// </summary>
  dynamic _totalMaterialUseQty;

  /// <summary>
  /// 실적 작업자 목록
  /// </summary>
  String? _workers;

  ProductionOrderSummary(
      this._orderId,
      this._processType,
      this._processCategoryId,
      this._processCategoryName,
      this._orderNumber,
      this._planDate,
      this._planType,
      this._orderStatus,
      this._memo,
      this._planStartTime,
      this._planEndTime,
      this._planBreakTime,
      this._planOperatingTime,
      this._actualStartTime,
      this._actualEndTime,
      this._actualWorkTime,
      this._realWorkTime,
      this._upTime,
      this._realUpTime,
      this._downtime,
      this._pauseTime,
      this._cycleTime,
      this._cycleCount,
      this._managerId,
      this._managerCode,
      this._managerName,
      this._shiftId,
      this._shiftCode,
      this._shiftName,
      this._machineId,
      this._machineCode,
      this._machineName,
      this._lineId,
      this._lineCode,
      this._lineName,
      this._moldId,
      this._moldCode,
      this._moldName,
      this._moldNumber,
      this._moldSpec,
      this._latestDowntimeReasonId,
      this._latestDowntimeReasonCode,
      this._latestDowntimeReasonName,
      this._orderLineId,
      this._planQuantity,
      this._cavity,
      this._effectiveCavity,
      this._productionQuantity,
      this._defectQuantity,
      this._effectiveQuantity,
      this._putAwayQuantity,
      this._bomId,
      this._lotId,
      this._lotNumber,
      this._productionType,
      this._itemId,
      this._itemCode,
      this._itemName,
      this._itemNumber,
      this._itemSpec,
      this._itemUnit,
      this._itemTextureCode,
      this._itemTextureName,
      this._itemCategoryCode,
      this._itemCategoryName,
      this._itemModelCode,
      this._itemModelName,
      this._itemManufactureCode,
      this._itemManufacturerName,
      this._itemColorCode,
      this._itemColorName,
      this._itemColorRgb,
      this._totalMaterialInsertQty,
      this._totalMaterialLossQty,
      this._totalMaterialUseQty,
      this._workers);

  factory ProductionOrderSummary.fromJson(Map<String, dynamic> json) => _$ProductionOrderSummaryFromJson(json);

  Map<String, dynamic> toJson() => _$ProductionOrderSummaryToJson(this);

  int? get orderId => _orderId;

  ProcessType? get processType => _processType;

  int? get processCategoryId => _processCategoryId;

  String? get processCategoryName => _processCategoryName;

  String? get orderNumber => _orderNumber;

  String? get planDate => _planDate;

  PlanType? get planType => _planType;

  OrderStatus? get orderStatus => _orderStatus;

  String? get memo => _memo;

  String? get planStartTime => _planStartTime;

  String? get planEndTime => _planEndTime;

  String? get planBreakTime => _planBreakTime;

  String? get planOperatingTime => _planOperatingTime;

  String? get actualStartTime => _actualStartTime;

  String? get actualEndTime => _actualEndTime;

  String? get actualWorkTime => _actualWorkTime;

  String? get realWorkTime => _realWorkTime;

  String? get upTime => _upTime;

  String? get realUpTime => _realUpTime;

  String? get downtime => _downtime;

  String? get pauseTime => _pauseTime;

  String? get cycleTime => _cycleTime;

  int? get cycleCount => _cycleCount;

  int? get managerId => _managerId;

  String? get managerCode => _managerCode;

  String? get managerName => _managerName;

  int? get shiftId => _shiftId;

  String? get shiftCode => _shiftCode;

  String? get shiftName => _shiftName;

  int? get machineId => _machineId;

  String? get machineCode => _machineCode;

  String? get machineName => _machineName;

  int? get lineId => _lineId;

  String? get lineCode => _lineCode;

  String? get lineName => _lineName;

  int? get moldId => _moldId;

  String? get moldCode => _moldCode;

  String? get moldName => _moldName;

  String? get moldNumber => _moldNumber;

  String? get moldSpec => _moldSpec;

  int? get latestDowntimeReasonId => _latestDowntimeReasonId;

  String? get latestDowntimeReasonCode => _latestDowntimeReasonCode;

  String? get latestDowntimeReasonName => _latestDowntimeReasonName;

  int? get orderLineId => _orderLineId;

  dynamic get planQuantity => _planQuantity;

  int? get cavity => _cavity;

  int? get effectiveCavity => _effectiveCavity;

  dynamic get productionQuantity => _productionQuantity;

  dynamic get defectQuantity => _defectQuantity;

  dynamic get effectiveQuantity => _effectiveQuantity;

  dynamic get putAwayQuantity => _putAwayQuantity;

  int? get bomId => _bomId;

  int? get lotId => _lotId;

  String? get lotNumber => _lotNumber;

  ProductionType? get productionType => _productionType;

  int? get itemId => _itemId;

  String? get itemCode => _itemCode;

  String? get itemName => _itemName;

  String? get itemNumber => _itemNumber;

  String? get itemSpec => _itemSpec;

  String? get itemUnit => _itemUnit;

  String? get itemTextureCode => _itemTextureCode;

  String? get itemTextureName => _itemTextureName;

  String? get itemCategoryCode => _itemCategoryCode;

  String? get itemCategoryName => _itemCategoryName;

  String? get itemModelCode => _itemModelCode;

  String? get itemModelName => _itemModelName;

  String? get itemManufactureCode => _itemManufactureCode;

  String? get itemManufacturerName => _itemManufacturerName;

  String? get itemColorCode => _itemColorCode;

  String? get itemColorName => _itemColorName;

  int? get itemColorRgb => _itemColorRgb;

  dynamic get totalMaterialInsertQty => _totalMaterialInsertQty;

  dynamic get totalMaterialLossQty => _totalMaterialLossQty;

  dynamic get totalMaterialUseQty => _totalMaterialUseQty;

  String? get workers => _workers;
}
