
import '../../../../../Util/Helper/Parsing/ApiJsonKey.dart';

part '../Convert/SalesOrderSummaryConvert.dart';

class SalesOrderSummaryDto {
  /// <summary>
  /// OrderId
  /// </summary>
  int? _orderId;

  /// <summary>
  /// 수주번호
  /// </summary>
  String? _orderNumber;

  /// <summary>
  /// 고객주문번호
  /// </summary>

  String? _customerOrderNumber;

  /// <summary>
  /// 수주일자
  /// </summary>?

  String? _orderDate;

  /// <summary>
  /// 공장Id
  /// </summary>?

  int? _factoryId;

  /// <summary>
  /// 공장코드
  /// </summary>?

  String? _factoryCode;

  /// <summary>
  /// 공장이름
  /// </summary>?

  String? _factoryName;

  /// <summary>
  /// 구매업체Id
  /// </summary>?

  int? _buyerId;

  /// <summary>
  /// 구매업체코드
  /// </summary>?

  String? _buyerCode;

  /// <summary>
  /// 구매업체이름
  /// </summary>?

  String? _buyerName;

  /// <summary>
  /// 수령업체Id
  /// </summary>?

  int? _receiverId;

  /// <summary>
  /// 수령업체코드
  /// </summary>?

  String? _receiverCode;

  /// <summary>
  /// 수령업체이름
  /// </summary>?

  String? _receiverName;

  /// <summary>
  /// 담당자Id
  /// </summary>?

  int? _managerId;

  /// <summary>
  /// 담당자코드
  /// </summary>?

  String? _managerCode;

  /// <summary>
  /// 담당자이름
  /// </summary>?

  String? _managerName;

  /// <summary>
  /// 메모
  /// </summary>?

  String? _memo;

  int? _orderLineId;

  /// <summary>
  /// 품목Id
  /// </summary>?

  int? _itemId;

  /// <summary>
  /// 품목코드
  /// </summary>?

  String? _itemCode;

  /// <summary>
  /// 품목이름
  /// </summary>?

  String? _itemName;

  /// <summary>
  /// 품목번호
  /// </summary>?

  String? _itemNumber;

  /// <summary>
  /// 품목규격
  /// </summary>?

  String? _itemSpec;

  /// <summary>
  /// 품목단위
  /// </summary>?

  String? _itemUnit;

  /// <summary>
  /// 품목분류 Id
  /// </summary>?

  int? _itemCategoryId;

  /// <summary>
  /// 품목분류코드
  /// </summary>?

  String? _itemCategoryCode;

  /// <summary>
  /// 품목분류이름
  /// </summary>?

  String? _itemCategoryName;

  /// <summary>
  /// 모델Id
  /// </summary>?

  int? _itemModelId;

  /// <summary>
  /// 모델코드
  /// </summary>?

  String? _itemModelCode;

  /// <summary>
  /// 모델이름
  /// </summary>?

  String? _itemModelName;

  /// <summary>
  /// 품목색상ID
  /// </summary>?

  int? _itemColorId;

  /// <summary>
  /// 색상코드
  /// </summary>?

  String? _itemColorCode;

  /// <summary>
  /// 색상이름
  /// </summary>?

  String? _itemColorName;

  /// <summary>
  /// 색상RGB코드
  /// </summary>?

  int? _itemColorRgb;

  /// <summary>
  /// 제조사Id
  /// </summary>?

  int? _itemManufacturerId;

  /// <summary>
  /// 제조사코드
  /// </summary>?

  String? _itemManufacturerCode;

  /// <summary>
  /// 제조사이름
  /// </summary>?

  String? _itemManufacturerName;

  /// <summary>
  /// 그룹Id
  /// </summary>?

  int? _itemGroupId;

  /// <summary>
  /// 그룹코드
  /// </summary>?

  String? _itemGroupCode;

  /// <summary>
  /// 그룹이름
  /// </summary>?

  String? _itemGroupName;

  /// <summary>
  /// 대그룹Id
  /// </summary>?

  int? _itemMajorGroupId;

  /// <summary>
  /// 대그룹코드
  /// </summary>?

  String? _itemMajorGroupCode;

  /// <summary>
  /// 대그룹이름
  /// </summary>?

  String? _itemMajorGroupName;

  /// <summary>
  /// 품목재질Id
  /// </summary>?

  int? _itemTextureId;

  /// <summary>
  /// 품목재질코드
  /// </summary>?

  String? _itemTextureCode;

  /// <summary>
  /// 품목재질명
  /// </summary>?

  String? _itemTextureName;

  /// <summary>
  /// 수주수량
  /// </summary>?

  dynamic _orderQuantity;

  /// <summary>
  /// 출하지시수량
  /// </summary>?

  dynamic _requisitionQuantity;

  /// <summary>
  /// 출고완료수량
  /// </summary>?

  dynamic _pickingQuantity;

  /// <summary>
  /// 미출고 잔량
  /// </summary>?

  dynamic _pickingQuantityLeft;

  /// <summary>
  /// 출하지시잔량
  /// </summary>

  dynamic _requisitionQuantityLeft;

  /// <summary>
  /// 출하수량
  /// </summary>

  dynamic _issueQuantity;

  /// <summary>
  /// 출하잔량
  /// </summary>?

  dynamic _issueQuantityLeft;

  /// <summary>
  /// 출하예정일자
  /// </summary>

  String? _issueDueDate;

  /// <summary>
  /// 납품구분Id
  /// </summary>?

  int? _deliveryTypeId;

  /// <summary>
  /// 납품구분코드
  /// </summary>?

  String? _deliveryTypeCode;

  /// <summary>
  /// 납품구분이름
  /// </summary>?

  String? _deliveryTypeName;

  /// <summary>
  /// 확정구분
  /// </summary>?

  String? _confirmType;

  /// <summary>
  /// 품목 가격
  /// </summary>?

  dynamic _unitPrice;

  /// <summary>
  /// 통화
  /// </summary>?

  String? _currency;

  /// <summary>
  ///  부가세율(%)
  /// </summary>?

  dynamic _vatRate;

  /// <summary>
  /// 부가세 사용 여부
  /// </summary>?

  bool? _vatIncluded;

  /// <summary>
  /// 공급가액
  /// </summary>?

  dynamic _netAmount;

  /// <summary>
  /// 부가세
  /// </summary>?

  dynamic _vatAmount;

  /// <summary>
  /// 공급대가
  /// </summary>?

  dynamic _grossAmount;

  SalesOrderSummaryDto(
      this._orderId,
      this._orderNumber,
      this._customerOrderNumber,
      this._orderDate,
      this._factoryId,
      this._factoryCode,
      this._factoryName,
      this._buyerId,
      this._buyerCode,
      this._buyerName,
      this._receiverId,
      this._receiverCode,
      this._receiverName,
      this._managerId,
      this._managerCode,
      this._managerName,
      this._memo,
      this._orderLineId,
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
      this._orderQuantity,
      this._requisitionQuantity,
      this._pickingQuantity,
      this._pickingQuantityLeft,
      this._requisitionQuantityLeft,
      this._issueQuantity,
      this._issueQuantityLeft,
      this._issueDueDate,
      this._deliveryTypeId,
      this._deliveryTypeCode,
      this._deliveryTypeName,
      this._confirmType,
      this._unitPrice,
      this._currency,
      this._vatRate,
      this._vatIncluded,
      this._netAmount,
      this._vatAmount,
      this._grossAmount);

  factory SalesOrderSummaryDto.fromJson(Map<String, dynamic> json) => _$SalesOrderSummaryDtoFromJson(json);

  Map<String, dynamic> toJson() => _$SalesOrderSummaryDtoToJson(this);

  dynamic get grossAmount => _grossAmount;

  dynamic get vatAmount => _vatAmount;

  dynamic get netAmount => _netAmount;

  bool? get vatIncluded => _vatIncluded;

  dynamic get vatRate => _vatRate;

  String? get currency => _currency;

  dynamic get unitPrice => _unitPrice;

  String? get confirmType => _confirmType;

  String? get deliveryTypeName => _deliveryTypeName;

  String? get deliveryTypeCode => _deliveryTypeCode;

  int? get deliveryTypeId => _deliveryTypeId;

  String? get issueDueDate => _issueDueDate;

  dynamic get issueQuantityLeft => _issueQuantityLeft;

  dynamic get issueQuantity => _issueQuantity;

  dynamic get requisitionQuantityLeft => _requisitionQuantityLeft;

  dynamic get pickingQuantityLeft => _pickingQuantityLeft;

  dynamic get pickingQuantity => _pickingQuantity;

  dynamic get requisitionQuantity => _requisitionQuantity;

  dynamic get orderQuantity => _orderQuantity;

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

  int? get orderLineId => _orderLineId;

  String? get memo => _memo;

  String? get managerName => _managerName;

  String? get managerCode => _managerCode;

  int? get managerId => _managerId;

  String? get receiverName => _receiverName;

  String? get receiverCode => _receiverCode;

  int? get receiverId => _receiverId;

  String? get buyerName => _buyerName;

  String? get buyerCode => _buyerCode;

  int? get buyerId => _buyerId;

  String? get factoryName => _factoryName;

  String? get factoryCode => _factoryCode;

  int? get factoryId => _factoryId;

  String? get orderDate => _orderDate;

  String? get customerOrderNumber => _customerOrderNumber;

  String? get orderNumber => _orderNumber;

  int? get orderId => _orderId;
}
