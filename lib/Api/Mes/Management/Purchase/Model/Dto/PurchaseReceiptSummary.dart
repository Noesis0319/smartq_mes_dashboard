
import 'package:json_annotation/json_annotation.dart';

import '../../../../../base/type/Currency.dart';
import '../../../../../util/helper/parsing/ApiJsonKey.dart';
import '../../../../MasterData/model/type/ConfirmType.dart';
import '../../../inventory/model/type/InventoryManageType.dart';
import '../type/PurchaseReceiptType.dart';

part '../Convert/PurchaseReceiptSummaryConvert.dart';

class PurchaseReceiptSummaryDto {
  /// <summary>
  /// 공장Id
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
  /// Id
  /// </summary>
  int? _receiptId;

  /// <summary>
  /// 입하 순번
  /// </summary>
  String? _receiptNumber;

  /// <summary>
  /// 송장번호
  /// </summary>
  String? _invoiceNumber;

  /// <summary>
  /// 입하구분
  /// </summary>
  PurchaseReceiptType? _receiptType;

  /// <summary>
  /// 입하일시
  /// </summary>
  String? _receiptTime;

  /// <summary>
  /// 마감월
  /// </summary>
  String? _dueMonth;

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
  /// 판매처
  /// </summary>
  int? _sellerId;

  /// <summary>
  /// 판매처
  /// </summary>
  String? _sellerCode;

  /// <summary>
  /// 판매처
  /// </summary>
  String? _sellerName;

  /// <summary>
  /// 발주업체 통화구분
  /// </summary>
  Currency? _sellerCurrency;

  /// <summary>
  /// 공급처
  /// </summary>
  int? _senderId;

  /// <summary>
  /// 공급처
  /// </summary>
  String? _senderCode;

  /// <summary>
  /// 공급처
  /// </summary>
  String? _senderName;

  /// <summary>
  /// 라인ID
  /// </summary>
  int? _receiptLineId;

  /// <summary>
  /// 구매발주라인ID
  /// </summary>
  int? _orderLineId;

  /// <summary>
  /// 로트ID
  /// </summary>
  int? _lotId;

  /// <summary>
  /// 로트번호
  /// </summary>
  String? _lotNumber;

  /// <summary>
  /// 제조로트번호
  /// </summary>
  String? _manufactureNumber;

  /// <summary>
  /// 제조일자
  /// </summary>
  String? _manufactureDate;

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
  dynamic _unitPrice;

  /// <summary>
  ///  부가세율(%)
  /// </summary>
  dynamic _vatRate;

  /// <summary>
  /// 부가세 사용 여부
  /// </summary>
  bool? _vatIncluded;

  /// <summary>
  /// 마감사용여부
  /// </summary>
  bool? _useClosing;

  /// <summary>
  /// 재고 관리 유형 (라벨재고/자동재고)
  /// </summary>
  InventoryManageType? _inventoryManageType;

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
  /// 입하 수량
  /// </summary>
  dynamic _receiptQuantity;

  /// <summary>
  /// 유효입하수량
  /// </summary>
  dynamic _effectiveReceiptQuantity;

  /// <summary>
  /// 입고수량
  /// </summary>
  dynamic _putAwayQuantity;

  /// <summary>
  /// 미입고수량
  /// </summary>
  dynamic _nonPutAwayQuantity;

  /// <summary>
  /// 입고완료여부
  /// </summary>
  bool? _putAwayCompleted;

  /// <summary>
  /// 반품수량
  /// </summary>
  dynamic _returnQuantity;

  /// <summary>
  /// 미반품수량
  /// </summary>
  dynamic _nonReturnQuantity;

  /// <summary>
  /// 반품완료여부
  /// </summary>
  bool? _returnCompleted;

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

  /// <summary>
  /// 마감상태
  /// </summary>
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
  /// 해당 로트기준 수입검사 실행 횟수
  /// </summary>
  int? _inspectionCount;

  /// <summary>
  /// 수입검사 실행 여부
  /// </summary>
  bool? _inspectionConducted;

  /// <summary>
  /// 수입검사 상태
  /// </summary>
  String? _inspectionStatus;

  /// <summary>
  /// 품목분류 Id
  /// </summary>
  int? _itemCategoryId;

  /// <summary>
  /// 품목 분류코드
  /// </summary>
  String? _itemCategoryCode;

  /// <summary>
  /// 품목 분류명
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


  PurchaseReceiptSummaryDto(
      this._factoryId,
      this._factoryCode,
      this._factoryName,
      this._receiptId,
      this._receiptNumber,
      this._invoiceNumber,
      this._receiptType,
      this._receiptTime,
      this._dueMonth,
      this._memo,
      this._managerId,
      this._managerCode,
      this._managerName,
      this._sellerId,
      this._sellerCode,
      this._sellerName,
      this._sellerCurrency,
      this._senderId,
      this._senderCode,
      this._senderName,
      this._receiptLineId,
      this._orderLineId,
      this._lotId,
      this._lotNumber,
      this._manufactureNumber,
      this._manufactureDate,
      this._confirmType,
      this._currency,
      this._unitPrice,
      this._vatRate,
      this._vatIncluded,
      this._useClosing,
      this._inventoryManageType,
      this._netAmount,
      this._vatAmount,
      this._grossAmount,
      this._receiptQuantity,
      this._effectiveReceiptQuantity,
      this._putAwayQuantity,
      this._nonPutAwayQuantity,
      this._putAwayCompleted,
      this._returnQuantity,
      this._nonReturnQuantity,
      this._returnCompleted,
      this._closingQuantity,
      this._nonClosingQuantity,
      this._closingCompleted,
      this._closingStatus,
      this._closingNetAmount,
      this._closingVatAmount,
      this._closingGrossAmount,
      this._inspectionCount,
      this._inspectionConducted,
      this._inspectionStatus,
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

  factory PurchaseReceiptSummaryDto.fromJson(Map<String, dynamic> json)
  => _$PurchaseReceiptSummaryDtoFromJson(json);

  Map<String, dynamic> toJson() => _$PurchaseReceiptSummaryDtoToJson(this);

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

  String? get itemUnit => _itemUnit;

  String? get itemSpec => _itemSpec;

  String? get itemNumber => _itemNumber;

  String? get itemName => _itemName;

  String? get itemCode => _itemCode;

  int? get itemId => _itemId;

  String? get itemCategoryName => _itemCategoryName;

  String? get itemCategoryCode => _itemCategoryCode;

  int? get itemCategoryId => _itemCategoryId;

  String? get inspectionStatus => _inspectionStatus;

  bool? get inspectionConducted => _inspectionConducted;

  int? get inspectionCount => _inspectionCount;

  dynamic get closingGrossAmount => _closingGrossAmount;

  dynamic get closingVatAmount => _closingVatAmount;

  dynamic get closingNetAmount => _closingNetAmount;

  String? get closingStatus => _closingStatus;

  bool? get closingCompleted => _closingCompleted;

  dynamic get nonClosingQuantity => _nonClosingQuantity;

  dynamic get closingQuantity => _closingQuantity;

  bool? get returnCompleted => _returnCompleted;

  dynamic get nonReturnQuantity => _nonReturnQuantity;

  dynamic get returnQuantity => _returnQuantity;

  bool? get putAwayCompleted => _putAwayCompleted;

  dynamic get nonPutAwayQuantity => _nonPutAwayQuantity;

  dynamic get putAwayQuantity => _putAwayQuantity;

  dynamic get effectiveReceiptQuantity => _effectiveReceiptQuantity;

  dynamic get receiptQuantity => _receiptQuantity;

  dynamic get grossAmount => _grossAmount;

  dynamic get vatAmount => _vatAmount;

  dynamic get netAmount => _netAmount;

  InventoryManageType? get inventoryManageType => _inventoryManageType;

  bool? get useClosing => _useClosing;

  bool? get vatIncluded => _vatIncluded;

  dynamic get vatRate => _vatRate;

  dynamic get unitPrice => _unitPrice;

  Currency? get currency => _currency;

  ConfirmType? get confirmType => _confirmType;

  String? get manufactureDate => _manufactureDate;

  String? get manufactureNumber => _manufactureNumber;

  String? get lotNumber => _lotNumber;

  int? get lotId => _lotId;

  int? get orderLineId => _orderLineId;

  int? get receiptLineId => _receiptLineId;

  String? get senderName => _senderName;

  String? get senderCode => _senderCode;

  int? get senderId => _senderId;

  Currency? get sellerCurrency => _sellerCurrency;

  String? get sellerName => _sellerName;

  String? get sellerCode => _sellerCode;

  int? get sellerId => _sellerId;

  String? get managerName => _managerName;

  String? get managerCode => _managerCode;

  int? get managerId => _managerId;

  String? get memo => _memo;

  String? get dueMonth => _dueMonth;

  String? get receiptTime => _receiptTime;

  PurchaseReceiptType? get receiptType => _receiptType;

  String? get invoiceNumber => _invoiceNumber;

  String? get receiptNumber => _receiptNumber;

  int? get receiptId => _receiptId;

  String? get factoryName => _factoryName;

  String? get factoryCode => _factoryCode;

  int? get factoryId => _factoryId;
}