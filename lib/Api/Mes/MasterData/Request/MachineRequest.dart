import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../../Base/BaseRequest.dart';
import '../../../Util/ApiManagement/Api.dart';
import '../../../Util/Helper/Network/PathParameterHelper.dart';
import '../Model/Dto/Machine.dart';
import '../Model/Type/ProcessType.dart';
class MachineRequest extends BaseRequest {
  /// case 1 : factoryId && processType
  /// case 2 : factoryId
  /// case 3 : none
  Future<void> getList(
      {int? factoryId,
      ProcessType? processType,
      required Function responseCallback,
      required BuildContext context}) async {
    const Api api = Api.MachinesGetList;
    final String parameter = (PathParameterHelper(api.getParameter())
          ..setParameter(parameterName: ParameterName.factoryId, value: factoryId)
          ..setParameter(parameterName: ParameterName.processType, value: processType))
        .source;


    http.Response response = await sendBaseRequest(api: api, parameter: parameter, body: "", context: context);
    List<MachineDto> list = responseParsing.getValueList(responseBody: response.body).map((v) => MachineDto.fromJson(v)).toList();
    responseCallback(list);
  }
}
