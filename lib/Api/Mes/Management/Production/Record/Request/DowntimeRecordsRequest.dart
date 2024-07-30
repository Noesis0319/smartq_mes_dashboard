import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../../../../Base/BaseRequest.dart';
import '../../../../../Util/ApiManagement/Api.dart';
import '../../../../../Util/Helper/Network/PathParameterHelper.dart';
import '../Model/Dto/DowntimeRecord.dart';
import '../Model/Dto/DowntimeRecordSummary.dart';
import '../Model/Parameter/RecordOrderParameter.dart';
class DowntimeRecordsRequest extends BaseRequest {
  /// 생산가동률 조회 시 비가동내역 조회
  /// case 1 : factoryId && lineId && processType && occuredDate1 && occuredDate2
  /// case 2 : factoryId && processType && occuredDate1 && occuredDate2
  Future<void> getRecords(
      {required int factoryId,
      int? lineId,
      required String processType,
      required String occurredDate1,
      required String occurredDate2,
      required Function responseCallback,
      required BuildContext context}) async {
    const Api api = Api.DowntimeRecordsGetAnalysis;
    final String parameter = (PathParameterHelper(api.getParameter())
          ..setParameter(parameterName: ParameterName.factoryId, value: factoryId)
          ..setParameter(parameterName: ParameterName.lineId, value: lineId)
          ..setParameter(parameterName: ParameterName.processType, value: processType)
          ..setParameter(parameterName: ParameterName.occuredDate1, value: occurredDate1)
          ..setParameter(parameterName: ParameterName.occuredDate2, value: occurredDate2))
        .source;

    http.Response response = await sendBaseRequest(api: api, parameter: parameter, body: "", context: context);
    List<DowntimeRecordSummaryDto> list =
        responseParsing.getValueList(responseBody: response.body).map((v) => DowntimeRecordSummaryDto.fromJson(v)).toList();
    responseCallback(list);
  }


  /// 작업지시 Id 목록 기준 조회 (모바일 전용)
  Future<void> getRecordsByOrdersMobile(
      {required RecordsOrderParameter recordsOrderParameter,
      required Function responseCallback,
      required BuildContext context}) async {
    const Api api = Api.DowntimeRecordsGetByOrdersMobile;
    final String parameter = (PathParameterHelper(api.getParameter())).source;

    http.Response response = await sendBaseRequest(
        api: api, parameter: parameter, body: jsonEncode(recordsOrderParameter.toJson()), context: context);
    List<DowntimeRecordDto> list =
        responseParsing.getValueList(responseBody: response.body).map((v) => DowntimeRecordDto.fromJson(v)).toList();
    responseCallback(list);
  }
}
