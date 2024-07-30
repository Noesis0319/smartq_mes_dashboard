/// <summary>
/// 데이터 순서.
/// BigEndian(HighLow), LittleEndian(LowHigh)
/// </summary>
enum DataOrder
{
  /// <summary>
  /// 낮은 주소에 낮은 바이트(LSB)
  /// </summary>
  LittleEndian,

  /// <summary>
  /// 낮은 주소에 높은 바이트(MSB)
  /// </summary>
  BigEndian,
  ;

}