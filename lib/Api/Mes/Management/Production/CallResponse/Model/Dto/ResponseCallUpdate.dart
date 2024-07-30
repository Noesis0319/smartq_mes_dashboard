

import '../../../../../../Util/Helper/Parsing/ApiJsonKey.dart';

part '../Convert/ResponseCallUpdateConvert.dart';

/// <summary>
/// 호출원인/조치내역 동시 수정
/// </summary>
class UpdateCallResponseDto {
  /// <summary>
  /// 응답Id
  /// </summary>
  int? _responseCodeId;

  /// <summary>
  /// 호출원인Id
  /// </summary>
  int? _callCodeId;

  /// <summary>
  /// 응답 담당자Id
  /// </summary>
  int? _managerId;

  /// <summary>
  /// 응답일시
  /// </summary>
  String? _responseTime;

  /// <summary>
  /// 메모
  /// </summary>
  String? _memo;

  UpdateCallResponseDto(this._responseCodeId, this._callCodeId, this._managerId, this._responseTime, this._memo);

  String? get memo => _memo;

  String? get responseTime => _responseTime;

  int? get managerId => _managerId;

  int? get callCodeId => _callCodeId;

  int? get responseCodeId => _responseCodeId;

  factory UpdateCallResponseDto.fromJson(Map<String, dynamic> json) => _$UpdateCallResponseDtoFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateCallResponseDtoToJson(this);
}
