import 'dart:convert';

import '../../Api/Util/Helper/Parsing/ResponseParsing.dart';
import '../../Api/Util/Helper/Parsing/UriHelper.dart';
import 'package:http/http.dart' as http;

mixin RequestMixin {
  final httpClient = http.Client();
  final responseParsing = ResponseParsing();
  final UriHelper uriHelper = UriHelper();
  final int ok = 200;
  final int validHours = 12;
  final int timeOutMillis = 3000000;
  final String contentType = "Content-Type";
  final String authorization = 'Authorization';
  final String contentTypeJsonUtf8 = "application/json; charset=utf-8";
  final String tel = 'tel';
  final String debugToken = base64.encode(utf8.encode('${null}:${null}'));
  final bool useEmployeeToken = false;
}
