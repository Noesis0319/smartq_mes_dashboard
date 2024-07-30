

import 'package:json_annotation/json_annotation.dart';

import '../../../../Base/Type/Currency.dart';
import '../../../../Util/Helper/Parsing/ApiJsonKey.dart';
import '../../../Management/Inventory/Model/Type/InventoryManageType.dart';
import '../Type/ConfirmType.dart';
import '../Type/DirectionType.dart';

part '../Convert/PriceRecordConvert.dart';

class PriceRecordDto {
  int? _id;

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
  /// 사양/규격
  /// </summary>
  String? _itemSpec;

  /// <summary>
  /// 단위
  /// </summary>
  String? _itemUnit;

  /// <summary>
  /// 품목 재고관리유형
  /// </summary>
  InventoryManageType? _inventoryManageType;

  /// <summary>
  /// 마감 사용여부
  /// </summary>
  bool? _useClosing;

  /// <summary>
  /// 품목분류Id
  /// </summary>
  int? _itemCategoryId;

  /// <summary>
  /// 품목 분류 코드
  /// </summary>
  String? _itemCategoryCode;

  /// <summary>
  /// 품목 분류 이름
  /// </summary>
  String? _itemCategoryName;

  /// <summary>
  /// 품목 소그룹코드
  /// </summary>
  String? _itemGroupCode;

  /// <summary>
  /// 품목 소그룹이름
  /// </summary>
  String? _itemGroupName;

  /// <summary>
  /// 품목 대그룹코드
  /// </summary>
  String? _itemMajorGroupCode;

  /// <summary>
  /// 품목 대그룹이름
  /// </summary>
  String? _itemMajorGroupName;

  /// <summary>
  /// 품목 모델 코드
  /// </summary>
  String? _itemModelCode;

  /// <summary>
  /// 품목 모델 이름
  /// </summary>
  String? _itemModelName;

  /// <summary>
  /// 품목 색상 코드
  /// </summary>
  String? _itemColorCode;

  /// <summary>
  /// 품목 색상 이름
  /// </summary>
  String? _itemColorName;

  /// <summary>
  /// 품목 색상 Rgb코드
  /// </summary>
  int? _itemColorRgb;

  /// <summary>
  /// 제조사 코드
  /// </summary>
  String? _itemManufacturerCode;

  /// <summary>
  /// 제조사 이름
  /// </summary>
  String? _itemManufacturerName;

  /// <summary>
  /// 적용업체Id
  /// </summary>
  int? _companyId;

  /// <summary>
  /// 적용업체이름
  /// </summary>
  String? _companyName;

  /// <summary>
  /// 적용업체코드
  /// </summary>
  String? _companyCode;

  /// <summary>
  /// 적용업체구분
  /// </summary>
  String? _companyType;

  /// <summary>
  /// 납품타입Id
  /// </summary>
  int? _deliveryTypeId;

  /// <summary>
  /// 납품타입코드
  /// </summary>
  String? _deliveryTypeCode;

  /// <summary>
  /// 납품타입명
  /// </summary>
  String? _deliveryTypeName;

  /// <summary>
  /// 단가 입/출 구분
  /// </summary>
  DirectionType? _directionType;

  /// <summary>
  /// 확정 구분
  /// </summary>
  ConfirmType? _confirmType;

  /// <summary>
  /// 통화
  /// </summary>
  Currency? _currency;

  /// <summary>
  /// 가격
  /// </summary>
  dynamic _unitPrice;

  /// <summary>
  /// 부가세율
  /// </summary>
  dynamic _vatRate;

  /// <summary>
  /// 부가세 적용 여부
  /// </summary>
  bool? _vatIncluded;

  /// <summary>
  /// 적용 일자
  /// </summary>
  String? _effectiveDate;

  /// <summary>
  /// 메모
  /// </summary>
  String? _memo;

  PriceRecordDto(
      this._id,
      this._itemId,
      this._itemCode,
      this._itemName,
      this._itemNumber,
      this._itemSpec,
      this._itemUnit,
      this._inventoryManageType,
      this._useClosing,
      this._itemCategoryId,
      this._itemCategoryCode,
      this._itemCategoryName,
      this._itemGroupCode,
      this._itemGroupName,
      this._itemMajorGroupCode,
      this._itemMajorGroupName,
      this._itemModelCode,
      this._itemModelName,
      this._itemColorCode,
      this._itemColorName,
      this._itemColorRgb,
      this._itemManufacturerCode,
      this._itemManufacturerName,
      this._companyId,
      this._companyName,
      this._companyCode,
      this._companyType,
      this._deliveryTypeId,
      this._deliveryTypeCode,
      this._deliveryTypeName,
      this._directionType,
      this._confirmType,
      this._currency,
      this._unitPrice,
      this._vatRate,
      this._vatIncluded,
      this._effectiveDate,
      this._memo);

  factory PriceRecordDto.fromJson(Map<String, dynamic> json) => _$PriceRecordDtoFromJson(json);

  Map<String, dynamic> toJson() => _$PriceRecordDtoToJson(this);

  String? get memo => _memo;

  String? get effectiveDate => _effectiveDate;

  bool? get vatIncluded => _vatIncluded;

  dynamic get vatRate => _vatRate;

  dynamic get unitPrice => _unitPrice;

  Currency? get currency => _currency;

  ConfirmType? get confirmType => _confirmType;

  DirectionType? get directionType => _directionType;

  String? get deliveryTypeName => _deliveryTypeName;

  String? get deliveryTypeCode => _deliveryTypeCode;

  int? get deliveryTypeId => _deliveryTypeId;

  String? get companyType => _companyType;

  String? get companyCode => _companyCode;

  String? get companyName => _companyName;

  int? get companyId => _companyId;

  String? get itemManufacturerName => _itemManufacturerName;

  String? get itemManufacturerCode => _itemManufacturerCode;

  int? get itemColorRgb => _itemColorRgb;

  String? get itemColorName => _itemColorName;

  String? get itemColorCode => _itemColorCode;

  String? get itemModelName => _itemModelName;

  String? get itemModelCode => _itemModelCode;

  String? get itemMajorGroupName => _itemMajorGroupName;

  String? get itemMajorGroupCode => _itemMajorGroupCode;

  String? get itemGroupName => _itemGroupName;

  String? get itemGroupCode => _itemGroupCode;

  String? get itemCategoryName => _itemCategoryName;

  String? get itemCategoryCode => _itemCategoryCode;

  int? get itemCategoryId => _itemCategoryId;

  bool? get useClosing => _useClosing;

  InventoryManageType? get inventoryManageType => _inventoryManageType;

  String? get itemUnit => _itemUnit;

  String? get itemSpec => _itemSpec;

  String? get itemNumber => _itemNumber;

  String? get itemName => _itemName;

  String? get itemCode => _itemCode;

  int? get itemId => _itemId;

  int? get id => _id;
}
