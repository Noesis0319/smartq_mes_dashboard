import 'dart:async';
import 'dart:convert';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../../../Util/Storage/Base/Controller/Controller.dart';

import '../../../Config/Mixin/CommonObject.dart';
import '../../../Config/Mixin/Request.dart';
import '../../../Content/Widget/Custom/Base/Controller.dart';
import '../../../Content/Widget/Custom/Widget/SnackBar/CustomSnackBar.dart';
import '../../../Resource/ResourceType.dart';
import '../../../Util/Storage/Type/StorageType.dart';
import '../Helper/Network/NetworkStatusHelper.dart';
import 'Api.dart';
import 'AuthType.dart';
import 'Controller.dart';

class RequestController with CommonObject, RequestMixin {
  Future<http.Response> sendRequest(
      {required Api api,
      required String parameter,
      required String body,
      required BuildContext context,
      AuthType? authType,
      bool returnError = false}) async {
    Custom.indicator.show(context: context);

    final Uri uri = Uri.parse(uriHelper.makeUri(api: api, parameter: parameter));

    await _checkInternetConnection(context: context);

    http.Response response = await _connection(api: api, body: body, uri: uri, authType: authType, context: context);

    if (response.statusCode == ok) {
      _printResult(response: response, api: api, body: body, uri: uri);
      _popIndicator(context: context);
      return response;
    } else {
      _printError(response: response, api: api, body: body, uri: uri);
      if (returnError) {
        _popIndicator(context: context);
        return response;
      } else {
        throw Exception();
      }
    }
  }

  Future<http.Response> sendAuthRequest(
      {required Api api,
      required String parameter,
      required String body,
      required BuildContext context,
      AuthType? authType,
      bool isErrorDialogShow = true}) async {
    Custom.indicator.show(context: context);

    final Uri uri = Uri.parse(uriHelper.makeUri(api: api, parameter: parameter));

    await _checkInternetConnection(context: context);

    http.Response response = await _connection(
      api: api,
      body: body,
      uri: uri,
      authType: authType,
      context: context,
    );

    if (response.statusCode == ok) {
      _printResult(response: response, api: api, body: body, uri: uri);
    } else {
      _printError(response: response, api: api, body: body, uri: uri);
      if (isErrorDialogShow && context.mounted) {
        _showAuthFailDialog(context: context);
      }
    }

    _popIndicator(context: context);
    return response;
  }

  Future<void> _checkInternetConnection({BuildContext? context}) async {
    await NetworkStatusHelper.getConnectivityStatus().then((status) {
      if (status == ConnectivityResult.none) {
        if (context != null) {
          Custom.snackBar.show(
              context: context, snackBarType: SnackBarType.Fail, message: AlarmTextType.NotConnectedInternet.getText());
          // Navigator.pop(context);
        }
      }
    });
  }

  Future<http.Response> _connection({
    required Api api,
    required Uri uri,
    required String body,
    BuildContext? context,
    AuthType? authType,
  }) async {
    HttpMethod httpMethod = api.getHttpMethod();
    ApiController apiController = api.getApiController();
    // AuthType type = authType ?? (isTestServer ? AuthType.debug : apiController.getAuthType());
    AuthType type = authType ?? apiController.getAuthType();

    Map<String, String> headers = await _getHeaders(
      authType: type,
    );

    http.Response? response;
    try {
      switch (httpMethod) {
        case HttpMethod.Get:
          response = await httpClient.get(uri, headers: headers).timeout(Duration(milliseconds: timeOutMillis));
        case HttpMethod.Post:
          response =
              await httpClient.post(uri, headers: headers, body: body).timeout(Duration(milliseconds: timeOutMillis));
        case HttpMethod.Put:
          response =
              await httpClient.put(uri, headers: headers, body: body).timeout(Duration(milliseconds: timeOutMillis));
        case HttpMethod.Delete:
          response =
              await httpClient.delete(uri, headers: headers, body: body).timeout(Duration(milliseconds: timeOutMillis));
      }
    } on TimeoutException catch (_) {
      throw Exception();
    } finally {}
    return response;
  }

  Future<Map<String, String>> _getHeaders({
    required AuthType authType,
  }) async {
    Map<String, String> headers = {};
    headers[contentType] = contentTypeJsonUtf8;
    headers[authorization] = await _getToken(authType: authType);
    return headers;
  }

  Future<String> _getToken({required AuthType authType}) async {
    String? token;

    // StorageType storageType = platformHelper.getPlatformDefaultStorageType();

    switch (authType) {
      case AuthType.Employee:
      case AuthType.Admin:
        if (useEmployeeToken) {
          token = await storage.getAuthEmployeeToken(storageType: StorageType.Local);
        } else {
          token = await storage.getAuthCompanyToken(storageType: StorageType.Local);
        }
        break;
      case AuthType.Company:
        token = await storage.getAuthCompanyToken(storageType: StorageType.Local);
        break;
      case AuthType.Debug:
        token = debugToken;
        break;
      case AuthType.NoAuth:
        token = "";
        break;
      default:
        token = "";
        break;
    }

    return authType.getKey() + " " + token;
  }

  void _printResult({required http.Response response, required Api api, required String body, required Uri uri}) {
    logger.debug('<${api.name}> [${response.statusCode}] [${response.request}]');
    logger.debug('Body: [$body]');
    logger.debug('Uri: [$uri]');
    logger.debug('Response: [${response.body}]');
  }

  void _printError({required http.Response response, required Api api, required String body, required Uri uri}) {
    logger.error('<${api.name}> [${response.statusCode}][${response.request}]');
    logger.error('Body : [$body]');
    logger.error('Header : [${response.headers}]');
    logger.error('Uri : [$uri]');
    logger.error('Body : [${utf8.decode(response.bodyBytes)}]');
    logger.error(response.headers);
  }

  void _showAuthFailDialog({required BuildContext context}) {
    Custom.dialog.error(
      buildContext: context,
      title: ResourceType.AuthenticationError.getText(),
    );
  }

  void _showAuthFailCallDialog({required BuildContext context, required Function() onPressed}) {
    Custom.dialog.error2Button(
        buildContext: context,
        title: ResourceType.AuthenticationError.getText(),
        onPressed: () async {
          final Uri phoneUri = Uri(
            scheme: tel,
            path: ResourceType.CustomerServicePhoneNumber.getText(),
          );
        });
  }

  _popIndicator({required BuildContext context}) {
    Navigator.pop(context);
  }
}
