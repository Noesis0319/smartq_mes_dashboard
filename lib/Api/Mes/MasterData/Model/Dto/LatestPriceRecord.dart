
import 'package:json_annotation/json_annotation.dart';

import '../../../../Base/Type/Currency.dart';
import '../../../../Util/Helper/Parsing/ApiJsonKey.dart';
import '../Type/ConfirmType.dart';
import '../Type/DirectionType.dart';

part '../Convert/LatestPriceRecordConvert.dart';

/// <summary>
/// 품목별 등록된 가장 최근 가격 (업체 고려x)
/// </summary>

class LatestPriceRecordDto {
  int? _priceRecordId;

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
  /// 부가세 적용 여부 db 값
  /// </summary>
  int? _vatIncludedValue;

  /// <summary>
  /// 적용 일자
  /// </summary>
  String? _effectiveDate;

  LatestPriceRecordDto(
      this._priceRecordId,
      this._itemId,
      this._itemCode,
      this._itemName,
      this._itemNumber,
      this._directionType,
      this._confirmType,
      this._currency,
      this._unitPrice,
      this._vatRate,
      this._vatIncluded,
      this._vatIncludedValue,
      this._effectiveDate);

  factory LatestPriceRecordDto.fromJson(Map<String, dynamic> json) => _$LatestPriceRecordDtoFromJson(json);

  Map<String, dynamic> toJson() => _$LatestPriceRecordDtoToJson(this);

  String? get effectiveDate => _effectiveDate;

  int? get vatIncludedValue => _vatIncludedValue;

  bool? get vatIncluded => _vatIncluded;

  dynamic get vatRate => _vatRate;

  dynamic get unitPrice => _unitPrice;

  Currency? get currency => _currency;

  ConfirmType? get confirmType => _confirmType;

  DirectionType? get directionType => _directionType;

  String? get itemNumber => _itemNumber;

  String? get itemName => _itemName;

  String? get itemCode => _itemCode;

  int? get itemId => _itemId;

  int? get priceRecordId => _priceRecordId;
}
