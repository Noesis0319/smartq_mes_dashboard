
import 'Controller.dart';

enum HttpMethod {
  Get,
  Post,
  Put,
  Delete,
}

enum Api {
  ///Admin
  CustomersPermissions(HttpMethod.Get, ApiController.Customers, "Brn/{brn}/Permissions"),
  CompaniesPermissions(HttpMethod.Get, ApiController.Companies, "Brn/{brn}/Permissions"),

  ///ClosingManagement
  SalesClosingGetStandardSalesClosingSummariesToAnalysis(HttpMethod.Get, ApiController.SalesClosings,
      "Summaries/Analysis/Standard/?factoryId={factoryId}&categoryId={categoryId}&buyerId={buyerId}&itemId={itemId}&closingDate1={closingDate1}&closingDate2={closingDate2}"),
  PurchaseClosingSummariesToAnalysis(HttpMethod.Get, ApiController.PurchaseClosings,
      "Summaries/Analysis/Standard/?factoryId={factoryId}&categoryId={categoryId}&sellerId={sellerId}&itemId={itemId}&closingDate1={closingDate1}&closingDate2={closingDate2}"),

  ///EasyFactory
  DataFieldGetList(HttpMethod.Get, ApiController.DataField, "?collectionGroupId={collectionGroupId}"),
  DataMachineSettingDetailGetList(HttpMethod.Get, ApiController.DataMachineSetting, ""),
  EasyFactoryDataReadFromMachineAsync(HttpMethod.Get, ApiController.Data, "Current/?machineNumber={machineNumber}"),

  ///Scada
  PasDataReadFromMachineAsync(HttpMethod.Get, ApiController.PasData, "Current/?machineNumber={machineNumber}"),
  PasDataGetLatestPasInjectionData(HttpMethod.Get, ApiController.PasData,
      "Injection/Latest/?dateTime={dateTime}&machineId={machineId}&interval={interval}&maxRecordCount={maxRecordCount}&csv={csv}"),
  PasDeviceGetAllDevices(HttpMethod.Get, ApiController.PasDevice, ""),

  ///InventoryManagement
  GetGoodsPickingSummaryInspect(
    HttpMethod.Get,
    ApiController.GoodsPicking,
    "Summaries/Inspect/?factoryId={factoryId}&categoryId={categoryId}&pickingDate1={pickingDate1}&pickingDate2={pickingDate2}",
  ),

  ///LotManagement
  LotGetList(HttpMethod.Get, ApiController.Lot, "?date1={date1}&date2={date2}&itemId={itemId}"),

  ///MasterData
  ItemGetList(HttpMethod.Get, ApiController.Item,
      "?categoryId={categoryId}&majorGroupId={majorGroupId}&groupId={groupId}&processType={processType}"),
  ItemCategoryGetList(HttpMethod.Get, ApiController.ItemCategory, ""),
  MachineGroupGetList(
      HttpMethod.Get, ApiController.MachineGroups, "?monitoringType={monitoringType}&processType={processType}"),
  PriceRecordGetList(HttpMethod.Get, ApiController.PriceRecord,
      "?companyId={companyId}&directionType={directionType}&categoryId={categoryId}&itemId={itemId}&deliveryTypeId={deliveryTypeId}"),
  PriceRecordGetLatestList(
      HttpMethod.Get, ApiController.PriceRecord, "Latest/?categoryId={categoryId}&directionType={directionType}"),

  ///ProductionManagement / Order
  AssemblyOrderSummaries(HttpMethod.Get, ApiController.AssemblyOrders,
      "Summaries/?factoryId={factoryId}&planDate1={planDate1}&planDate2={planDate2}&status={status}"),
  AssemblyOrderGetList(HttpMethod.Get, ApiController.AssemblyOrders,
      "?factoryId={factoryId}&planDate1={planDate1}&planDate2={planDate2}&status={status}&beginTime={beginTime}&endTime={endTime}"),
  CuttingOrderSummaries(HttpMethod.Get, ApiController.CuttingOrders,
      "Summaries/?factoryId={factoryId}&planDate1={planDate1}&planDate2={planDate2}&status={status}"),
  CuttingOrderGetList(HttpMethod.Get, ApiController.CuttingOrders,
      "?factoryId={factoryId}&planDate1={planDate1}&planDate2={planDate2}&status={status}&beginTime={beginTime}&endTime={endTime}"),
  HandworkOrderSummaries(HttpMethod.Get, ApiController.HandworkOrders,
      "Summaries/?factoryId={factoryId}&planDate1={planDate1}&planDate2={planDate2}&status={status}"),
  HandworkOrderGetList(HttpMethod.Get, ApiController.HandworkOrders,
      "?factoryId={factoryId}&planDate1={planDate1}&planDate2={planDate2}&status={status}&beginTime={beginTime}&endTime={endTime}"),
  InspectionOrderSummaries(HttpMethod.Get, ApiController.InspectionOrders,
      "Summaries/?factoryId={factoryId}&planDate1={planDate1}&planDate2={planDate2}&status={status}"),
  InspectionOrderGetList(HttpMethod.Get, ApiController.InspectionOrders,
      "?factoryId={factoryId}&planDate1={planDate1}&planDate2={planDate2}&status={status}&beginTime={beginTime}&endTime={endTime}"),
  MoldingOrderSummaries(HttpMethod.Get, ApiController.MoldingOrders,
      "Summaries/?factoryId={factoryId}&planDate1={planDate1}&planDate2={planDate2}&status={status}"),
  MoldingOrderGetList(HttpMethod.Get, ApiController.MoldingOrders,
      "?factoryId={factoryId}&planDate1={planDate1}&planDate2={planDate2}&status={status}&beginTime={beginTime}&endTime={endTime}"),
  PaintingOrderSummaries(HttpMethod.Get, ApiController.PaintingOrders,
      "Summaries/?factoryId={factoryId}&planDate1={planDate1}&planDate2={planDate2}&status={status}"),
  PaintingOrderGetList(HttpMethod.Get, ApiController.PaintingOrders,
      "?factoryId={factoryId}&planDate1={planDate1}&planDate2={planDate2}&status={status}&beginTime={beginTime}&endTime={endTime}"),
  PressOrderSummaries(HttpMethod.Get, ApiController.PressOrders,
      "Summaries/?factoryId={factoryId}&planDate1={planDate1}&planDate2={planDate2}&status={status}"),
  PressOrderGetList(HttpMethod.Get, ApiController.PressOrders,
      "?factoryId={factoryId}&planDate1={planDate1}&planDate2={planDate2}&status={status}&beginTime={beginTime}&endTime={endTime}"),

  ///ProductionManagement / Performance
  AssemblyPerformanceTodayMachineOrderSituation(
      HttpMethod.Get, ApiController.AssemblyPerformances, "Today/MachineOrders"),
  AssemblyPerformanceTodayOrderSituation(HttpMethod.Get, ApiController.AssemblyPerformances, "Today/Orders/All"),
  CuttingPerformanceTodayMachineOrderSituation(HttpMethod.Get, ApiController.CuttingPerformance, "Today/MachineOrders"),
  CuttingPerformanceTodayOrderSituation(HttpMethod.Get, ApiController.CuttingPerformance, "Today/Orders/All"),
  HandworkPerformanceTodayMachineOrderSituation(
      HttpMethod.Get, ApiController.HandworkPerformances, "Today/MachineOrders"),
  HandworkPerformanceTodayOrderSituation(HttpMethod.Get, ApiController.HandworkPerformances, "Today/Orders/All"),
  InspectionPerformanceTodayMachineOrderSituation(
      HttpMethod.Get, ApiController.InspectionPerformance, "Today/MachineOrders"),
  InspectionPerformanceTodayOrderSituation(HttpMethod.Get, ApiController.InspectionPerformance, "Today/Orders/All"),
  MoldingPerformanceTodayMachineOrderSituation(
      HttpMethod.Get, ApiController.MoldingPerformances, "Today/MachineOrders"),
  MoldingPerformanceTodayOrderSituation(HttpMethod.Get, ApiController.MoldingPerformances, "Today/Orders/All"),
  PaintingPerformanceTodayMachineOrderSituation(
      HttpMethod.Get, ApiController.PaintingPerformances, "Today/MachineOrders"),
  PaintingPerformanceTodayOrderSituation(HttpMethod.Get, ApiController.PaintingPerformances, "Today/Orders/All"),
  PressPerformanceTodayMachineOrderSituation(HttpMethod.Get, ApiController.PressPerformances, "Today/MachineOrders"),
  PressPerformanceTodayOrderSituation(HttpMethod.Get, ApiController.PressPerformances, "Today/Orders/All"),
  ProductionPerformanceSummariesAnalysis(HttpMethod.Get, ApiController.ProductionPerformances,
      "Summaries/Analysis/?factoryId={factoryId}&lineId={lineId}&processType={processType}&workDate1={workDate1}&workDate2={workDate2}"),

  ///ProductionManagement / Record
  DefectRecordsGetAnalysis(HttpMethod.Get, ApiController.DefectRecords,
      "Analysis/?factoryId={factoryId}&lineId={lineId}&processType={processType}&occuredDate1={occuredDate1}&occuredDate2={occuredDate2}"),
  DefectRecordsGetByOrdersMobile(HttpMethod.Get, ApiController.DefectRecords, "Orders/Mobile"),
  DowntimeRecordsGetAnalysis(HttpMethod.Get, ApiController.DowntimeRecords,
      "Analysis/?factoryId={factoryId}&lineId={lineId}&processType={processType}&occuredDate1={occuredDate1}&occuredDate2={occuredDate2}"),
  DowntimeRecordsGetByOrdersMobile(HttpMethod.Get, ApiController.DowntimeRecords, "Orders/Mobile"),

  ///PurchaseManagement / Order
  PurchaseOrderSummariesToAnalysis(HttpMethod.Get, ApiController.StandardPurchaseOrder,
      "Summaries/Analysis/?factoryId={factoryId}&categoryId={categoryId}&sellerId={sellerId}&itemId={itemId}&orderDate1={orderDate1}&orderDate2={orderDate2}"),
  PurchaseReceiptSummaries(HttpMethod.Get, ApiController.StandardPurchaseReceipts,
      "Summaries/?factoryId={factoryId}&categoryId={categoryId}&itemId={itemId}&receiptDate1={receiptDate1}&receiptDate2={receiptDate2}&putAwayCompleted={putAwayCompleted}"),
  PurchaseReceiptSummariesToAnalysis(HttpMethod.Get, ApiController.StandardPurchaseReceipts,
      "Summaries/Analysis/?factoryId={factoryId}&categoryId={categoryId}&sellerId={sellerId}&itemId={itemId}&receiptDate1={receiptDate1}&receiptDate2={receiptDate2}"),
  PurchaseReceiptSummariesToInspect(HttpMethod.Get, ApiController.StandardPurchaseReceipts,
      "Summaries/Inspect/?factoryId={factoryId}&categoryId={categoryId}&receiptDate1={receiptDate1}&receiptDate2={receiptDate2}"),
  PurchaseReceiptSummariesToMaterial(HttpMethod.Get, ApiController.StandardPurchaseReceipts,
      "Summaries/Analysis/Yield/Materials"),

  ///QualityManagement / Inspection
  InspectionWorkSummaries(HttpMethod.Get, ApiController.InspectionWorks,
      "Summaries/?factoryId={factoryId}&superCategory={superCategory}&inspectionType={inspectionType}&inspectionDate1={inspectionDate1}&inspectionDate2={inspectionDate2}"),
  InspectionWorkHeaders(HttpMethod.Get, ApiController.InspectionWorks,
      "Headers/?factoryId={factoryId}&superCategory={superCategory}&inspectionType={inspectionType}&inspectionDate1={inspectionDate1}&inspectionDate2={inspectionDate2}"),

  ///SalesManagement
  SalesOrderSummary(HttpMethod.Get, ApiController.SalesOrder,
      "Summaries/?factoryId={factoryId}&categoryId={categoryId}&orderDate1={orderDate1}&orderDate2={orderDate2}"),
  SalesOrderGetOrderSummariesToAnalysis(HttpMethod.Get, ApiController.SalesOrder,
      "Summaries/Analysis/?factoryId={factoryId}&categoryId={categoryId}&buyerId={buyerId}&itemId={itemId}&orderDate1={orderDate1}&orderDate2={orderDate2}"),
  SalesIssueGetSummariesToAnalysis(HttpMethod.Get, ApiController.StandardGoodsIssue,
      "Summaries/Analysis/?factoryId={factoryId}&categoryId={categoryId}&buyerId={buyerId}&itemId={itemId}&issueDate1={issueDate1}&issueDate2={issueDate2}"),

  ///SystemManagement
  SystemGetProcessTypeOptions(HttpMethod.Get, ApiController.System, "ProcessTypeOptions"),

  /// Base
  Authenticate(HttpMethod.Post, ApiController.Customers, "Authenticate"),
  Login(HttpMethod.Post, ApiController.Login, ""),
  EmployeeGetList(HttpMethod.Get, ApiController.Employee, "?factoryId={factoryId}"),
  EmployeeGetByeLoginId(HttpMethod.Get, ApiController.Employee, "LoginId/{loginId}"),
  CallCodeGetList(HttpMethod.Get, ApiController.CallCode, "?lineId={lineId}"),

  ///Call Response
  CallResponseAdd(HttpMethod.Post, ApiController.CallResponse, ""),
  CallResponseDelete(HttpMethod.Delete, ApiController.CallResponse, "{id}"),
  CallResponseGet(HttpMethod.Get, ApiController.CallResponse, "{id}"),
  CallResponseUpdate(HttpMethod.Put, ApiController.CallResponse, "{id}"),
  CallResponseUpdateRecord(HttpMethod.Put, ApiController.CallResponse, "Record{id}"),
  CallResponseGetList(
      HttpMethod.Get, ApiController.CallResponse, "?lineId={lineId}&callDate1={callDate1}&callDate2={callDate2}"),
  CallResponseNotResponded(HttpMethod.Get, ApiController.CallResponse,
      "NotResponded/?lineId={lineId}&callDate1={callDate1}&callDate2={callDate2}"),

  ///Error
  ErrorAlertAdd(
    HttpMethod.Post,
    ApiController.Error,
    "",
  ),
  ErrorAlertGetList(
    HttpMethod.Get,
    ApiController.Error,
    "?date1={date1}&date2={date2}&lineNumber={lineNumber}&handled={handled}",
  ),
  ErrorAlertCurrentGetList(
    HttpMethod.Get,
    ApiController.Error,
    "Current",
  ),
  ResponseCodeGetList(HttpMethod.Get, ApiController.ResponseCode, "?lineId={lineId}"),
  FactoryGet(HttpMethod.Get, ApiController.Factory, "{id}"),
  FactoryGetList(HttpMethod.Get, ApiController.Factory, ""),
  FactoryGetListAuth(HttpMethod.Get, ApiController.Factory, ""),
  LinesGet(HttpMethod.Get, ApiController.Lines, "{id}"),
  LinesGetList(HttpMethod.Get, ApiController.Lines, "?factoryId={factoryId}"),
  MachinesGetList(HttpMethod.Get, ApiController.Machines, "?factoryId={factoryId}&processType={processType}"),
  ;

  const Api(
    this._httpMethod,
    this._apiController,
    this._parameter,
  );

  final HttpMethod _httpMethod;
  final ApiController _apiController;
  final String _parameter;

  getHttpMethod() => _httpMethod;

  getApiController() => _apiController;

  getParameter() => _parameter;
}
