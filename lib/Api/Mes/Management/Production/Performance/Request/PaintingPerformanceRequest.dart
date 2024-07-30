import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../../../../Base/BaseRequest.dart';
import '../../../../../Util/ApiManagement/Api.dart';
import '../../../../../Util/Helper/Network/PathParameterHelper.dart';
import '../Model/Dto/PaintingMachineOrderSituation.dart';
import '../Model/Dto/PaintingOrderSituation.dart';
class PaintingPerformanceRequest extends BaseRequest{

  /// 도장생산현황 조회 (도장생산현황)
  Future<void> getTodayMachineOrderSituations({required Function responseCallback, required BuildContext context})async{
    const Api api = Api.PaintingPerformanceTodayMachineOrderSituation;
    final String parameter = (PathParameterHelper(api.getParameter())).source;


    http.Response response = await sendBaseRequest(api: api, parameter: parameter, body: "", context: context);
    List<PaintingMachineOrderSituationDto> list = responseParsing.getValueList(responseBody: response.body).map((v) => PaintingMachineOrderSituationDto.fromJson(v)).toList();
    responseCallback(list);
  }

  /// 금일 작업중인 모든 도장 생산현황 조회
  Future<void> getTodayOrderSituations({required Function responseCallback, required BuildContext context})async{
    const Api api = Api.PaintingPerformanceTodayOrderSituation;
    final String parameter = (PathParameterHelper(api.getParameter())).source;


    http.Response response = await sendBaseRequest(api: api, parameter: parameter, body: "", context: context);
    List<PaintingOrderSituationDto> list = responseParsing.getValueList(responseBody: response.body).map((v) => PaintingOrderSituationDto.fromJson(v)).toList();
    responseCallback(list);
  }
}