/// <summary>
/// 수집 데이터 저장방식
/// </summary>
enum SaveMethod {
  /// <summary>
  /// 저장하지 않음
  /// </summary>
  None,

  /// <summary>
  /// 기준값 비교후 저장
  /// </summary>
  PivotElement,

  /// <summary>
  /// 주기마다 저장
  /// </summary>
  Duration,
  ;
}
