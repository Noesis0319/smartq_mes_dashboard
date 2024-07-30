import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../../Base/BaseRequest.dart';
import '../../../Util/ApiManagement/Api.dart';
import '../../../Util/Helper/Network/PathParameterHelper.dart';
import '../Model/Dto/LatestPriceRecord.dart';
import '../Model/Dto/PriceRecord.dart';
class PriceRecordRequest extends BaseRequest {
  /// 단가 목록 조회
  /// case 1 : companyId && itemId && deliveryTypeId && directionType
  /// case 2 : companyId && directionType && categoryId
  /// case 3 : companyId && directionType
  /// case 4 : categoryId
  /// case 5 : directionType
  /// case 6 : none
  Future<void> getList(
      {int? companyId,
      int? itemId,
      int? deliveryTypeId,
      int? categoryId,
      String? directionType,
      required Function responseCallback,
      required BuildContext context}) async {
    const Api api = Api.PriceRecordGetList;
    final String parameter = (PathParameterHelper(api.getParameter())
          ..setParameter(parameterName: ParameterName.companyId, value: companyId)
          ..setParameter(parameterName: ParameterName.itemId, value: itemId)
          ..setParameter(parameterName: ParameterName.deliveryTypeId, value: deliveryTypeId)
          ..setParameter(parameterName: ParameterName.categoryId, value: categoryId)
          ..setParameter(parameterName: ParameterName.directionType, value: directionType))
        .source;

    http.Response response = await sendBaseRequest(api: api, parameter: parameter, body: "", context: context);
    List<PriceRecordDto> list =
        responseParsing.getValueList(responseBody: response.body).map((v) => PriceRecordDto.fromJson(v)).toList();
    responseCallback(list);
  }

  /// 최근 단가 목록 조회
  /// case 1 : categoryId && directionType
  /// case 2 : directionType
  /// case 3 : none
  Future<void> getLatestList(
      {int? categoryId,
      String? directionType,
      required Function responseCallback,
      required BuildContext context}) async {
    const Api api = Api.PriceRecordGetLatestList;
    final String parameter = (PathParameterHelper(api.getParameter())
          ..setParameter(parameterName: ParameterName.categoryId, value: categoryId)
          ..setParameter(parameterName: ParameterName.directionType, value: directionType))
        .source;

    http.Response response = await sendBaseRequest(api: api, parameter: parameter, body: "", context: context);
    List<LatestPriceRecordDto> list =
        responseParsing.getValueList(responseBody: response.body).map((v) => LatestPriceRecordDto.fromJson(v)).toList();
    responseCallback(list);
  }
}
