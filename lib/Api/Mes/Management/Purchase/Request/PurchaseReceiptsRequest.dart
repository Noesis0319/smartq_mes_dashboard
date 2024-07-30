import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../../../Base/BaseRequest.dart';
import '../../../../Util/ApiManagement/Api.dart';
import '../../../../Util/Helper/Network/PathParameterHelper.dart';
import '../Model/Dto/PurchaseReceiptSummary.dart';
import '../Model/Parameter/PurchaseReceiptSummariesMaterial.dart';
class PurchaseReceiptsRequest extends BaseRequest {
  /// 표준 입하 조회
  /// case 1 : factoryId && categoryId && receiptDate1 && receiptDate2
  /// case 2 : factoryId && categoryId && receiptDate1 && receiptDate2 && putAwayCompleted
  /// case 3 : factoryId && itemId && receiptDate1 && receiptDate2
  /// case 4 : factoryId && itemId && receiptDate1 && receiptDate2 && putAwayCompleted
  Future<void> getStandardReceiptSummaries(
      {required int factoryId,
      int? categoryId,
      int? itemId,
      required String receiptDate1,
      required String receiptDate2,
      bool? putAwayCompleted,
      required Function responseCallback,
      required BuildContext context}) async {
    const Api api = Api.PurchaseReceiptSummaries;
    final String parameter = (PathParameterHelper(api.getParameter())
          ..setParameter(parameterName: ParameterName.factoryId, value: factoryId)
          ..setParameter(parameterName: ParameterName.categoryId, value: categoryId)
          ..setParameter(parameterName: ParameterName.categoryId, value: itemId)
          ..setParameter(parameterName: ParameterName.receiptDate1, value: receiptDate1)
          ..setParameter(parameterName: ParameterName.receiptDate2, value: receiptDate2)
          ..setParameter(parameterName: ParameterName.putAwayCompleted, value: putAwayCompleted))
        .source;

    http.Response response = await sendBaseRequest(api: api, parameter: parameter, body: "", context: context);
    List<PurchaseReceiptSummaryDto> list = responseParsing
        .getValueList(responseBody: response.body)
        .map((v) => PurchaseReceiptSummaryDto.fromJson(v))
        .toList();
    responseCallback(list);
  }

  /// 발주입하마감 분석 대상 구매입하 조회
  /// case 1 : factoryId && categoryId && sellerId && itemId && receiptDate1 && receiptDate2
  /// case 2 : factoryId && categoryId && sellerId && receiptDate1 && receiptDate2
  /// case 3 : factoryId && sellerId && itemId && receiptDate1 && receiptDate2
  /// case 4 : factoryId && categoryId && itemId && receiptDate1 && receiptDate2
  /// case 5 : factoryId && itemId && receiptDate1 && receiptDate2
  /// case 6 : factoryId && sellerId && receiptDate1 && receiptDate2
  /// case 7 : factoryId && categoryId && receiptDate1 && receiptDate2
  /// case 8 : factoryId && receiptDate1 && receiptDate2
  Future<void> getReceiptSummariesToAnalysis(
      {required int factoryId,
      int? categoryId,
      int? sellerId,
      int? itemId,
      required String receiptDate1,
      required String receiptDate2,
      required Function responseCallback,
      required BuildContext context}) async {
    const Api api = Api.PurchaseReceiptSummariesToAnalysis;
    final String parameter = (PathParameterHelper(api.getParameter())
          ..setParameter(parameterName: ParameterName.factoryId, value: factoryId)
          ..setParameter(parameterName: ParameterName.categoryId, value: categoryId)
          ..setParameter(parameterName: ParameterName.sellerId, value: sellerId)
          ..setParameter(parameterName: ParameterName.itemId, value: itemId)
          ..setParameter(parameterName: ParameterName.receiptDate1, value: receiptDate1)
          ..setParameter(parameterName: ParameterName.receiptDate2, value: receiptDate2))
        .source;

    http.Response response = await sendBaseRequest(api: api, parameter: parameter, body: "", context: context);
    List<PurchaseReceiptSummaryDto> list = responseParsing
        .getValueList(responseBody: response.body)
        .map((v) => PurchaseReceiptSummaryDto.fromJson(v))
        .toList();
    responseCallback(list);
  }

  Future<void> getReceiptSummariesToInspect(
      {required int factoryId,
      required int categoryId,
      required String receiptDate1,
      required String receiptDate2,
      required Function responseCallback,
      required BuildContext context}) async {
    const Api api = Api.PurchaseReceiptSummariesToInspect;
    final String parameter = (PathParameterHelper(api.getParameter())
          ..setParameter(parameterName: ParameterName.factoryId, value: factoryId)
          ..setParameter(parameterName: ParameterName.categoryId, value: categoryId)
          ..setParameter(parameterName: ParameterName.receiptDate1, value: receiptDate1)
          ..setParameter(parameterName: ParameterName.receiptDate2, value: receiptDate2))
        .source;

    http.Response response = await sendBaseRequest(api: api, parameter: parameter, body: "", context: context);
    List<PurchaseReceiptSummaryDto> list = responseParsing
        .getValueList(responseBody: response.body)
        .map((v) => PurchaseReceiptSummaryDto.fromJson(v))
        .toList();
    responseCallback(list);
  }

  Future<void> getReceiptSummariesToMaterial(
      {required PurchaseReceiptSummariesMaterialParameter purchaseReceiptSummariesMaterialParameter,
      required Function responseCallback,
      required BuildContext context}) async {
    const Api api = Api.PurchaseReceiptSummariesToMaterial;
    final String parameter = (PathParameterHelper(api.getParameter())).source;

    http.Response response = await sendBaseRequest(
        api: api,
        parameter: parameter,
        body: jsonEncode(purchaseReceiptSummariesMaterialParameter.toJson()),
        context: context);
    List<PurchaseReceiptSummaryDto> list = responseParsing
        .getValueList(responseBody: response.body)
        .map((v) => PurchaseReceiptSummaryDto.fromJson(v))
        .toList();
    responseCallback(list);
  }
}
