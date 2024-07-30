
import '../../../../../../Util/Helper/Parsing/ApiJsonKey.dart';

part '../Convert/ProductionOrderAggregateConvert.dart';

class ProductionOrderAggregateDto {
  int? _id;

  /// <summary>
  /// 공정구분
  /// </summary>
  String? _processType;

  /// <summary>
  /// 공정구분 ID
  /// </summary>
  int? _processCategoryId;

  /// <summary>
  /// 공정구분명
  /// </summary>
  String? _processCategoryName;

  /// <summary>
  /// 지시번호
  /// </summary>;

  String? _orderNumber;

  /// <summary>
  /// 계획일자
  /// </summary>;

  String? _planDate;

  /// <summary>
  /// 작업 구분
  /// </summary>;

  String? _planType;

  /// <summary>
  /// 작업 상태
  /// </summary>;

  String? _orderStatus;

  /// <summary>
  /// 메모
  /// </summary>;

  String? _memo;

  /// <summary>
  /// 계획시작시간
  /// </summary>;

  String? _planStartTime;

  /// <summary>
  /// 계획종료시간
  /// </summary>;

  String? _planEndTime;

  /// <summary>
  /// 계획 휴게시간
  /// </summary>;

  String? _planBreakTime;

  /// <summary>
  /// 계획작업시간
  /// </summary>;

  String? _planOperatingTime;

  /// <summary>
  /// 실제시작시간
  /// </summary>;

  String? _actualStartTime;

  /// <summary>
  /// 실제종료시간
  /// </summary>;

  String? _actualEndTime;

  /// <summary>
  /// 작업시간
  /// </summary>;

  String? _actualWorkTime;

  /// <summary>
  /// 실시간 작업시간
  /// </summary>;

  String? _realWorkTime;

  /// <summary>
  /// 가동시간
  /// </summary>

  String? _upTime;

  /// <summary>
  /// 실시간 가동시간
  /// </summary>;

  String? _realUpTime;

  /// <summary>
  /// 비가동시간
  /// </summary>;

  String? _downtime;

  /// <summary>
  /// 비가동률
  /// </summary>;

  dynamic _downRate;

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
  /// </summary>;

  int? _cycleCount;

  /// <summary>
  /// 담당자Id
  /// </summary>;

  int? _managerId;

  /// <summary>
  /// 담당자코드
  /// </summary>;

  String? _managerCode;

  /// <summary>
  /// 담당자이름
  /// </summary>;

  String? _managerName;

  /// <summary>
  /// 근무Id
  /// </summary>;

  int? _shiftId;

  /// <summary>
  /// 근무코드
  /// </summary>;

  String? _shiftCode;

  /// <summary>
  /// 근무이름
  /// </summary>;

  String? _shiftName;

  /// <summary>
  /// 설비Id
  /// </summary>;

  int? _machineId;

  /// <summary>
  /// 설비코드
  /// </summary>;

  String? _machineCode;

  /// <summary>
  /// 설비이름
  /// </summary>;

  String? _machineName;

  /// <summary>
  /// 라인Id
  /// </summary>;

  int? _lineId;

  /// <summary>
  /// 라인코드
  /// </summary>;

  String? _lineCode;

  /// <summary>
  /// 라인이름
  /// </summary>;

  String? _lineName;

  /// <summary>
  /// 금형Id
  /// </summary>;

  int? _moldId;

  /// <summary>
  /// 금형코드
  /// </summary>;

  String? _moldCode;

  /// <summary>
  /// 금형이름
  /// </summary>;

  String? _moldName;

  /// <summary>
  /// 금형번호
  /// </summary>;

  String? _moldNumber;

  /// <summary>
  /// 금형규격
  /// </summary>;

  String? _moldSpec;

  /// <summary>
  /// 최근비가동원인
  /// </summary>;

  int? _latestDowntimeReasonId;

  /// <summary>
  /// 최근비가동원인코드
  /// </summary>;

  String? _latestDowntimeReasonCode;

  /// <summary>
  /// 최근비가동원인명
  /// </summary>;

  String? _latestDowntimeReasonName;

  /// <summary>
  /// 지시라인품목
  /// </summary>;LineItem[]
  List<ProductionOrderAggregateLineItem>? _lineItems;

  /// <summary>
  /// 사용자재
  /// </summary>

  List<ProductionOrderAggregateMaterial>? _materials;

  /// <summary>
  /// 작업자
  /// </summary>

  List<ProductionOrderAggregateWorker>? _workers;

  /// <summary>
  /// 프레스 공정 금형  목록
  /// </summary>

  List<ProductionOrderAggregatePressMold>? PressMolds;

  /// <summary>
  /// 절삭공정 설비 목록
  /// </summary>

  List<ProductionOrderAggregateCuttingMachine>? CuttingMachines;

  /// <summary>
  /// 도장공정 세부 공정기준 목록
  /// </summary>
  List<ProductionOrderAggregateBasis>? ProductionBases;

  ProductionOrderAggregateDto(
      this._id,
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
      this._downRate,
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
      this._lineItems,
      this._materials,
      this._workers,
      this.PressMolds,
      this.CuttingMachines,
      this.ProductionBases);

  factory ProductionOrderAggregateDto.fromJson(Map<String, dynamic> json) =>
      _$ProductionOrderAggregateDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ProductionOrderAggregateDtoToJson(this);
}

/// <summary>
/// 지시라인품목
/// </summary>

class ProductionOrderAggregateLineItem {
  /// <summary>
  /// 라인품목ID
  /// </summary>
  int? _id;

  /// <summary>
  /// 지시ID
  /// </summary>
  int? _orderId;

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
  /// 제조일자
  /// </summary>
  String? _manufactureDate;

  /// <summary>
  /// 작업 구분(도장)
  /// </summary>
  String? _productionType;

  /// <summary>
  /// 재고관리방식
  /// </summary>
  String? _inventoryManageType;

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
  /// 재질코드
  /// </summary>
  String? _itemTextureCode;

  /// <summary>
  /// 재질명
  /// </summary>
  String? _itemTextureName;

  /// <summary>
  /// 모델Id
  /// </summary>
  int? _itemModelId;

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
  /// 품목분류코드
  /// </summary>
  String? _itemCategoryCode;

  /// <summary>
  /// 품목분류명
  /// </summary>
  String? _itemCategoryName;

  /// <summary>
  /// 색상코드
  /// </summary>
  String? _itemColorCode;

  /// <summary>
  /// 색상명
  /// </summary>
  String? _itemColorName;

  /// <summary>
  /// 품목색상
  /// </summary>
  int? _itemColorRgb;

  /// <summary>
  /// 캐비티 수
  /// </summary>
  int? _cavity;

  /// <summary>
  /// 계획수량
  /// </summary>
  dynamic _planQuantity;

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
  /// 분당목표수량
  /// </summary>
  dynamic _targetUnitsPerMinute;

  /// <summary>
  /// 현재시간까지 목표수량
  /// </summary>
  dynamic _targetUnitsNow;

  /// <summary>
  /// 시간당 유효생산수량
  /// </summary>
  dynamic _unitsPerHour;

  /// <summary>
  /// 분당 유효생산수량
  /// </summary>
  dynamic _unitsPerMinute;

  /// <summary>
  /// 달성률
  /// </summary>
  dynamic _completionRate;

  /// <summary>
  /// 달성률 기대치
  /// </summary>
  dynamic _expectedCompletionRate;

  /// <summary>
  /// 목표 달성률
  /// </summary>
  dynamic _targetCompletionRate;

  /// <summary>
  /// 불량률
  /// </summary>
  dynamic _defectRate;

  /// region 수작업 지시품목 속성

  int? _workFlowId;

  int? _scheduleId;

  String? _schedulingNumber;

  String? _customSerialNumber;

  String? _additionalSerialNumber;

  /// endregion

  ProductionOrderAggregateLineItem(
      this._id,
      this._orderId,
      this._bomId,
      this._lotId,
      this._lotNumber,
      this._manufactureDate,
      this._productionType,
      this._inventoryManageType,
      this._itemId,
      this._itemCode,
      this._itemName,
      this._itemNumber,
      this._itemSpec,
      this._itemUnit,
      this._itemTextureCode,
      this._itemTextureName,
      this._itemModelId,
      this._itemModelCode,
      this._itemModelName,
      this._itemManufactureCode,
      this._itemManufacturerName,
      this._itemCategoryCode,
      this._itemCategoryName,
      this._itemColorCode,
      this._itemColorName,
      this._itemColorRgb,
      this._cavity,
      this._planQuantity,
      this._effectiveCavity,
      this._productionQuantity,
      this._defectQuantity,
      this._effectiveQuantity,
      this._putAwayQuantity,
      this._targetUnitsPerMinute,
      this._targetUnitsNow,
      this._unitsPerHour,
      this._unitsPerMinute,
      this._completionRate,
      this._expectedCompletionRate,
      this._targetCompletionRate,
      this._defectRate,
      this._workFlowId,
      this._scheduleId,
      this._schedulingNumber,
      this._customSerialNumber,
      this._additionalSerialNumber);

  factory ProductionOrderAggregateLineItem.fromJson(Map<String, dynamic> json) => _$LineItemFromJson(json);

  Map<String, dynamic> toJson() => _$LineItemToJson(this);

  String? get additionalSerialNumber => _additionalSerialNumber;

  String? get customSerialNumber => _customSerialNumber;

  String? get schedulingNumber => _schedulingNumber;

  int? get scheduleId => _scheduleId;

  int? get workFlowId => _workFlowId;

  dynamic get defectRate => _defectRate;

  dynamic get targetCompletionRate => _targetCompletionRate;

  dynamic get expectedCompletionRate => _expectedCompletionRate;

  dynamic get completionRate => _completionRate;

  dynamic get unitsPerMinute => _unitsPerMinute;

  dynamic get unitsPerHour => _unitsPerHour;

  dynamic get targetUnitsNow => _targetUnitsNow;

  dynamic get targetUnitsPerMinute => _targetUnitsPerMinute;

  dynamic get putAwayQuantity => _putAwayQuantity;

  dynamic get effectiveQuantity => _effectiveQuantity;

  dynamic get defectQuantity => _defectQuantity;

  dynamic get productionQuantity => _productionQuantity;

  int? get effectiveCavity => _effectiveCavity;

  dynamic get planQuantity => _planQuantity;

  int? get cavity => _cavity;

  int? get itemColorRgb => _itemColorRgb;

  String? get itemColorName => _itemColorName;

  String? get itemColorCode => _itemColorCode;

  String? get itemCategoryName => _itemCategoryName;

  String? get itemCategoryCode => _itemCategoryCode;

  String? get itemManufacturerName => _itemManufacturerName;

  String? get itemManufactureCode => _itemManufactureCode;

  String? get itemModelName => _itemModelName;

  String? get itemModelCode => _itemModelCode;

  int? get itemModelId => _itemModelId;

  String? get itemTextureName => _itemTextureName;

  String? get itemTextureCode => _itemTextureCode;

  String? get itemUnit => _itemUnit;

  String? get itemSpec => _itemSpec;

  String? get itemNumber => _itemNumber;

  String? get itemName => _itemName;

  String? get itemCode => _itemCode;

  int? get itemId => _itemId;

  String? get inventoryManageType => _inventoryManageType;

  String? get productionType => _productionType;

  String? get manufactureDate => _manufactureDate;

  String? get lotNumber => _lotNumber;

  int? get lotId => _lotId;

  int? get bomId => _bomId;

  int? get orderId => _orderId;

  int? get id => _id;
}

/// <summary>
/// 자재
/// </summary>

class ProductionOrderAggregateMaterial {
  /// <summary>
  /// 자재ID
  /// </summary>
  int? _id;

  /// <summary>
  /// 지시ID
  /// </summary>
  int? _orderId;

  /// <summary>
  /// 단위생산 요구수량
  /// </summary>
  dynamic _unitRequiredQuantity;

  /// <summary>
  /// 단위생산 유효수량
  /// </summary>
  dynamic _unitEffectiveQuantity;

  /// <summary>
  /// 단위생산 로스수량
  /// </summary>
  dynamic _unitLossQuantity;

  /// <summary>
  /// 단위생산 로스율
  /// </summary>
  dynamic _unitLossRate;

  /// <summary>
  /// 투입 수량
  /// </summary>
  dynamic _insertQuantity;

  /// <summary>
  /// Bom 로스수량
  /// </summary>
  dynamic _bomLossQuantity;

  /// <summary>
  /// 기타로스수량
  /// </summary>
  dynamic _otherLossQuantity;

  /// <summary>
  /// 총 로스수량
  /// </summary>
  dynamic _totalLossQuantity;

  /// <summary>
  /// 실제 로스율
  /// </summary>
  dynamic _lossRate;

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
  /// 재고 관리 방식
  /// </summary>
  String? _inventoryManageType;

  /// <summary>
  /// 자동재고 투입 수량 (수기 입력)
  /// </summary>
  dynamic _manualInsertQuantity;

  ProductionOrderAggregateMaterial(
      this._id,
      this._orderId,
      this._unitRequiredQuantity,
      this._unitEffectiveQuantity,
      this._unitLossQuantity,
      this._unitLossRate,
      this._insertQuantity,
      this._bomLossQuantity,
      this._otherLossQuantity,
      this._totalLossQuantity,
      this._lossRate,
      this._itemId,
      this._itemCode,
      this._itemName,
      this._itemNumber,
      this._itemSpec,
      this._itemUnit,
      this._inventoryManageType,
      this._manualInsertQuantity);

  factory ProductionOrderAggregateMaterial.fromJson(Map<String, dynamic> json) => _$MaterialFromJson(json);

  Map<String, dynamic> toJson() => _$MaterialToJson(this);

  dynamic get manualInsertQuantity => _manualInsertQuantity;

  String? get inventoryManageType => _inventoryManageType;

  String? get itemUnit => _itemUnit;

  String? get itemSpec => _itemSpec;

  String? get itemNumber => _itemNumber;

  String? get itemName => _itemName;

  String? get itemCode => _itemCode;

  int? get itemId => _itemId;

  dynamic get lossRate => _lossRate;

  dynamic get totalLossQuantity => _totalLossQuantity;

  dynamic get otherLossQuantity => _otherLossQuantity;

  dynamic get bomLossQuantity => _bomLossQuantity;

  dynamic get insertQuantity => _insertQuantity;

  dynamic get unitLossRate => _unitLossRate;

  dynamic get unitLossQuantity => _unitLossQuantity;

  dynamic get unitEffectiveQuantity => _unitEffectiveQuantity;

  dynamic get unitRequiredQuantity => _unitRequiredQuantity;

  int? get orderId => _orderId;

  int? get id => _id;
}

/// <summary>
/// 작업자
/// </summary>

class ProductionOrderAggregateWorker {
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
  /// 가동시간
  /// </summary>
  String? _actualWorkTime;

  /// <summary>
  /// 작업상태
  /// </summary>
  String? _workerStatus;

  /// <summary>
  /// 실제 작업시간
  /// </summary>
  String? _upTime;

  /// <summary>
  /// 비작업시간
  /// </summary>
  String? _offDutyTime;

  /// <summary>
  /// 재작업 시간
  /// </summary>
  String? _reworkTime;

  /// <summary>
  /// 마지막 비작업 시간
  /// </summary>
  String? _latestOffDutyTime;

  /// <summary>
  /// 마지막 비작업원인ID
  /// </summary>
  int? _latestOffDutyReasonId;

  /// <summary>
  /// 마지막 비작업코드
  /// </summary>
  String? _latestOffDutyReasonCode;

  /// <summary>
  /// 마지막 비작업원인
  /// </summary>
  String? _latestOffDutyReasonName;

  /// <summary>
  /// 마지막 재작업시간
  /// </summary>
  String? _latestReworkTime;

  /// <summary>
  /// 마지막 재작업원인ID
  /// </summary>
  int? _latestReworkReasonId;

  /// <summary>
  /// 마지막 재작업코드
  /// </summary>
  String? _latestReworkReasonCode;

  /// <summary>
  /// 마지막 재작업원인
  /// </summary>
  String? _latestReworkReasonName;


  ProductionOrderAggregateWorker(
      this._id,
      this._orderId,
      this._employeeId,
      this._employeeCode,
      this._employeeName,
      this._actualStartTime,
      this._actualEndTime,
      this._actualWorkTime,
      this._workerStatus,
      this._upTime,
      this._offDutyTime,
      this._reworkTime,
      this._latestOffDutyTime,
      this._latestOffDutyReasonId,
      this._latestOffDutyReasonCode,
      this._latestOffDutyReasonName,
      this._latestReworkTime,
      this._latestReworkReasonId,
      this._latestReworkReasonCode,
      this._latestReworkReasonName);

  factory ProductionOrderAggregateWorker.fromJson(Map<String, dynamic> json) => _$WorkerFromJson(json);

  Map<String, dynamic> toJson() => _$WorkerToJson(this);

  String? get latestReworkReasonName => _latestReworkReasonName;

  String? get latestReworkReasonCode => _latestReworkReasonCode;

  int? get latestReworkReasonId => _latestReworkReasonId;

  String? get latestReworkTime => _latestReworkTime;

  String? get latestOffDutyReasonName => _latestOffDutyReasonName;

  String? get latestOffDutyReasonCode => _latestOffDutyReasonCode;

  int? get latestOffDutyReasonId => _latestOffDutyReasonId;

  String? get latestOffDutyTime => _latestOffDutyTime;

  String? get reworkTime => _reworkTime;

  String? get offDutyTime => _offDutyTime;

  String? get upTime => _upTime;

  String? get workerStatus => _workerStatus;

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
/// 프레스 공정 금형
/// </summary>

class ProductionOrderAggregatePressMold {
  /// <summary>
  /// 프레스 공정 금형Id
  /// </summary>
  int? _id;

  /// <summary>
  /// 지시Id
  /// </summary>
  int? _orderId;

  /// <summary>
  /// 금형Id
  /// </summary>
  int? _moldId;

  /// <summary>
  /// 금형코드
  /// </summary>
  String? _moldCode;

  /// <summary>
  /// 금형명
  /// </summary>
  String? _moldName;

  /// <summary>
  /// 금형번호
  /// </summary>
  String? _moldNumber;

  /// <summary>
  /// 금형 규격
  /// </summary>
  String? _moldSpec;

  /// <summary>
  /// 작업 순서
  /// </summary>
  int? _processOrder;

  /// <summary>
  /// 작업명
  /// </summary>
  String? _processName;

  /// <summary>
  /// 다이 높이
  /// </summary>
  dynamic _dieHeight;

  /// <summary>
  /// 다이 피치
  /// </summary>
  dynamic _diePitch;

  /// <summary>
  /// 캐비티수
  /// </summary>
  int? _count;

  ProductionOrderAggregatePressMold(this._id, this._orderId, this._moldId, this._moldCode, this._moldName, this._moldNumber, this._moldSpec,
      this._processOrder, this._processName, this._dieHeight, this._diePitch, this._count);

  factory ProductionOrderAggregatePressMold.fromJson(Map<String, dynamic> json) => _$PressMoldFromJson(json);

  Map<String, dynamic> toJson() => _$PressMoldToJson(this);

  int? get count => _count;

  dynamic get diePitch => _diePitch;

  dynamic get dieHieght => _dieHeight;

  String? get processName => _processName;

  int? get processOrder => _processOrder;

  String? get moldSpec => _moldSpec;

  String? get moldNumber => _moldNumber;

  String? get moldName => _moldName;

  String? get moldCode => _moldCode;

  int? get moldId => _moldId;

  int? get orderId => _orderId;

  int? get id => _id;
}

/// <summary>
/// 절삭 공정 설비
/// </summary>

class ProductionOrderAggregateCuttingMachine {
  /// <summary>
  /// 절삭 공정 설비Id
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
  /// 금형코드
  /// </summary>
  String? _machineCode;

  /// <summary>
  /// 설비명
  /// </summary>
  String? _machineName;

  /// <summary>
  /// 작업 순서
  /// </summary>
  int? _processOrder;

  /// <summary>
  /// 작업명
  /// </summary>
  String? _processName;

  /// <summary>
  /// 캐비티수
  /// </summary>
  int? _cavityCount;

  /// <summary>
  /// 단위 작업 시간
  /// </summary>
  String? _unitOperatingTime;

  /// <summary>
  /// 단위 이송시간
  /// </summary>
  String? _unitTransferTime;

  /// <summary>
  /// 실적수집 설비 여부
  /// </summary>
  bool? _isCollector;

  /// <summary>
  /// 합계시간
  /// </summary>
  String? _totalTime;

  ProductionOrderAggregateCuttingMachine(
      this._id,
      this._orderId,
      this._machineId,
      this._machineCode,
      this._machineName,
      this._processOrder,
      this._processName,
      this._cavityCount,
      this._unitOperatingTime,
      this._unitTransferTime,
      this._isCollector,
      this._totalTime);

  factory ProductionOrderAggregateCuttingMachine.fromJson(Map<String, dynamic> json) => _$CuttingMachineFromJson(json);

  Map<String, dynamic> toJson() => _$CuttingMachineToJson(this);

  String? get totalTime => _totalTime;

  bool? get isCollector => _isCollector;

  String? get unitTransferTime => _unitTransferTime;

  String? get unitOperatingTime => _unitOperatingTime;

  int? get cavityCount => _cavityCount;

  String? get processName => _processName;

  int? get processOrder => _processOrder;

  String? get machineName => _machineName;

  String? get machineCode => _machineCode;

  int? get machineId => _machineId;

  int? get orderId => _orderId;

  int? get id => _id;
}


/// <summary>
/// 도장 세부 공정 기준
/// </summary>

class ProductionOrderAggregateBasis {
  /// <summary>
  /// Id
  /// </summary>
  int? _id;

  /// <summary>
  /// 생산지시 Id
  /// </summary>
  int? _orderId;

  /// <summary>
  /// 세부공정기준 Id
  /// </summary>
  int? _basisId;

  /// <summary>
  /// 세부공정
  /// </summary>
  String? _description;

  /// <summary>
  /// 작업순서
  /// </summary>
  int? _processOrder;

  /// <summary>
  /// 작업횟수
  /// </summary>
  int? _frequency;

  /// <summary>
  /// 건조시간
  /// </summary>
  String? _unitOperatingTime;

  /// <summary>
  /// 스피드
  /// </summary>
  dynamic _speed;

  /// <summary>
  /// 피치
  /// </summary>
  dynamic _pitch;

  /// <summary>
  /// 로딩 수
  /// </summary>
  int? _loadingQuantity;

  /// <summary>
  /// 사이클타임
  /// </summary>
  String? _cycleTime;

  ProductionOrderAggregateBasis(this._id, this._orderId, this._basisId, this._description, this._processOrder, this._frequency,
      this._unitOperatingTime, this._speed, this._pitch, this._loadingQuantity, this._cycleTime);

  factory ProductionOrderAggregateBasis.fromJson(Map<String, dynamic> json) => _$BasisFromJson(json);

  Map<String, dynamic> toJson() => _$BasisToJson(this);

  String? get cycleTime => _cycleTime;

  int? get loadingQuantity => _loadingQuantity;

  dynamic get pitch => _pitch;

  dynamic get speed => _speed;

  String? get unitOperatingTime => _unitOperatingTime;

  int? get frequency => _frequency;

  int? get processOrder => _processOrder;

  String? get description => _description;

  int? get basisId => _basisId;

  int? get orderId => _orderId;

  int? get id => _id;
}