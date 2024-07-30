
import 'package:json_annotation/json_annotation.dart';

import '../../../../Base/Type/ItemSize.dart';
import '../../../../Util/Helper/Parsing/ApiJsonKey.dart';

part '../Convert/ItemSizeConvert.dart';

class ItemSizeDto {
  /// <summary>
  /// Id
  /// </summary>
  int? _id;

  /// <summary>
  /// 품목Id
  /// </summary>
  int? _itemId;

  /// <summary>
  /// 품목코드
  /// </summary>
  String? _itemCode;

  /// <summary>
  /// 품목명
  /// </summary>
  String? _itemName;

  /// <summary>
  /// 치수타입
  /// </summary>
  SizeType? _sizeType;

  /// <summary>
  /// 치수 값
  /// </summary>
  dynamic _value;

  ItemSizeDto(this._id, this._itemId, this._itemCode, this._itemName, this._sizeType, this._value);

  factory ItemSizeDto.fromJson(Map<String, dynamic> json) => _$ItemSizeDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ItemSizeDtoToJson(this);

  dynamic get value => _value;

  SizeType? get sizeType => _sizeType;

  String? get itemName => _itemName;

  String? get itemCode => _itemCode;

  int? get itemId => _itemId;

  int? get id => _id;
}
