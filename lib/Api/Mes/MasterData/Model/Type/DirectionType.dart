/// <summary>
/// 입/출 구분
/// </summary>
enum DirectionType {
  /// <summary>
  /// 매입
  /// </summary>
  Purchase(value: 1),

  /// <summary>
  /// 매출
  /// </summary>
  Sales(value: 2),

  /// <summary>
  /// 생산
  /// </summary>
  Production(value: 3),

  /// <summary>
  /// 외주
  /// </summary>
  Subcontract(value: 4),
  ;

  const DirectionType({required this.value});

  final int value;
}
