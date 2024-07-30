import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../../../../Base/BaseRequest.dart';
import '../../../../../Util/ApiManagement/Api.dart';
import '../../../../../Util/Helper/Network/PathParameterHelper.dart';
import '../../../../MasterData/Model/Type/InspectionSuperCategory.dart';
import '../../../../MasterData/Model/Type/InspectionType.dart';
import '../Model/Dto/InspectionWorkHeader.dart';
import '../Model/Dto/InspectionWorkSummary.dart';

class InspectionWorkRequest extends BaseRequest {

  /// case 1 : factoryId && superCategory && inspectionType && inspectionDate1 && inspectionDate2
  /// case 2 : factoryId && superCategory && inspectionDate1 && inspectionDate2
  /// case 3 : factoryId && inspectionDate1 && inspectionDate2
  Future<void> getInspectionSummaries(
      {required int factoryId,
      String? superCategory,
      String? inspectionType,
      required String inspectionDate1,
      required String inspectionDate2,
      required Function responseCallback,
      required BuildContext context}) async {
    const Api api = Api.InspectionWorkSummaries;
    final String parameter = (PathParameterHelper(api.getParameter())
          ..setParameter(parameterName: ParameterName.factoryId, value: factoryId)
          ..setParameter(parameterName: ParameterName.superCategory, value: superCategory)
          ..setParameter(parameterName: ParameterName.inspectionType, value: inspectionType)
          ..setParameter(parameterName: ParameterName.inspectionDate1, value: inspectionDate1)
          ..setParameter(parameterName: ParameterName.inspectionDate2, value: inspectionDate2))
        .source;

    http.Response response = await sendBaseRequest(api: api, parameter: parameter, body: "", context: context);
    List<InspectionWorkSummaryDto> list = responseParsing
        .getValueList(responseBody: response.body)
        .map((v) => InspectionWorkSummaryDto.fromJson(v))
        .toList();
    responseCallback(list);
  }

  /// case 1 : factoryId && superCategory && inspectionDate1 && inspectionDate2
  /// case 2 : factoryId && inspectionType && inspectionDate1 && inspectionDate2
  Future<void> getInspectionHeaders(
      {required int factoryId,
        InspectionSuperCategory? superCategory,
        InspectionType? inspectionType,
        required String inspectionDate1,
        required String inspectionDate2,
        required Function responseCallback,
        required BuildContext context}) async {
    const Api api = Api.InspectionWorkHeaders;
    final String parameter = (PathParameterHelper(api.getParameter())
      ..setParameter(parameterName: ParameterName.factoryId, value: factoryId)
      ..setParameter(parameterName: ParameterName.superCategory, value: superCategory)
      ..setParameter(parameterName: ParameterName.inspectionType, value: inspectionType)
      ..setParameter(parameterName: ParameterName.inspectionDate1, value: inspectionDate1)
      ..setParameter(parameterName: ParameterName.inspectionDate2, value: inspectionDate2))
        .source;

    http.Response response = await sendBaseRequest(api: api, parameter: parameter, body: "", context: context);
    List<InspectionWorkHeaderDto> list = responseParsing
        .getValueList(responseBody: response.body)
        .map((v) => InspectionWorkHeaderDto.fromJson(v))
        .toList();
    responseCallback(list);
  }
}
