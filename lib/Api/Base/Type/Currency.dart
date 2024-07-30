/// <summary>
/// 통화
/// </summary>
enum Currency {
  None(value: 0),

  /// <summary>
  /// 원, KRW, ￦
  /// </summary>
  Won(value: 1),

  /// <summary>
  /// 달러, USD, $
  /// </summary>
  Dollar(value: 2),

  /// <summary>
  /// 중국 위안화, CNY, ￥
  /// </summary>
  ChineseYuan(value: 3),

  /// <summary>
  /// 일본 엔화, JPY, ￥
  /// </summary>
  JapaneseYen(value: 4),

  /// <summary>
  /// 유로화, EUR, €
  /// </summary>
  Euro(value: 5),

  /// <summary>
  /// 영국 파운드, GBP, ￡
  /// </summary>
  BritishPound(value: 6),

  /// <summary>
  /// 인도네시아 루피아, IDR, Rp
  /// </summary>
  IndonesianRupiah(value: 7),
  ;

  const Currency({required this.value});

  final int value;
}
