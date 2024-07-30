

import '../../../../../Util/Helper/Parsing/ApiJsonKey.dart';

part '../Convert/ProcessTypeOptionsConvert.dart';

class ProcessTypeOptionsDto {
  /// <summary>
  /// 성형 사용여부
  /// </summary>
  bool? _useMolding;

  /// <summary>
  /// 프레스 사용여부
  /// </summary>
  bool? _usePress;

  /// <summary>
  /// 절삭 사용여부
  /// </summary>
  bool? _useCutting;

  /// <summary>
  /// 조립 사용여부
  /// </summary>
  bool? _useAssembly;

  /// <summary>
  /// 수작업 사용여부
  /// </summary>
  bool? _useHandwork;

  /// <summary>
  /// 공정 사용여부
  /// </summary>
  bool? _useInspection;

  /// <summary>
  /// 도장 사용여부
  /// </summary>
  bool? _usePainting;

  /// <summary>
  /// 배합 사용여부
  /// </summary>
  bool? _useBlending;

  /// <summary>
  /// 후공정 사용여부
  /// </summary>
  bool? _useCustom;

  ProcessTypeOptionsDto(this._useMolding, this._usePress, this._useCutting, this._useAssembly, this._useHandwork,
      this._useInspection, this._usePainting, this._useBlending, this._useCustom);

  factory ProcessTypeOptionsDto.fromJson(Map<String, dynamic> json)
    => _$ProcessTypeOptionsDtoFromJson(json);
    Map<String, dynamic> toJson() => _$ProcessTypeOptionsDtoToJson(this);

  bool? get useCustom => _useCustom;

  bool? get useBlending => _useBlending;

  bool? get usePainting => _usePainting;

  bool? get useInspection => _useInspection;

  bool? get useHandwork => _useHandwork;

  bool? get useAssembly => _useAssembly;

  bool? get useCutting => _useCutting;

  bool? get usePress => _usePress;

  bool? get useMolding => _useMolding;
}
