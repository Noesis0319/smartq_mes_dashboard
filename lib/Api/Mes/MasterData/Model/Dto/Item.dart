

import 'package:json_annotation/json_annotation.dart';

import '../../../../Util/Helper/Parsing/ApiJsonKey.dart';
import '../../../Management/Inventory/Model/Type/InventoryManageType.dart';
import 'ItemSize.dart';

part '../Convert/ItemConvert.dart';

class ItemDto {
  int? _id;

  String? _dateTimeCreated;

  /// <summary>
  /// 품목코드
  /// </summary>
  String? _code;

  /// <summary>
  /// 품명
  /// </summary>
  String? _name;

  /// <summary>
  /// 품번
  /// </summary>
  String? _number;

  /// <summary>
  /// 사양/규격
  /// </summary>
  String? _spec;

  /// <summary>
  /// 단위
  /// </summary>
  String? _unit;

  /// <summary>
  /// 메모
  /// </summary>
  String? _memo;

  /// <summary>
  /// 품목 분류
  /// </summary>
  int? _categoryId;

  /// <summary>
  /// 분류코드
  /// </summary>
  String? _categoryCode;

  /// <summary>
  /// 분류명
  /// </summary>
  String? _categoryName;

  /// <summary>
  /// 품목 소그룹
  /// </summary>
  int? _groupId;

  String? _groupCode;

  String? _groupName;

  /// <summary>
  /// 품목 대그룹
  /// </summary>
  int? _majorGroupId;

  String? _majorGroupCode;

  String? _majorGroupName;

  /// <summary>
  /// 품목 모델
  /// </summary>
  int? _modelId;

  String? _modelCode;

  String? _modelName;

  /// <summary>
  /// 품목 색상
  /// </summary>
  int? _colorId;

  String? _colorCode;

  String? _colorName;

  int? _colorRgb;

  /// <summary>
  /// 제조사
  /// </summary>
  int? _manufacturerId;

  String? _manufacturerCode;

  String? _manufacturerName;

  /// <summary>
  /// 품목 재질
  /// </summary>
  int? _textureId;

  String? _textureCode;

  String? _textureName;

  /// <summary>
  /// 안전수량
  /// </summary>
  int? _inventorySafeQty;

  /// <summary>
  /// 보관 기간
  /// </summary>
  String? _inventoryRetentionPeriod;

  /// <summary>
  /// 재고관리 유형
  /// </summary>
  InventoryManageType? _inventoryManageType;

  /// <summary>
  /// 성형공정 사용여부
  /// </summary>
  bool? _useMoldingProcess;

  /// <summary>
  /// 조립공정 사용여부
  /// </summary>
  bool? _useAssemblyProcess;

  /// <summary>
  /// 수작업공정 사용여부
  /// </summary>
  bool? _useHandworkProcess;

  /// <summary>
  /// 프레스공정 사용여부
  /// </summary>
  bool? _usePressProcess;

  /// <summary>
  /// 절삭공정 사용여부
  /// </summary>
  bool? _useCuttingProcess;

  /// <summary>
  /// 검사공정 사용여부
  /// </summary>
  bool? _useInspectionProcess;

  /// <summary>
  /// 도장공정 사용여부
  /// </summary>
  bool? _usePaintingProcess;

  /// <summary>
  /// 배합공정 사용여부
  /// </summary>
  bool? _useBlendingProcess;

  /// <summary>
  /// 후공정 사용여부
  /// </summary>
  bool? _useCustomProcess;

  /// <summary>
  /// 구매 사용여부
  /// </summary>
  bool? _usePurchaseSupply;

  /// <summary>
  /// 생산 사용여부
  /// </summary>
  bool? _useProductionSupply;

  /// <summary>
  /// 외주 사용여부
  /// </summary>
  bool? _useSubcontractSupply;

  /// <summary>
  /// 마감 사용여부
  /// </summary>
  bool? _useClosing;

  /// <summary>
  /// 품목치수 목록
  /// </summary>
  List<ItemSizeDto>? _sizeInfo;

  dynamic _lossRate;

  String? _salesPeriod;

  String? _productionPeriod;

  String? _purchasePeriod;

  /// <summary>
  /// 기준 생산수량
  /// 품목별 생산시간 대비 생산수량
  /// </summary>
  dynamic _productionPeriodQuantity;


  ItemDto(
      this._id,
      this._dateTimeCreated,
      this._code,
      this._name,
      this._number,
      this._spec,
      this._unit,
      this._memo,
      this._categoryId,
      this._categoryCode,
      this._categoryName,
      this._groupId,
      this._groupCode,
      this._groupName,
      this._majorGroupId,
      this._majorGroupCode,
      this._majorGroupName,
      this._modelId,
      this._modelCode,
      this._modelName,
      this._colorId,
      this._colorCode,
      this._colorName,
      this._colorRgb,
      this._manufacturerId,
      this._manufacturerCode,
      this._manufacturerName,
      this._textureId,
      this._textureCode,
      this._textureName,
      this._inventorySafeQty,
      this._inventoryRetentionPeriod,
      this._inventoryManageType,
      this._useMoldingProcess,
      this._useAssemblyProcess,
      this._useHandworkProcess,
      this._usePressProcess,
      this._useCuttingProcess,
      this._useInspectionProcess,
      this._usePaintingProcess,
      this._useBlendingProcess,
      this._useCustomProcess,
      this._usePurchaseSupply,
      this._useProductionSupply,
      this._useSubcontractSupply,
      this._useClosing,
      this._sizeInfo,
      this._lossRate,
      this._salesPeriod,
      this._productionPeriod,
      this._purchasePeriod,
      this._productionPeriodQuantity);

  factory ItemDto.fromJson(Map<String, dynamic> json) => _$ItemDtoFromJson(json);
  Map<String, dynamic> toJson() => _$ItemDtoToJson(this);

  dynamic get productionPeriodQuantity => _productionPeriodQuantity;

  String? get purchasePeriod => _purchasePeriod;

  String? get productionPeriod => _productionPeriod;

  String? get salesPeriod => _salesPeriod;

  dynamic get lossRate => _lossRate;

  List<ItemSizeDto>? get sizeInfo => _sizeInfo;

  bool? get useClosing => _useClosing;

  bool? get useSubcontractSupply => _useSubcontractSupply;

  bool? get useProductionSupply => _useProductionSupply;

  bool? get usePurchaseSupply => _usePurchaseSupply;

  bool? get useCustomProcess => _useCustomProcess;

  bool? get useBlendingProcess => _useBlendingProcess;

  bool? get usePaintingProcess => _usePaintingProcess;

  bool? get useInspectionProcess => _useInspectionProcess;

  bool? get useCuttingProcess => _useCuttingProcess;

  bool? get usePressProcess => _usePressProcess;

  bool? get useHandworkProcess => _useHandworkProcess;

  bool? get useAssemblyProcess => _useAssemblyProcess;

  bool? get useMoldingProcess => _useMoldingProcess;

  InventoryManageType? get inventoryManageType => _inventoryManageType;

  String? get inventoryRetentionPeriod => _inventoryRetentionPeriod;

  int? get inventorySafeQty => _inventorySafeQty;

  String? get textureName => _textureName;

  String? get textureCode => _textureCode;

  int? get textureId => _textureId;

  String? get manufacturerName => _manufacturerName;

  String? get manufacturerCode => _manufacturerCode;

  int? get manufacturerId => _manufacturerId;

  int? get colorRgb => _colorRgb;

  String? get colorName => _colorName;

  String? get colorCode => _colorCode;

  int? get colorId => _colorId;

  String? get modelName => _modelName;

  String? get modelCode => _modelCode;

  int? get modelId => _modelId;

  String? get majorGroupName => _majorGroupName;

  String? get majorGroupCode => _majorGroupCode;

  int? get majorGroupId => _majorGroupId;

  String? get groupName => _groupName;

  String? get groupCode => _groupCode;

  int? get groupId => _groupId;

  String? get categoryName => _categoryName;

  String? get categoryCode => _categoryCode;

  int? get categoryId => _categoryId;

  String? get memo => _memo;

  String? get unit => _unit;

  String? get spec => _spec;

  String? get number => _number;

  String? get name => _name;

  String? get code => _code;

  String? get dateTimeCreated => _dateTimeCreated;

  int? get id => _id;
}
