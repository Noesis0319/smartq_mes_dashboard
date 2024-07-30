
import 'package:json_annotation/json_annotation.dart';

import '../../../../Util/Helper/Parsing/ApiJsonKey.dart';
import '../Type/FieldType.dart';

part '../Convert/DataFieldConvert.dart';

class DataFieldDto {
  int? _id;

  /// <summary>
  /// 수집그룹ID
  /// </summary>
  int? _collectionGroupId;

  /// <summary>
  /// 속성 유형
  /// </summary>
  FieldType? _type;

  /// <summary>
  /// 속성 이름
  /// </summary>
  String? _name;

  /// <summary>
  /// 캡션
  /// </summary>
  String? _caption;

  /// <summary>
  /// 단위
  /// </summary>
  String? _unit;

  /// <summary>
  /// 쓰기여부
  /// </summary>
  bool _isWritable;

  DataFieldDto(this._id, this._collectionGroupId, this._type, this._name, this._caption, this._unit, this._isWritable);

  factory DataFieldDto.fromJson(Map<String, dynamic> json) => _$DataFieldDtoFromJson(json);

  Map<String, dynamic> toJson() => _$DataFieldDtoToJson(this);

  int? get id => _id;

  int? get collectionGroupId => _collectionGroupId;

  FieldType? get type => _type;

  String? get name => _name;

  String? get caption => _caption;

  String? get unit => _unit;

  bool? get isWritable => _isWritable;
}
