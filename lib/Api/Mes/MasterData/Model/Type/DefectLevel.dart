/// <summary>
/// 불량 심각 단계
/// </summary>
enum DefectLevel
{
  /// <summary>
  /// 높음
  /// </summary>
  High(value: 2),

  /// <summary>
  /// 낮음
  /// </summary>
  Low(value: 4),
  ;
  const DefectLevel({required this.value});
  final int value;
}