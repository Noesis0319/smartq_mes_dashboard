
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../../Base/BaseRequest.dart';
import '../../../Util/ApiManagement/Api.dart';
import '../../../Util/Helper/Network/PathParameterHelper.dart';
import '../../Management/Production/CallResponse/Model/Dto/Error.dart';
import '../Model/Parameter/ErrorParameter.dart';

class ErrorRequest extends BaseRequest {
  Future<void> getCurrentList(
      {required Function(List<ErrorDto>) responseCallback, required BuildContext context}) async {
    const Api api = Api.ErrorAlertCurrentGetList;
    final String parameter = (PathParameterHelper(api.getParameter())).source;

    http.Response response = await sendBaseRequest(api: api, parameter: parameter, body: "", context: context);
    List<ErrorDto> list =
        responseParsing.getValueList(responseBody: response.body).map((v) => ErrorDto.fromJson(v)).toList();
    responseCallback(list);
  }

  Future<void> getList(
      {required String date1,
      required String date2,
      int? lineNumber,
      bool? handled,
      required Function(List<ErrorDto>) responseCallback,
      required BuildContext context}) async {
    const Api api = Api.ErrorAlertGetList;
    final String parameter = (PathParameterHelper(api.getParameter())
          ..setParameter(parameterName: ParameterName.date1, value: date1)
          ..setParameter(parameterName: ParameterName.date2, value: date2)
          ..setParameter(parameterName: ParameterName.handled, value: handled)
          ..setParameter(parameterName: ParameterName.lineNumber, value: lineNumber))
        .source;

    http.Response response = await sendBaseRequest(api: api, parameter: parameter, body: "", context: context);

    List<ErrorDto> list =
        responseParsing.getValueList(responseBody: response.body).map((v) => ErrorDto.fromJson(v)).toList();
    responseCallback(list);
  }

  Future<void> addError(
      {required ErrorParameter errorParameter,
      required Function responseCallback,
      required BuildContext context}) async {
    const Api api = Api.ErrorAlertAdd;
    final String parameter = (PathParameterHelper(api.getParameter())).source;
    http.Response response = await sendBaseRequest(
        api: api, parameter: parameter, body: jsonEncode(errorParameter.toJson()), context: context);
    responseCallback(response.body);
  }
}
