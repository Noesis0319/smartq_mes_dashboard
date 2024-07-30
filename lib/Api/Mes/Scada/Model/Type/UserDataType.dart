/// <summary>
/// 사용자 데이터 타입.
/// 사용자(고객)마다 바이트 변환방식이 다르다.
/// </summary>
enum UserDataType {
  Bool(0),
  Decimal(1),
  String(2),
  Time(3),

  /// <summary>
  /// 부동소수점
  /// </summary>
  FloatingPoint(4),

  /// <summary>
  /// 시간(UnixTimeStamp)
  /// </summary>
  UnixTimeStamp(5);

  const UserDataType(this.value);

  final double value;
}
