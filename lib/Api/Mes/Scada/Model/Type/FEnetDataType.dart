/// <summary>
/// 데이터 타입.
/// 직접변수를 읽거나 쓰고자 할 경우 명령어에 데이터 타입을 지정한다.
/// </summary>
enum FEnetDataType {
  /// <summary>
  /// Bit
  /// </summary>
  X(value: 0x00),

  /// <summary>
  /// Byte
  /// </summary>
  B(value: 0x01),

  /// <summary>
  /// Word
  /// </summary>
  W(value: 0x02),

  /// <summary>
  /// DWord
  /// </summary>
  D(value: 0x03),

  /// <summary>
  /// LWord
  /// </summary>
  L(value: 0x04),
  ;

  const FEnetDataType({required this.value});

  final int value;
}
