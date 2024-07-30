
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../../Base/BaseRequest.dart';
import '../../../Util/ApiManagement/Api.dart';
import '../Model/Dto/DataMachineSettingDetail.dart';

class DataMachineSettingRequest extends BaseRequest {
  Future<void> getList({
    required Function(List<DataMachineSettingDetailDto>) responseCallback,
    required BuildContext context,
  }) async {
    const Api api = Api.DataMachineSettingDetailGetList;
    final String parameter = api.getParameter();

    http.Response response = await sendBaseRequest(api: api, parameter: parameter, body: "", context: context);

    List<DataMachineSettingDetailDto> list = responseParsing
        .getValueList(responseBody: response.body)
        .map((v) => DataMachineSettingDetailDto.fromJson(v))
        .toList();
    responseCallback(list);
  }
}
