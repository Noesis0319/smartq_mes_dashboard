/// <summary>
/// 데이터 유형
/// </summary>
enum DataType {
  /// <summary>
  /// 미설정
  /// </summary>
  None,

  /// <summary>
  /// MS장비를 사용하는 성형사출기
  /// </summary>
  MSInjection,

  /// <summary>
  /// MS장비를 사용하는 호퍼
  /// </summary>
  MSHopper,

  /// <summary>
  /// MS장비를 사용하는 냉각탑
  /// </summary>
  MSCoolingTower,

  /// <summary>
  /// MS장비를 사용하는 칠러
  /// </summary>
  MSChiller,

  /// <summary>
  /// 카운트 값을 사용하는 설비
  /// </summary>
  Count,

  /// <summary>
  /// 한영넉스 Mt100 장비를 사용하는 온수기
  /// </summary>
  MTHeater,

  /// <summary>
  /// 제논 ST-200 장비를 사용하는 핫트런너
  /// </summary>
  XNHotRunner,

  /// <summary>
  /// CSV파일전송을 사용하는 설비 카운터
  /// </summary>
  MachineCount,

  /// <summary>
  /// MS장비를 사용하는 이중사출기
  /// </summary>
  MSDoubleInjection,

  /// <summary>
  /// Yudo 호퍼
  /// </summary>
  YDHopper,

  /// <summary>
  /// HOT3 장비를 사용하는 온조기
  /// </summary>
  HOT3TempController,

  /// <summary>
  /// ZigBee로 수집되는 MS장비를 사용하는 성형사출기
  /// </summary>
  ZigBeeMSInjection,

  /// <summary>
  /// ZigBee로 수집되는 카운트 값을 사용하는 설비
  /// </summary>
  ZigBeeCount,

  /// <summary>
  /// MS장비를 사용하는 공장 온습도 설비
  /// </summary>
  MSFactoryCondition,
  ;
}
