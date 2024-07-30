
class PathParameterHelper {
  String _source = "";

  String get source => _source;

  PathParameterHelper(this._source);

  void setParameter({required ParameterName parameterName, required Object? value}) {
    String name = parameterName.name;
    if (value == null) {
      _source = _source.replaceAll("&$name={$name}", "");
      _source = _source.replaceAll("$name={$name}", "");
      _source = _source.replaceAll("{$name}", "");
      _source = _source.replaceAll("?&", "?");
    } else {
      _source = _source.replaceAll("{$name}", value.toString());
    }

    if (_source.length > 1 && source.substring(0, 1) == "/") {
      _source = _source.replaceAll("/", "{EmptyPath}/");
    }
  }

  void addParameter({required String parameterName, required Object value}) {
    if (!_source.contains("?")) {
      _source = "$_source?$parameterName=$value";
    } else {
      _source = "$_source&$parameterName=$value";
    }
  }
}

enum ParameterName {
  ///ID
  id,
  buyerId,
  categoryId,
  collectionGroupId,
  companyId,
  deliveryTypeId,
  factoryId,
  groupId,
  itemId,
  lineId,
  loginId,
  machineId,
  majorGroupId,
  orderId,
  orderLineId,
  sellerId,

  ///Number
  lineNumber,
  machineNumber,

  ///Time / Date
  beginTime,
  dateTime,
  endTime,
  callDate1,
  callDate2,
  closingDate1,
  closingDate2,
  date1,
  date2,
  inspectionDate1,
  inspectionDate2,
  issueDate1,
  issueDate2,
  orderDate1,
  orderDate2,
  pickingDate1,
  pickingDate2,
  planDate1,
  planDate2,
  receiptDate1,
  receiptDate2,

  ///Type
  directionType,
  inspectionType,
  monitoringType,
  processType,

  ///Etc
  csv,
  handled,
  interval,
  maxRecordCount,
  brn,
  superCategory,
  status,
  putAwayCompleted,

  /// 오타(수정 x)
  occuredDate1,
  occuredDate2,
  ;
}
