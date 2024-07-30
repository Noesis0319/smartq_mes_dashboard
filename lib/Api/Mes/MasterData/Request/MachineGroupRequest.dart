import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../../Base/BaseRequest.dart';
import '../../../Util/ApiManagement/Api.dart';
import '../../../Util/Helper/Network/PathParameterHelper.dart';
import '../Model/Dto/MachineGroup.dart';
class MachineGroupRequest extends BaseRequest {
  Future<void> getList(
      {required String monitoringType,
      required String processType,
      required Function responseCallback,
      required BuildContext context}) async {
    const Api api = Api.MachineGroupGetList;
    final String parameter = (PathParameterHelper(api.getParameter())
          ..setParameter(parameterName: ParameterName.monitoringType, value: monitoringType)
          ..setParameter(parameterName: ParameterName.processType, value: processType))
        .source;

    http.Response response = await sendBaseRequest(api: api, parameter: parameter, body: "", context: context);

    List<MachineGroupAggregateDto> list =
        responseParsing.getValueList(responseBody: response.body).map((v) => MachineGroupAggregateDto.fromJson(v)).toList();
    responseCallback(list);
  }
}
