
import 'package:json_annotation/json_annotation.dart';

import '../../../../../Base/Type/Currency.dart';
import '../../../../../Util/Helper/Parsing/ApiJsonKey.dart';
import '../../../../MasterData/Model/Type/ConfirmType.dart';
import '../../../Purchase/Model/Type/PurchaseReceiptType.dart';
import '../Type/ClosingReferenceType.dart';
import '../Type/PurchaseClosingType.dart';

part '../Convert/PurchaseClosingSummaryConvert.dart';

class PurchaseClosingSummaryDto {
  /// <summary>
  /// 마감 Id
  /// </summary>
  int? _closingId;

  /// <summary>
  /// 공장 Id
  /// </summary>
  int? _factoryId;

  /// <summary>
  /// 공장코드
  /// </summary>
  String? _factoryCode;

  /// <summary>
  /// 공장명
  /// </summary>
  String? _factoryName;

  /// <summary>
  /// 마감일시
  /// </summary>
  String? _closingTime;

  /// <summary>
  /// 마감근거
  /// </summary>
  String? _reason;

  /// <summary>
  /// 메모
  /// </summary>
  String? _memo;

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
  /// 발주업체 ID
  /// </summary>
  int? _sellerId;

  /// <summary>
  /// 발주업체 코드
  /// </summary>
  String? _sellerCode;

  /// <summary>
  /// 발주업체명
  /// </summary>
  String? _sellerName;

  /// <summary>
  /// 마감번호
  /// </summary>
  String? _closingNumber;

  /// <summary>
  /// 마감구분
  /// </summary>
  PurchaseClosingType? _closingType;

  /// <summary>
  /// 참조구분
  /// </summary>
  ClosingReferenceType? _referenceType;

  /// <summary>
  /// 총 공급가액
  /// </summary>
  double? _totalNetAmount;

  /// <summary>
  /// 총 부가세액
  /// </summary>
  double? _totalVatAmount;

  /// <summary>
  /// 총 마감금액
  /// </summary>
  double? _totalGrossAmount;

  /// <summary>
  /// 마감라인 Id
  /// </summary>
  int? _closingLineId;

  /// <summary>
  /// 구매입하 품목
  /// </summary>
  int? _receiptLineId;

  /// <summary>
  /// 입하구분
  /// </summary>
  PurchaseReceiptType? _receiptType;

  /// <summary>
  /// 입하순번
  /// </summary>
  String? _receiptNumber;

  /// <summary>
  /// 입하 수량
  /// </summary>
  double? _receiptQuantity;

  /// <summary>
  /// 유효입하수량
  /// </summary>
  double? _effectiveReceiptQuantity;

  /// <summary>
  /// 반품수량
  /// </summary>
  double? _returnQuantity;

  /// <summary>
  /// 미반품수량
  /// </summary>
  double? _nonReturnQuantity;

  /// <summary>
  /// 마감완료여부
  /// </summary>
  bool? _closingCompleted;

  /// <summary>
  /// 품목분류 ID
  /// </summary>
  int? _itemCategoryId;

  /// <summary>
  /// 품목분류 코드
  /// </summary>
  String? _itemCategoryCode;

  /// <summary>
  /// 품목분류명
  /// </summary>
  String? _itemCategoryName;

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
  String? __itemManufacturerCode;

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
  /// 납품구분
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

  /// <summary>
  /// 마감수량
  /// </summary>
  double? _closingQuantity;

  /// <summary>
  /// 미마감수량
  /// </summary>
  double? _nonClosingQuantity;

  /// <summary>
  /// 확정구분
  /// </summary>
  ConfirmType? _confirmType;

  /// <summary>
  /// 통화
  /// </summary>
  Currency? _currency;

  /// <summary>
  /// 품목 가격
  /// </summary>
  double? _unitPrice;

  /// <summary>
  ///  부가세율(%)
  /// </summary>
  double? _vatRate;

  /// <summary>
  /// 부가세 사용 여부
  /// </summary>
  bool? _vatIncluded;

  /// <summary>
  /// 공급가액
  /// </summary>
  double? _netAmount;

  /// <summary>
  /// 부가세
  /// </summary>
  double? _vatAmount;

  /// <summary>
  /// 공급대가
  /// </summary>
  double? _grossAmount;

  PurchaseClosingSummaryDto(
      this._closingId,
      this._factoryId,
      this._factoryCode,
      this._factoryName,
      this._closingTime,
      this._reason,
      this._memo,
      this._managerId,
      this._managerCode,
      this._managerName,
      this._sellerId,
      this._sellerCode,
      this._sellerName,
      this._closingNumber,
      this._closingType,
      this._referenceType,
      this._totalNetAmount,
      this._totalVatAmount,
      this._totalGrossAmount,
      this._closingLineId,
      this._receiptLineId,
      this._receiptType,
      this._receiptNumber,
      this._receiptQuantity,
      this._effectiveReceiptQuantity,
      this._returnQuantity,
      this._nonReturnQuantity,
      this._closingCompleted,
      this._itemCategoryId,
      this._itemCategoryCode,
      this._itemCategoryName,
      this._itemId,
      this._itemCode,
      this._itemName,
      this._itemNumber,
      this._itemSpec,
      this._itemUnit,
      this._itemModelId,
      this._itemModelCode,
      this._itemModelName,
      this._itemColorId,
      this._itemColorCode,
      this._itemColorName,
      this._itemColorRgb,
      this._itemManufacturerId,
      this.__itemManufacturerCode,
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
      this._deliveryTypeName,
      this._closingQuantity,
      this._nonClosingQuantity,
      this._confirmType,
      this._currency,
      this._unitPrice,
      this._vatRate,
      this._vatIncluded,
      this._netAmount,
      this._vatAmount,
      this._grossAmount);

  factory PurchaseClosingSummaryDto.fromJson(Map<String, dynamic> json) => _$PurchaseClosingSummaryDtoFromJson(json);

  Map<String, dynamic> toJson() => _$PurchaseClosingSummaryDtoToJson(this);

  double? get grossAmount => _grossAmount;

  double? get vatAmount => _vatAmount;

  double? get netAmount => _netAmount;

  bool? get vatIncluded => _vatIncluded;

  double? get vatRate => _vatRate;

  double? get unitPrice => _unitPrice;

  Currency? get currency => _currency;

  ConfirmType? get confirmType => _confirmType;

  double? get nonClosingQuantity => _nonClosingQuantity;

  double? get closingQuantity => _closingQuantity;

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

  String? get _itemManufacturerCode => __itemManufacturerCode;

  int? get itemManufacturerId => _itemManufacturerId;

  int? get itemColorRgb => _itemColorRgb;

  String? get itemColorName => _itemColorName;

  String? get itemColorCode => _itemColorCode;

  int? get itemColorId => _itemColorId;

  String? get itemModelName => _itemModelName;

  String? get itemModelCode => _itemModelCode;

  int? get itemModelId => _itemModelId;

  String? get itemUnit => _itemUnit;

  String? get itemSpec => _itemSpec;

  String? get itemNumber => _itemNumber;

  String? get itemName => _itemName;

  String? get itemCode => _itemCode;

  int? get itemId => _itemId;

  String? get itemCategoryName => _itemCategoryName;

  String? get itemCategoryCode => _itemCategoryCode;

  int? get itemCategoryId => _itemCategoryId;

  bool? get closingCompleted => _closingCompleted;

  double? get nonReturnQuantity => _nonReturnQuantity;

  double? get returnQuantity => _returnQuantity;

  double? get effectiveReceiptQuantity => _effectiveReceiptQuantity;

  double? get receiptQuantity => _receiptQuantity;

  String? get receiptNumber => _receiptNumber;

  PurchaseReceiptType? get receiptType => _receiptType;

  int? get receiptLineId => _receiptLineId;

  int? get closingLineId => _closingLineId;

  double? get totalGrossAmount => _totalGrossAmount;

  double? get totalVatAmount => _totalVatAmount;

  double? get totalNetAmount => _totalNetAmount;

  ClosingReferenceType? get referenceType => _referenceType;

  PurchaseClosingType? get closingType => _closingType;

  String? get closingNumber => _closingNumber;

  String? get sellerName => _sellerName;

  String? get sellerCode => _sellerCode;

  int? get sellerId => _sellerId;

  String? get managerName => _managerName;

  String? get managerCode => _managerCode;

  int? get managerId => _managerId;

  String? get memo => _memo;

  String? get reason => _reason;

  String? get closingTime => _closingTime;

  String? get factoryName => _factoryName;

  String? get factoryCode => _factoryCode;

  int? get factoryId => _factoryId;

  int? get closingId => _closingId;
}
