
import 'package:json_annotation/json_annotation.dart';

import '../../../../../Base/Type/FifoStandard.dart';
import '../../../../../Util/Helper/Parsing/ApiJsonKey.dart';

part '../Convert/GoodsPickingInspectConvert.dart';

/// <summary>
/// 출고정보+검사정보
/// </summary>

class GoodsPickingInspectDto {
  /// <summary>
  /// 출고ID
  /// </summary>
  int? _pickingId;

  /// <summary>
  /// 출고유형
  /// </summary>
  String? _pickingType;

  /// <summary>
  /// 작업번호
  /// </summary>
  String? _pickingNumber;

  /// <summary>
  /// 작업일시
  /// </summary>
  String? _pickingTime;

  /// <summary>
  /// 출하완료여부
  /// </summary>
  bool? _issueCompleted;

  /// <summary>
  /// 공장Id
  /// </summary>
  int? _factoryId;

  /// <summary>
  /// 공장코드
  /// </summary>
  String? _factoryCode;

  /// <summary>
  /// 공장이름
  /// </summary>
  String? _factoryName;

  /// <summary>
  /// 품목분류Id
  /// </summary>
  int? _itemCategoryId;

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
  /// 수주업체Id
  /// </summary>
  int? _buyerId;

  /// <summary>
  /// 수저업체코드
  /// </summary>
  String? _buyerCode;

  /// <summary>
  /// 수주업체명
  /// </summary>
  String? _buyerName;

  /// <summary>
  /// 납품업체Id
  /// </summary>
  int? _receiverId;

  /// <summary>
  /// 납품업체코드
  /// </summary>
  String? _receiverCode;

  /// <summary>
  /// 납품업체명
  /// </summary>
  String? _receiverName;

  /// <summary>
  /// 메모
  /// </summary>
  String? _memo;

  /// <summary>
  /// 출고라인ID
  /// </summary>
  int? _pickingLineId;

  /// <summary>
  /// 수주라인ID.
  /// 표준출고시 수주를 참조하기 위해 사용한다.
  /// </summary>
  int? _salesOrderLineId;

  /// <summary>
  /// 외주발주라인ID.
  /// 외주출고시 외주를 참조하기 위해 사용한다.
  /// </summary>
  int? _subcontractOrderLineId;

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
  /// 품목분류이름
  /// </summary>
  String? _itemCategoryName;

  /// <summary>
  /// 출고수량
  /// </summary>
  dynamic _pickingQty;

  /// <summary>
  /// 창고ID
  /// </summary>
  int? _warehouseId;

  /// <summary>
  /// 창고코드
  /// </summary>
  String? _warehouseCode;

  /// <summary>
  /// 창고명
  /// </summary>
  String? _warehouseName;

  /// <summary>
  /// 선입선출 기준
  /// </summary>
  FifoStandard? _fifoStandard;

  /// <summary>
  /// 출고위치Id
  /// </summary>
  int? _destinationId;

  /// <summary>
  /// 출고위치코드
  /// </summary>
  String? _destinationCode;

  /// <summary>
  /// 출고위치이름
  /// </summary>
  String? _destinationName;

  /// <summary>
  /// 출고위치그룹Id
  /// </summary>
  int? _locationGroupId;

  /// <summary>
  /// 출고위치그룹코드
  /// </summary>
  String? _locationGroupCode;

  /// <summary>
  /// 출고위치그룹명
  /// </summary>
  String? _locationGroupName;

  /// <summary>
  /// 총 출하검사 횟수
  /// </summary>
  int? _totalInspectionCount;

  /// <summary>
  /// 출하검사 실행 여부
  /// </summary>
  bool? _inspectionConducted;

  /// <summary>
  /// 출하검사 상태
  /// </summary>
  String? _inspectionStatus;

  /// <summary>
  /// 출고 대상 로트번호들
  /// </summary>
  String? _lotNumbers;

  /// <summary>
  /// 출고 대상 로트Id 목록
  /// </summary>
  List<int>? _lotIds;


  GoodsPickingInspectDto(this._pickingId, this._pickingType, this._pickingNumber, this._pickingTime, this._issueCompleted,
      this._factoryId, this._factoryCode, this._factoryName, this._itemCategoryId, this._managerId, this._managerCode,
      this._managerName, this._buyerId, this._buyerCode, this._buyerName, this._receiverId, this._receiverCode,
      this._receiverName, this._memo, this._pickingLineId, this._salesOrderLineId, this._subcontractOrderLineId, this._itemId,
      this._itemCode, this._itemName, this._itemNumber, this._itemSpec, this._itemUnit, this._itemCategoryCode,
      this._itemCategoryName, this._pickingQty, this._warehouseId, this._warehouseCode, this._warehouseName,
      this._fifoStandard, this._destinationId, this._destinationCode, this._destinationName, this._locationGroupId,
      this._locationGroupCode, this._locationGroupName, this._totalInspectionCount, this._inspectionConducted,
      this._inspectionStatus, this._lotNumbers, this._lotIds);

    factory GoodsPickingInspectDto.fromJson(Map<String, dynamic> json)
    => _$GoodsPickingInspectDtoFromJson(json);
    Map<String, dynamic> toJson() => _$GoodsPickingInspectDtoToJson(this);

  List<int>? get lotIds => _lotIds;

  String? get lotNumbers => _lotNumbers;

  String? get inspectionStatus => _inspectionStatus;

  bool? get inspectionConducted => _inspectionConducted;

  int? get totalInspectionCount => _totalInspectionCount;

  String? get locationGroupName => _locationGroupName;

  String? get locationGroupCode => _locationGroupCode;

  int? get locationGroupId => _locationGroupId;

  String? get destinationName => _destinationName;

  String? get destinationCode => _destinationCode;

  int? get destinationId => _destinationId;

  FifoStandard? get fifoStandard => _fifoStandard;

  String? get warehouseName => _warehouseName;

  String? get warehouseCode => _warehouseCode;

  int? get warehouseId => _warehouseId;

  dynamic get pickingQty => _pickingQty;

  String? get itemCategoryName => _itemCategoryName;

  String? get itemCategoryCode => _itemCategoryCode;

  String? get itemUnit => _itemUnit;

  String? get itemSpec => _itemSpec;

  String? get itemNumber => _itemNumber;

  String? get itemName => _itemName;

  String? get itemCode => _itemCode;

  int? get itemId => _itemId;

  int? get subcontractOrderLineId => _subcontractOrderLineId;

  int? get salesOrderLineId => _salesOrderLineId;

  int? get pickingLineId => _pickingLineId;

  String? get memo => _memo;

  String? get receiverName => _receiverName;

  String? get receiverCode => _receiverCode;

  int? get receiverId => _receiverId;

  String? get buyerName => _buyerName;

  String? get buyerCode => _buyerCode;

  int? get buyerId => _buyerId;

  String? get managerName => _managerName;

  String? get managerCode => _managerCode;

  int? get managerId => _managerId;

  int? get itemCategoryId => _itemCategoryId;

  String? get factoryName => _factoryName;

  String? get factoryCode => _factoryCode;

  int? get factoryId => _factoryId;

  bool? get issueCompleted => _issueCompleted;

  String? get pickingTime => _pickingTime;

  String? get pickingNumber => _pickingNumber;

  String? get pickingType => _pickingType;

  int? get pickingId => _pickingId;
}