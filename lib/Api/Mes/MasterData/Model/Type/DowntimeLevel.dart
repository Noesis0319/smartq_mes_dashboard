/// <summary>
/// 비가동 단계
/// </summary>
enum DowntimeLevel
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
  const DowntimeLevel({required this.value});
  final int value;
}