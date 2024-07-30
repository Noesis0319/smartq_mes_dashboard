
import 'package:json_annotation/json_annotation.dart';

import '../../../../../base/type/Currency.dart';
import '../../../../../util/helper/parsing/ApiJsonKey.dart';
import '../../../../MasterData/model/type/ConfirmType.dart';
import '../type/PurchaseOrderType.dart';

part '../Convert/PurchaseOrderSummaryConvert.dart';

class PurchaseOrderSummaryDto {
  /// <summary>
  /// 발주ID
  /// </summary>
  int? _orderId;

  /// <summary>
  /// 발주번호
  /// </summary>
  String? _orderNumber;

  /// <summary>
  /// 발주일자
  /// </summary>
  String? _orderDate;

  /// <summary>
  /// 납기일자
  /// </summary>
  String? _deliveryDate;

  /// <summary>
  /// 판매업체Id
  /// </summary>
  int? _sellerId;

  /// <summary>
  /// 판매업체코드
  /// </summary>
  String? _sellerCode;

  /// <summary>
  /// 판매업체이름
  /// </summary>
  String? _sellerName;

  /// <summary>
  /// 공급업체Id
  /// </summary>
  int? _senderId;

  /// <summary>
  /// 공급업체코드
  /// </summary>
  String? _senderCode;

  /// <summary>
  /// 공급업체이름
  /// </summary>
  String? _senderName;

  /// <summary>
  /// 사업장Id
  /// </summary>
  int? _factoryId;

  /// <summary>
  /// 사업장코드
  /// </summary>
  String? _factoryCode;

  /// <summary>
  /// 사업장이름
  /// </summary>
  String? _factoryName;

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
  int? _dueMonth;

  /// <summary>
  /// 라인ID
  /// </summary>
  int? _orderLineId;

  /// <summary>
  /// 발주구분
  /// </summary>
  PurchaseOrderType? _orderType;

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
  /// 품목분류Id
  /// </summary>
  int? _itemCategoryId;

  /// <summary>
  /// 품목분류코드
  /// </summary>
  String? _itemCategoryCode;

  /// <summary>
  /// 품목분류명
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
  /// 공급가액
  /// </summary>
  dynamic _netAmount;

  /// <summary>
  ///  부가세율(%)
  /// </summary>
  dynamic _vatRate;

  /// <summary>
  /// 부가세
  /// </summary>
  dynamic _vatAmount;

  /// <summary>
  /// 공급대가
  /// </summary>
  dynamic _grossAmount;

  /// <summary>
  /// 입하마감일자
  /// </summary>
  String? _receiptDueDate;

  /// <summary>
  /// 발주수량
  /// </summary>
  dynamic _orderQuantity;

  /// <summary>
  /// 입하수량
  /// </summary>
  dynamic _receiptQuantity;

  /// <summary>
  /// 미입하수량
  /// </summary>
  dynamic _nonReceiptQuantity;

  /// <summary>
  /// 부가세 사용 여부
  /// </summary>
  bool? _vatIncluded;

  /// <summary>
  /// 구매요청라인ID
  /// </summary>
  int? _requisitionLineId;

  PurchaseOrderSummaryDto(this._orderId, this._orderNumber, this._orderDate, this._deliveryDate, this._sellerId,
      this._sellerCode, this._sellerName, this._senderId, this._senderCode, this._senderName, this._factoryId,
      this._factoryCode, this._factoryName, this._managerId, this._managerCode, this._managerName, this._memo, this._dueMonth,
      this._orderLineId, this._orderType, this._itemId, this._itemCode, this._itemName, this._itemNumber, this._itemSpec,
      this._itemUnit, this._itemCategoryId, this._itemCategoryCode, this._itemCategoryName, this._itemModelId,
      this._itemModelCode, this._itemModelName, this._itemColorId, this._itemColorCode, this._itemColorName,
      this._itemColorRgb, this._itemManufacturerId, this._itemManufacturerCode, this._itemManufacturerName,
      this._itemGroupId, this._itemGroupCode, this._itemGroupName, this._itemMajorGroupId, this._itemMajorGroupCode,
      this._itemMajorGroupName, this._itemTextureId, this._itemTextureCode, this._itemTextureName, this._deliveryTypeId,
      this._deliveryTypeCode, this._deliveryTypeName, this._confirmType, this._unitPrice, this._currency, this._netAmount,
      this._vatRate, this._vatAmount, this._grossAmount, this._receiptDueDate, this._orderQuantity, this._receiptQuantity,
      this._nonReceiptQuantity, this._vatIncluded, this._requisitionLineId);


  factory PurchaseOrderSummaryDto.fromJson(Map<String, dynamic> json)
  => _$PurchaseOrderSummaryDtoFromJson(json);

  Map<String, dynamic> toJson() => _$PurchaseOrderSummaryDtoToJson(this);

  int? get requisitionLineId => _requisitionLineId;

  bool? get vatIncluded => _vatIncluded;

  dynamic get nonReceiptQuantity => _nonReceiptQuantity;

  dynamic get receiptQuantity => _receiptQuantity;

  dynamic get orderQuantity => _orderQuantity;

  String? get receiptDueDate => _receiptDueDate;

  dynamic get grossAmount => _grossAmount;

  dynamic get vatAmount => _vatAmount;

  dynamic get vatRate => _vatRate;

  dynamic get netAmount => _netAmount;

  Currency? get currency => _currency;

  dynamic get unitPrice => _unitPrice;

  ConfirmType? get confirmType => _confirmType;

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

  PurchaseOrderType? get orderType => _orderType;

  int? get orderLineId => _orderLineId;

  int? get dueMonth => _dueMonth;

  String? get memo => _memo;

  String? get managerName => _managerName;

  String? get managerCode => _managerCode;

  int? get managerId => _managerId;

  String? get factoryName => _factoryName;

  String? get factoryCode => _factoryCode;

  int? get factoryId => _factoryId;

  String? get senderName => _senderName;

  String? get senderCode => _senderCode;

  int? get senderId => _senderId;

  String? get sellerName => _sellerName;

  String? get sellerCode => _sellerCode;

  int? get sellerId => _sellerId;

  String? get deliveryDate => _deliveryDate;

  String? get orderDate => _orderDate;

  String? get orderNumber => _orderNumber;

  int? get orderId => _orderId;
}