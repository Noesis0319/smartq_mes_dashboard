import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../../../../Base/BaseRequest.dart';
import '../../../../../Util/ApiManagement/Api.dart';
import '../../../../../Util/Helper/Network/PathParameterHelper.dart';
import '../Model/Dto/ResponseCall.dart';
import '../Model/Dto/ResponseCallUpdate.dart';
import '../Model/Dto/ResponseUpdate.dart';
import '../Model/Parameter/AddCall.dart';
class FcmRequest extends BaseRequest {
  Future<void> get({required int id, required Function responseCallback, required BuildContext context}) async {
    const Api api = Api.CallResponseGet;

    final String parameter = (PathParameterHelper(api.getParameter())).source;

    http.Response response = await sendBaseRequest(api: api, parameter: parameter, body: "", context: context);
    responseCallback(response);
  }

  Future<void> getNotResponded({String? lineId, required String callDate1, required String callDate2, required Function responseCallback, required BuildContext context}) async {
    const Api api = Api.CallResponseNotResponded;

    final String parameter = (PathParameterHelper(api.getParameter())
          ..setParameter(parameterName: ParameterName.lineId, value: lineId)
          ..setParameter(parameterName: ParameterName.callDate1, value: callDate1)
          ..setParameter(parameterName: ParameterName.callDate2, value: callDate2))
        .source;

    http.Response response = await sendBaseRequest(api: api, parameter: parameter, body: "", context: context);

    List<CallResponseDto> list = responseParsing.getValueList(responseBody: response.body).map((v) => CallResponseDto.fromJson(v)).toList();
    responseCallback(list);
  }

  Future<void> getList({String? lineId, required String callDate1, required String callDate2, required Function responseCallback, required BuildContext context}) async {
    const Api api = Api.CallResponseGetList;
    final String parameter = (PathParameterHelper(api.getParameter())
          ..setParameter(parameterName: ParameterName.lineId, value: lineId)
          ..setParameter(parameterName: ParameterName.callDate1, value: callDate1)
          ..setParameter(parameterName: ParameterName.callDate2, value: callDate2))
        .source;

    http.Response response = await sendBaseRequest(api: api, parameter: parameter, body: "", context: context);
    List<CallResponseDto> list = responseParsing.getValueList(responseBody: response.body).map((v) => CallResponseDto.fromJson(v)).toList();
    responseCallback(list);
  }

  Future<void> addCall({required AddCallParameter addCallDto, required Function responseCallback, required BuildContext context}) async {
    const Api api = Api.CallResponseAdd;
    final String parameter = (PathParameterHelper(api.getParameter())).source;

    http.Response response = await sendBaseRequest(api: api, parameter: parameter, body: jsonEncode(addCallDto.toJson()), context: context);
    responseCallback(response.body);
  }

  Future<void> update({required int id, required UpdateResponseDto upDateDto, required Function responseCallback, required BuildContext context}) async {
    const Api api = Api.CallResponseUpdate;
    final String parameter = (PathParameterHelper(api.getParameter())..setParameter(parameterName: ParameterName.id, value: id)).source;

    http.Response response = await sendBaseRequest(api: api, parameter: parameter, body: jsonEncode(upDateDto.toJson()), context: context);

    responseCallback(response.statusCode == ok);
  }

  Future<void> updateRecord({required int id, required UpdateCallResponseDto updateCallResponseDto, required Function responseCallback, required BuildContext context}) async {
    const Api api = Api.CallResponseGet;

    final String parameter = (PathParameterHelper(api.getParameter())..setParameter(parameterName: ParameterName.id, value: id)).source;

    http.Response response = await sendBaseRequest(api: api, parameter: parameter, body: jsonEncode(updateCallResponseDto.toJson()), context: context);

    responseCallback(response.statusCode == ok);
  }

  Future<void> delete({required int id, required Function responseCallback, required BuildContext context}) async {
    const Api api = Api.CallResponseDelete;
    final String parameter = (PathParameterHelper(api.getParameter())..setParameter(parameterName: ParameterName.id, value: id)).source;
    http.Response response = await sendBaseRequest(api: api, parameter: parameter, body: "", context: context);
    responseCallback(response.statusCode == ok);
  }
}
