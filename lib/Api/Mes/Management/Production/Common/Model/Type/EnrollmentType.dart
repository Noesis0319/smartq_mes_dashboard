/// <summary>
/// 데이터 등록방식
/// </summary>
enum EnrollmentType
{
  /// <summary>
  /// 참조 내역 없음
  /// </summary>
  ReferenceNothing,

  /// <summary>
  /// 선별출고 참조
  /// </summary>
  ReferencePicking,

  /// <summary>
  /// 수주 참조
  /// </summary>
  ReferenceOrder,

  /// <summary>
  /// 수량 등록 시 라벨위주
  /// </summary>
  LabelNumbering,

  /// <summary>
  /// 수량 등록 시 수기 입력
  /// </summary>
  ManuallyNumbering,
  ;
}