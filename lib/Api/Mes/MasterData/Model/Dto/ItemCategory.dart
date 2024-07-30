


import '../../../../Util/Helper/Parsing/ApiJsonKey.dart';

part '../Convert/ItemCategoryConvert.dart';

class ItemCategoryDto {
  /// <summary>
  /// 품목분류 id
  /// </summary>
  int? _id;

  /// <summary>
  /// 분류코드
  /// </summary>
  String? _code;

  /// <summary>
  /// 분류명
  /// </summary>
  String? _name;


  ItemCategoryDto(this._id, this._code, this._name);

  factory ItemCategoryDto.fromJson(Map<String, dynamic> json) => _$ItemCategoryDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ItemCategoryDtoToJson(this);

  String? get name => _name;

  String? get code => _code;

  int? get id => _id;
}
