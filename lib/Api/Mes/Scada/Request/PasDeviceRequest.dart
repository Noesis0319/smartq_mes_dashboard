import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../../Base/BaseRequest.dart';
import '../../../Util/ApiManagement/Api.dart';
import '../../../Util/Helper/Network/PathParameterHelper.dart';
import '../Model/Dto/PasDevice.dart';
class PasDeviceRequest extends BaseRequest {
  Future<void> getAllDevices(
      {
      required Function responseCallback,
      required BuildContext context}) async {
    const Api api = Api.PasDeviceGetAllDevices;
    final String parameter = (PathParameterHelper(api.getParameter())).source;

    http.Response response = await sendBaseRequest(api: api, parameter: parameter, body: "", context: context);
    List<PasDeviceDto> list = responseParsing.getValueList(responseBody: response.body).map((v) => PasDeviceDto.fromJson(v)).toList();
    responseCallback(list);
  }
}
