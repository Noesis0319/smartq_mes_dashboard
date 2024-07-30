
import 'package:json_annotation/json_annotation.dart';

import '../../../../../../Util/Helper/Parsing/ApiJsonKey.dart';
import '../../../../../MasterData/Model/Type/ProcessType.dart';
import '../../../Common/Model/Type/OrderStatus.dart';
import '../../../Common/Model/Type/PlanType.dart';

part '../Convert/ProductionPerformanceSummaryConvert.dart';

class ProductionPerformanceSummaryDto {
  /// <summary>
  /// 공장Id
  /// </summary>
  int? _factoryId;

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
  /// 정렬 번호
  /// </summary>
  int? _machineOrderIndex;

  /// <summary>
  /// 담당자코드
  /// </summary>
  String? _managerCode;

  /// <summary>
  /// 담당자명
  /// </summary>
  String? _managerName;

  /// <summary>
  /// 지시Id
  /// </summary>
  int? _orderId;

  /// <summary>
  /// 작업구분
  /// </summary>
  PlanType? _planType;

  /// <summary>
  /// 작업상태
  /// </summary>
  OrderStatus? _status;

  /// <summary>
  /// 공정구분
  /// </summary>
  ProcessType? _processType;

  /// <summary>
  /// 지시번호
  /// </summary>
  String? _orderNumber;

  /// <summary>
  /// 근무코드
  /// </summary>
  String? _shiftCode;

  /// <summary>
  /// 근무명
  /// </summary>
  String? _shiftName;

  /// <summary>
  /// 계획일자
  /// </summary>
  String? _planDate;

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
  /// 가동시간
  /// </summary>
  String? _upTime;

  /// <summary>
  /// 비가동시간
  /// </summary>
  String? _downtime;

  /// <summary>
  /// 사이클타임
  /// </summary>
  String? _cycleTime;

  /// <summary>
  /// 계획수량
  /// </summary>
  dynamic _planQuantity;

  /// <summary>
  /// 메모
  /// </summary>
  String? _memo;

  /// <summary>
  /// 작업자 수
  /// </summary>
  int? _workerCount;

  /// <summary>
  /// 작업자 이름 (ex. A,B,C)
  /// </summary>
  String? _workers;

  /// <summary>
  /// order line Id
  /// </summary>
  int? _orderLineId;

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
  /// 불량률
  /// </summary>
  dynamic _defectiveRate;

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
  /// 품번
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
  /// 로트Id
  /// </summary>
  int? _lotId;

  /// <summary>
  /// 로트번호
  /// </summary>
  String? _lotNumber;

  /// <summary>
  /// BomId
  /// </summary>
  int? _bomId;

  /// <summary>
  /// 품목분류
  /// </summary>
  int? _itemCategoryId;
  String? _itemCategoryCode;
  String? _itemCategoryName;

  /// <summary>
  /// 품목대그룹
  /// </summary>
  int? _itemMajorGroupId;
  String? _itemMajorGroupCode;
  String? _itemMajorGroupName;

  /// <summary>
  /// 품목소그룹
  /// </summary>
  int? _itemGroupId;
  String? _itemGroupCode;
  String? _itemGroupName;

  /// <summary>
  /// 품목모델
  /// </summary>
  int? _itemModelId;
  String? _itemModelCode;
  String? _itemModelName;

  /// <summary>
  /// 품목색상
  /// </summary>
  int? _itemColorId;
  String? _itemColorCode;
  String? _itemColorName;

  /// <summary>
  /// 품목재질
  /// </summary>
  int? _itemTextureId;
  String? _itemTextureCode;
  String? _itemTextureName;

  /// <summary>
  /// 품목제조사
  /// </summary>
  int? _itemManufacturerId;
  String? _itemManufacturerCode;
  String? _itemManufacturerName;

  ProductionPerformanceSummaryDto(
      this._factoryId,
      this._lineId,
      this._lineCode,
      this._lineName,
      this._machineId,
      this._machineCode,
      this._machineName,
      this._machineOrderIndex,
      this._managerCode,
      this._managerName,
      this._orderId,
      this._planType,
      this._status,
      this._processType,
      this._orderNumber,
      this._shiftCode,
      this._shiftName,
      this._planDate,
      this._planStartTime,
      this._planEndTime,
      this._planBreakTime,
      this._planOperatingTime,
      this._actualStartTime,
      this._actualEndTime,
      this._actualWorkTime,
      this._upTime,
      this._downtime,
      this._cycleTime,
      this._planQuantity,
      this._memo,
      this._workerCount,
      this._workers,
      this._orderLineId,
      this._productionQuantity,
      this._defectQuantity,
      this._effectiveQuantity,
      this._putAwayQuantity,
      this._defectiveRate,
      this._itemId,
      this._itemCode,
      this._itemName,
      this._itemNumber,
      this._itemSpec,
      this._itemUnit,
      this._lotId,
      this._lotNumber,
      this._bomId,
      this._itemCategoryId,
      this._itemCategoryCode,
      this._itemCategoryName,
      this._itemMajorGroupId,
      this._itemMajorGroupCode,
      this._itemMajorGroupName,
      this._itemGroupId,
      this._itemGroupCode,
      this._itemGroupName,
      this._itemModelId,
      this._itemModelCode,
      this._itemModelName,
      this._itemColorId,
      this._itemColorCode,
      this._itemColorName,
      this._itemTextureId,
      this._itemTextureCode,
      this._itemTextureName,
      this._itemManufacturerId,
      this._itemManufacturerCode,
      this._itemManufacturerName);

  factory ProductionPerformanceSummaryDto.fromJson(Map<String, dynamic> json) =>
      _$ProductionPerformanceSummaryDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ProductionPerformanceSummaryDtoToJson(this);

  String? get itemManufacturerName => _itemManufacturerName;

  String? get itemManufacturerCode => _itemManufacturerCode;

  int? get itemManufacturerId => _itemManufacturerId;

  String? get itemTextureName => _itemTextureName;

  String? get itemTextureCode => _itemTextureCode;

  int? get itemTextureId => _itemTextureId;

  String? get itemColorName => _itemColorName;

  String? get itemColorCode => _itemColorCode;

  int? get itemColorId => _itemColorId;

  String? get itemModelName => _itemModelName;

  String? get itemModelCode => _itemModelCode;

  int? get itemModelId => _itemModelId;

  String? get itemGroupName => _itemGroupName;

  String? get itemGroupCode => _itemGroupCode;

  int? get itemGroupId => _itemGroupId;

  String? get itemMajorGroupName => _itemMajorGroupName;

  String? get itemMajorGroupCode => _itemMajorGroupCode;

  int? get itemMajorGroupId => _itemMajorGroupId;

  String? get itemCategoryName => _itemCategoryName;

  String? get itemCategoryCode => _itemCategoryCode;

  int? get itemCategoryId => _itemCategoryId;

  int? get bomId => _bomId;

  String? get lotNumber => _lotNumber;

  int? get lotId => _lotId;

  String? get itemUnit => _itemUnit;

  String? get itemSpec => _itemSpec;

  String? get itemNumber => _itemNumber;

  String? get itemName => _itemName;

  String? get itemCode => _itemCode;

  int? get itemId => _itemId;

  dynamic get defectiveRate => _defectiveRate;

  dynamic get putAwayQuantity => _putAwayQuantity;

  dynamic get effectiveQuantity => _effectiveQuantity;

  dynamic get defectQuantity => _defectQuantity;

  dynamic get productionQuantity => _productionQuantity;

  int? get orderLineId => _orderLineId;

  String? get workers => _workers;

  int? get workerCount => _workerCount;

  String? get memo => _memo;

  dynamic get planQuantity => _planQuantity;

  String? get cycleTime => _cycleTime;

  String? get downtime => _downtime;

  String? get upTime => _upTime;

  String? get actualWorkTime => _actualWorkTime;

  String? get actualEndTime => _actualEndTime;

  String? get actualStartTime => _actualStartTime;

  String? get planOperatingTime => _planOperatingTime;

  String? get planBreakTime => _planBreakTime;

  String? get planEndTime => _planEndTime;

  String? get planStartTime => _planStartTime;

  String? get planDate => _planDate;

  String? get shiftName => _shiftName;

  String? get shiftCode => _shiftCode;

  String? get orderNumber => _orderNumber;

  ProcessType? get processType => _processType;

  OrderStatus? get status => _status;

  PlanType? get planType => _planType;

  int? get orderId => _orderId;

  String? get managerName => _managerName;

  String? get managerCode => _managerCode;

  int? get machineOrderIndex => _machineOrderIndex;

  String? get machineName => _machineName;

  String? get machineCode => _machineCode;

  int? get machineId => _machineId;

  String? get lineName => _lineName;

  String? get lineCode => _lineCode;

  int? get lineId => _lineId;

  int? get factoryId => _factoryId;
}
