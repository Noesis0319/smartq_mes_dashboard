/// <summary>
/// 검사 유형
/// </summary>
enum InspectionType
{
  /// <summary>
  /// 출장검사 (incoming, 샘플링)
  /// 검사대분류 : Incoming(수입검사)
  /// </summary>
  Trip,

  /// <summary>
  /// 수입검사 (incoming, 샘플링)
  /// 검사대분류 : Incoming(수입검사)
  /// </summary>
  Incoming,

  /// <summary>
  /// 초중종검사 (process, 샘플링)
  /// 검사대분류 : Process(공정검사)
  /// </summary>
  FirstMiddleLast,

  /// <summary>
  /// 공정순회검사 (process, 샘플링)
  /// 검사대분류 : Process(공정검사)
  /// </summary>
  ProcessTour,

  /// <summary>
  /// 공정전수검사 (total, 전수/자동)
  /// 검사대분류 : Total(전수검사)
  /// </summary>
  ProcessTotalMeasure,

  /// <summary>
  /// 공정선별검사 (process, 샘플링)
  /// 검사대분류 : Process(공정검사)
  /// </summary>
  ProcessTotalSelect,

  /// <summary>
  /// 출하검사 (outgoing, 샘플링)
  /// 검사대분류 :Outgoing(출하검사)
  /// </summary>
  OutgoingSample,

  /// <summary>
  /// 출하전수검사 (total, 전수/자동)
  /// 검사대분류 : Total(전수검사)
  /// </summary>
  OutgoingTotalMeasure,

  /// <summary>
  /// 출하선별검사 (outgoing, 샘플링)
  /// 검사대분류 : Outgoing(출하검사)
  /// </summary>
  OutgoingTotalSelect,

  /// <summary>
  /// 고객반품선별 (outgoing, 샘플링)
  /// 검사대분류 : Outgoing(출하검사)
  /// </summary>
  ReturnSelect,
  ;

}