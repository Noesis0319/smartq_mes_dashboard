import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../../Base/BaseRequest.dart';
import '../../../Util/ApiManagement/Api.dart';
import '../../../Util/Helper/Network/PathParameterHelper.dart';
class PasDataRequest extends BaseRequest {
  /// 현재 설비 데이터 조회
  Future<void> readFromMachineAsync(
      {required int machineNumber, required Function responseCallback, required BuildContext context}) async {
    const Api api = Api.PasDataReadFromMachineAsync;
    final String parameter = (PathParameterHelper(api.getParameter())
          ..setParameter(parameterName: ParameterName.machineNumber, value: machineNumber))
        .source;

    http.Response response = await sendBaseRequest(api: api, parameter: parameter, body: "", context: context);
    responseCallback(response);
  }

  /// 선택된 설비의 최근 n시간 내 상위 m개 데이터 조회
  Future<void> getLatestPasInjectionData({
    required String dateTime,
    required int machineId,
    required int interval,
    required int maxRecordCount,
    bool? csv,
    required Function responseCallback,
    required BuildContext context,
  }) async {
    const Api api = Api.PasDataGetLatestPasInjectionData;
    final String parameter = (PathParameterHelper(api.getParameter())
          ..setParameter(parameterName: ParameterName.dateTime, value: dateTime)
          ..setParameter(parameterName: ParameterName.machineId, value: machineId)
          ..setParameter(parameterName: ParameterName.interval, value: interval)
          ..setParameter(parameterName: ParameterName.maxRecordCount, value: maxRecordCount)
          ..setParameter(parameterName: ParameterName.csv, value: csv))
        .source;

    http.Response response = await sendBaseRequest(api: api, parameter: parameter, body: "", context: context);
    responseCallback(response);
  }
}
