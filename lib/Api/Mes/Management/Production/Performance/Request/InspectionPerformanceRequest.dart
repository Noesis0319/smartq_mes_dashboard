
import 'package:flutter/material.dart';

import '../../../../../Base/BaseRequest.dart';
import '../../../../../Util/ApiManagement/Api.dart';
import '../../../../../Util/Helper/Network/PathParameterHelper.dart';
import 'package:http/http.dart' as http;

import '../Model/Dto/InspectionMachineOrderSituation.dart';
import '../Model/Dto/InspectionOrderSituation.dart';
class InspectionPerformanceRequest extends BaseRequest{

  /// 검사 설비 생산 현황 조회
  Future<void> getTodayMachineOrderSituations({required Function responseCallback, required BuildContext context})async{
    const Api api = Api.InspectionPerformanceTodayMachineOrderSituation;
    final String parameter = (PathParameterHelper(api.getParameter())).source;


    http.Response response = await sendBaseRequest(api: api, parameter: parameter, body: "", context: context);
    List<InspectionMachineOrderSituationDto> list = responseParsing.getValueList(responseBody: response.body).map((v) => InspectionMachineOrderSituationDto.fromJson(v)).toList();
    responseCallback(list);
  }

  /// 금일 작업중인 모든 검사 생산현황 조회
  Future<void> getTodayOrderSituations({required Function responseCallback, required BuildContext context})async{
    const Api api = Api.InspectionPerformanceTodayOrderSituation;
    final String parameter = (PathParameterHelper(api.getParameter())).source;


    http.Response response = await sendBaseRequest(api: api, parameter: parameter, body: "", context: context);
    List<InspectionOrderSituationDto> list = responseParsing.getValueList(responseBody: response.body).map((v) => InspectionOrderSituationDto.fromJson(v)).toList();
    responseCallback(list);
  }
}