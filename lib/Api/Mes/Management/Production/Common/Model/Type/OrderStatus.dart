/// <summary>
/// 지시 상태
/// </summary>
enum OrderStatus
{
  /// <summary>
  /// 대기
  /// </summary>
  Ordered(value: 0),

  /// <summary>
  /// 가동
  /// </summary>
  Running(value: 1),

  /// <summary>
  /// 비가동
  /// </summary>
  Paused(value: 2),

  /// <summary>
  /// 생산완료
  /// </summary>
  Completed(value: 3),

  ;
  const OrderStatus({required this.value});
  final int value;
}