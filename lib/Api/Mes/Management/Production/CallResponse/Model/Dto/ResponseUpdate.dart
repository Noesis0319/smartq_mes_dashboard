

import '../../../../../../Util/Helper/Parsing/ApiJsonKey.dart';

part '../Convert/ResponseUpdateConvert.dart';

class UpdateResponseDto {
  /// <summary>
  /// 호출응답 내역 Id
  /// </summary>
  int? _responseCodeId;

  int? _managerId;

  String? _responseTime;

  String? _memo;

  UpdateResponseDto(this._responseCodeId, this._managerId, this._responseTime, this._memo);

  String get memo => _memo ?? "";

  String get responseTime => _responseTime!;

  int get managerId => _managerId!;

  int get responseCodeId => _responseCodeId!;

  factory UpdateResponseDto.fromJson(Map<String, dynamic> json) => _$UpdateResponseDtoFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateResponseDtoToJson(this);
}
