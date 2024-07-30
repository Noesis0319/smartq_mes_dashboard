

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../../Base/BaseRequest.dart';
import '../../../Util/ApiManagement/Api.dart';
import '../../../Util/Helper/Network/PathParameterHelper.dart';

class EasyFactoryDataRequest extends BaseRequest {
  /// ++ 데이터가 어떤식으로 넘어오는지 확인
  /// 현재 설비 데이터 조회
  Future<void> readFromMachineAsync(
      {required int machineNumber, required Function responseCallback, required BuildContext context}) async {
    const Api api = Api.EasyFactoryDataReadFromMachineAsync;
    final String parameter = (PathParameterHelper(api.getParameter())
          ..setParameter(parameterName: ParameterName.machineNumber, value: machineNumber))
        .source;

    http.Response response = await sendBaseRequest(api: api, parameter: parameter, body: "", context: context);

    responseCallback(response);
  }
}
