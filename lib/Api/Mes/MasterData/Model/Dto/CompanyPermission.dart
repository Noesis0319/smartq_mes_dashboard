

import '../../../../Util/Helper/Parsing/ApiJsonKey.dart';

part '../Convert/CompanyPermissionConvert.dart';

/// <summary>
/// 업체권한
/// </summary>
class CompanyPermissionDto{
  /// <summary>
  /// 메뉴명
  /// </summary>
  String? _menuName;

  /// <summary>
  /// 메뉴그룹명
  /// </summary>
  String? _menuGroup;

  /// <summary>
  /// 권한 여부
  /// </summary>
  ///
  bool? _granted;

  CompanyPermissionDto(this._menuName, this._menuGroup, this._granted);

  String? get menuName => _menuName;

  String? get menuGroup => _menuGroup;

  bool? get granted => _granted;

  factory CompanyPermissionDto.fromJson(Map<String, dynamic> json) =>
      _companyPermissionDtoFromJson(json);
  Map<String, dynamic> toJson()=>_companyPermissionDtoToJson(this);



}

