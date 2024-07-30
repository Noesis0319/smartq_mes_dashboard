

import 'package:json_annotation/json_annotation.dart';

import '../../../../../Base/Type/Currency.dart';
import '../../../../../Util/Helper/Parsing/ApiJsonKey.dart';
import '../../../../MasterData/Model/Type/ConfirmType.dart';
import '../../../Inventory/Model/Type/InventoryManageType.dart';
import '../../../Production/Common/Model/Type/EnrollmentType.dart';
import '../Type/GoodsIssueType.dart';

part '../Convert/GoodsIssueSummaryConvert.dart';

class GoodsIssueSummaryDto {
  /// <summary>
  /// Id
  /// </summary>
  int? _issueId;

  /// <summary>
  /// 등록구분
  /// </summary>
  EnrollmentType? _enrollmentType;

  /// <summary>
  /// 작업번호
  /// </summary>
  String? _issueNumber;

  /// <summary>
  /// 출하일시
  /// </summary>
  String? _issueTime;

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
  /// 수주업체Id
  /// </summary>
  int? _buyerId;

  /// <summary>
  /// 수주업체코드
  /// </summary>
  String? _buyerCode;

  /// <summary>
  /// 수주업체명
  /// </summary>
  String? _buyerName;

  /// <summary>
  /// 수주업체 Brn
  /// </summary>
  String? _buyerBrn;

  /// <summary>
  /// 수령업체Id
  /// </summary>
  int? _receiverId;

  /// <summary>
  /// 수령업체코드
  /// </summary>
  String? _receiverCode;

  /// <summary>
  /// 수령업체이름
  /// </summary>
  String? _receiverName;

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
  /// 메모
  /// </summary>
  String? _memo;

  /// <summary>
  /// 마감년월
  /// </summary>
  String? _dueMonth;

  /// <summary>
  /// 선별출고Id
  /// </summary>
  int? _pickingId;

  /// <summary>
  /// 출하완료여부
  /// </summary>
  bool? _issueCompleted;

  /// <summary>
  /// 출하라인Id
  /// </summary>
  int? _issueLineId;

  /// <summary>
  /// 출하구분
  /// </summary>
  GoodsIssueType? _issueType;

  /// <summary>
  /// 영업수주 라인 Id
  /// </summary>
  int? _salesOrderLineId;

  /// <summary>
  /// 출하예정일자
  /// </summary>
  String? _issueDueDate;

  /// <summary>
  /// 영업수주수량 대비 미출하수량
  /// </summary>
  dynamic _issueQuantityLeft;

  /// <summary>
  /// 외주발주 라인 Id
  /// </summary>
  int? _subcontractOrderLineId;

  /// <summary>
  /// 출하 수량
  /// </summary>
  dynamic _issueQuantity;

  /// <summary>
  /// 반입수량
  /// </summary>
  dynamic _returnQuantity;

  /// <summary>
  /// 미반입수량
  /// </summary>
  dynamic _nonReturnQuantity;

  /// <summary>
  /// 반입완료여부
  /// </summary>
  bool? _returnCompleted;

  /// <summary>
  /// 확정구분
  /// </summary>
  ConfirmType? _confirmType;

  /// <summary>
  /// 품목 가격
  /// </summary>
  dynamic _unitPrice;

  /// <summary>
  /// 통화
  /// </summary>
  Currency? _currency;

  /// <summary>
  ///  부가세율(%)
  /// </summary>
  dynamic _vatRate;

  /// <summary>
  /// 부가세 사용 여부
  /// </summary>
  bool? _vatIncluded;

  /// <summary>
  /// 공급가액
  /// </summary>
  dynamic _netAmount;

  /// <summary>
  /// 부가세
  /// </summary>
  dynamic _vatAmount;

  /// <summary>
  /// 공급대가
  /// </summary>
  dynamic _grossAmount;

  /// <summary>
  /// 마감 사용여부
  /// </summary>
  bool? _useClosing;

  /// <summary>
  /// 재고관리방법
  /// </summary>
  InventoryManageType? _inventoryManageType;

  /// <summary>
  /// 마감수량
  /// </summary>
  dynamic _closingQuantity;

  /// <summary>
  /// 미마감수량
  /// </summary>
  dynamic _nonClosingQuantity;

  /// <summary>
  /// 마감완료여부
  /// </summary>
  bool? _closingCompleted;

  String? _closingStatus;

  /// <summary>
  /// 마감 공급가액
  /// </summary>
  dynamic _closingNetAmount;

  /// <summary>
  /// 마감 부가세액
  /// </summary>
  dynamic _closingVatAmount;

  /// <summary>
  /// 마감 공급대가
  /// </summary>
  dynamic _closingGrossAmount;

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
  /// 품목분류 Id
  /// </summary>
  int? _itemCategoryId;

  /// <summary>
  /// 품목분류코드
  /// </summary>
  String? _itemCategoryCode;

  /// <summary>
  /// 품목분류이름
  /// </summary>
  String? _itemCategoryName;

  /// <summary>
  /// 모델Id
  /// </summary>
  int? _itemModelId;

  /// <summary>
  /// 모델코드
  /// </summary>
  String? _itemModelCode;

  /// <summary>
  /// 모델이름
  /// </summary>
  String? _itemModelName;

  /// <summary>
  /// 품목색상ID
  /// </summary>
  int? _itemColorId;

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
  /// 제조사Id
  /// </summary>
  int? _itemManufacturerId;

  /// <summary>
  /// 제조사코드
  /// </summary>
  String? _itemManufacturerCode;

  /// <summary>
  /// 제조사이름
  /// </summary>
  String? _itemManufacturerName;

  /// <summary>
  /// 그룹Id
  /// </summary>
  int? _itemGroupId;

  /// <summary>
  /// 그룹코드
  /// </summary>
  String? _itemGroupCode;

  /// <summary>
  /// 그룹이름
  /// </summary>
  String? _itemGroupName;

  /// <summary>
  /// 대그룹Id
  /// </summary>
  int? _itemMajorGroupId;

  /// <summary>
  /// 대그룹코드
  /// </summary>
  String? _itemMajorGroupCode;

  /// <summary>
  /// 대그룹이름
  /// </summary>
  String? _itemMajorGroupName;

  /// <summary>
  /// 품목재질Id
  /// </summary>
  int? _itemTextureId;

  /// <summary>
  /// 재질코드
  /// </summary>
  String? _itemTextureCode;

  /// <summary>
  /// 재질명
  /// </summary>
  String? _itemTextureName;

  /// <summary>
  /// 납품구분Id
  /// </summary>
  int? _deliveryTypeId;

  /// <summary>
  /// 납품구분코드
  /// </summary>
  String? _deliveryTypeCode;

  /// <summary>
  /// 납품구분이름
  /// </summary>
  String? _deliveryTypeName;


  GoodsIssueSummaryDto(
      this._issueId,
      this._enrollmentType,
      this._issueNumber,
      this._issueTime,
      this._factoryId,
      this._factoryCode,
      this._factoryName,
      this._buyerId,
      this._buyerCode,
      this._buyerName,
      this._buyerBrn,
      this._receiverId,
      this._receiverCode,
      this._receiverName,
      this._managerId,
      this._managerCode,
      this._managerName,
      this._memo,
      this._dueMonth,
      this._pickingId,
      this._issueCompleted,
      this._issueLineId,
      this._issueType,
      this._salesOrderLineId,
      this._issueDueDate,
      this._issueQuantityLeft,
      this._subcontractOrderLineId,
      this._issueQuantity,
      this._returnQuantity,
      this._nonReturnQuantity,
      this._returnCompleted,
      this._confirmType,
      this._unitPrice,
      this._currency,
      this._vatRate,
      this._vatIncluded,
      this._netAmount,
      this._vatAmount,
      this._grossAmount,
      this._useClosing,
      this._inventoryManageType,
      this._closingQuantity,
      this._nonClosingQuantity,
      this._closingCompleted,
      this._closingStatus,
      this._closingNetAmount,
      this._closingVatAmount,
      this._closingGrossAmount,
      this._itemId,
      this._itemCode,
      this._itemName,
      this._itemNumber,
      this._itemSpec,
      this._itemUnit,
      this._itemCategoryId,
      this._itemCategoryCode,
      this._itemCategoryName,
      this._itemModelId,
      this._itemModelCode,
      this._itemModelName,
      this._itemColorId,
      this._itemColorCode,
      this._itemColorName,
      this._itemColorRgb,
      this._itemManufacturerId,
      this._itemManufacturerCode,
      this._itemManufacturerName,
      this._itemGroupId,
      this._itemGroupCode,
      this._itemGroupName,
      this._itemMajorGroupId,
      this._itemMajorGroupCode,
      this._itemMajorGroupName,
      this._itemTextureId,
      this._itemTextureCode,
      this._itemTextureName,
      this._deliveryTypeId,
      this._deliveryTypeCode,
      this._deliveryTypeName);

  factory GoodsIssueSummaryDto.fromJson(Map<String, dynamic> json) => _$GoodsIssueSummaryDtoFromJson(json);

  Map<String, dynamic> toJson() => _$GoodsIssueSummaryDtoToJson(this);

  String? get deliveryTypeName => _deliveryTypeName;

  String? get deliveryTypeCode => _deliveryTypeCode;

  int? get deliveryTypeId => _deliveryTypeId;

  String? get itemTextureName => _itemTextureName;

  String? get itemTextureCode => _itemTextureCode;

  int? get itemTextureId => _itemTextureId;

  String? get itemMajorGroupName => _itemMajorGroupName;

  String? get itemMajorGroupCode => _itemMajorGroupCode;

  int? get itemMajorGroupId => _itemMajorGroupId;

  String? get itemGroupName => _itemGroupName;

  String? get itemGroupCode => _itemGroupCode;

  int? get itemGroupId => _itemGroupId;

  String? get itemManufacturerName => _itemManufacturerName;

  String? get itemManufacturerCode => _itemManufacturerCode;

  int? get itemManufacturerId => _itemManufacturerId;

  int? get itemColorRgb => _itemColorRgb;

  String? get itemColorName => _itemColorName;

  String? get itemColorCode => _itemColorCode;

  int? get itemColorId => _itemColorId;

  String? get itemModelName => _itemModelName;

  String? get itemModelCode => _itemModelCode;

  int? get itemModelId => _itemModelId;

  String? get itemCategoryName => _itemCategoryName;

  String? get itemCategoryCode => _itemCategoryCode;

  int? get itemCategoryId => _itemCategoryId;

  String? get itemUnit => _itemUnit;

  String? get itemSpec => _itemSpec;

  String? get itemNumber => _itemNumber;

  String? get itemName => _itemName;

  String? get itemCode => _itemCode;

  int? get itemId => _itemId;

  dynamic get closingGrossAmount => _closingGrossAmount;

  dynamic get closingVatAmount => _closingVatAmount;

  dynamic get closingNetAmount => _closingNetAmount;

  String? get closingStatus => _closingStatus;

  bool? get closingCompleted => _closingCompleted;

  dynamic get nonClosingQuantity => _nonClosingQuantity;

  dynamic get closingQuantity => _closingQuantity;

  InventoryManageType? get inventoryManageType => _inventoryManageType;

  bool? get useClosing => _useClosing;

  dynamic get grossAmount => _grossAmount;

  dynamic get vatAmount => _vatAmount;

  dynamic get netAmount => _netAmount;

  bool? get vatIncluded => _vatIncluded;

  dynamic get vatRate => _vatRate;

  Currency? get currency => _currency;

  dynamic get unitPrice => _unitPrice;

  ConfirmType? get confirmType => _confirmType;

  bool? get returnCompleted => _returnCompleted;

  dynamic get nonReturnQuantity => _nonReturnQuantity;

  dynamic get returnQuantity => _returnQuantity;

  dynamic get issueQuantity => _issueQuantity;

  int? get subcontractOrderLineId => _subcontractOrderLineId;

  dynamic get issueQuantityLeft => _issueQuantityLeft;

  String? get issueDueDate => _issueDueDate;

  int? get salesOrderLineId => _salesOrderLineId;

  GoodsIssueType? get issueType => _issueType;

  int? get issueLineId => _issueLineId;

  bool? get issueCompleted => _issueCompleted;

  int? get pickingId => _pickingId;

  String? get dueMonth => _dueMonth;

  String? get memo => _memo;

  String? get managerName => _managerName;

  String? get managerCode => _managerCode;

  int? get managerId => _managerId;

  String? get receiverName => _receiverName;

  String? get receiverCode => _receiverCode;

  int? get receiverId => _receiverId;

  String? get buyerBrn => _buyerBrn;

  String? get buyerName => _buyerName;

  String? get buyerCode => _buyerCode;

  int? get buyerId => _buyerId;

  String? get factoryName => _factoryName;

  String? get factoryCode => _factoryCode;

  int? get factoryId => _factoryId;

  String? get issueTime => _issueTime;

  String? get issueNumber => _issueNumber;

  EnrollmentType? get enrollmentType => _enrollmentType;

  int? get issueId => _issueId;
}
