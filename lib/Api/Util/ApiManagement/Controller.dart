

import 'AuthType.dart';
import 'RouteContext.dart';

enum ApiController {
  /// Admin
  Customers(ApiRouteContext.Admin, AuthType.NoAuth),
  Companies(ApiRouteContext.Admin, AuthType.NoAuth),
  Login(ApiRouteContext.Mes, AuthType.Company),

  ///Scada
  IMoldData(ApiRouteContext.Scada, AuthType.Employee),
  IMoldDevice(ApiRouteContext.Scada, AuthType.Employee),
  MachineCountData(ApiRouteContext.Scada, AuthType.Employee),
  PasData(ApiRouteContext.Scada, AuthType.Employee),
  PasDataServer(ApiRouteContext.Scada, AuthType.Employee),
  PasDevice(ApiRouteContext.Scada, AuthType.Employee),
  PasInjection(ApiRouteContext.Scada, AuthType.Employee),

  ///MasterData
  Employee(ApiRouteContext.Mes, AuthType.Employee),
  Factory(ApiRouteContext.Mes, AuthType.Employee),
  Item(ApiRouteContext.Mes, AuthType.Employee),
  ItemCategory(ApiRouteContext.Mes, AuthType.Employee),
  Lines(ApiRouteContext.Mes, AuthType.Employee),
  MachineGroups(ApiRouteContext.Mes, AuthType.Employee),
  Machines(ApiRouteContext.Mes, AuthType.Employee),
  PriceRecord(ApiRouteContext.Mes, AuthType.Employee),

  /// EasyFactory
  Data(ApiRouteContext.EasyFactory, AuthType.Employee),
  DataField(ApiRouteContext.EasyFactory, AuthType.Employee),
  DataMachineSetting(ApiRouteContext.EasyFactory, AuthType.Employee),
  Error(ApiRouteContext.EasyFactory, AuthType.Employee),

  ///ClosingManagement
  PurchaseClosings(ApiRouteContext.Mes, AuthType.Employee),
  SalesClosings(ApiRouteContext.Mes, AuthType.Employee),

  ///InventoryManagement
  GoodsPicking(ApiRouteContext.Mes, AuthType.Employee),

  ///LotManagement
  Lot(ApiRouteContext.Mes, AuthType.Employee),

  ///ProductionManagement / Orders
  AssemblyOrders(ApiRouteContext.Mes, AuthType.Employee),
  CuttingOrders(ApiRouteContext.Mes, AuthType.Employee),
  HandworkOrders(ApiRouteContext.Mes, AuthType.Employee),
  InspectionOrders(ApiRouteContext.Mes, AuthType.Employee),
  MoldingOrders(ApiRouteContext.Mes, AuthType.Employee),
  PaintingOrders(ApiRouteContext.Mes, AuthType.Employee),
  PressOrders(ApiRouteContext.Mes, AuthType.Employee),
  ProductionOrders(ApiRouteContext.Mes, AuthType.Employee),

  ///ProductionManagement / Performances
  AssemblyPerformances(ApiRouteContext.Mes, AuthType.Employee),
  CuttingPerformance(ApiRouteContext.Mes, AuthType.Employee),
  HandworkPerformances(ApiRouteContext.Mes, AuthType.Employee),
  InspectionPerformance(ApiRouteContext.Mes, AuthType.Employee),
  MoldingPerformances(ApiRouteContext.Mes, AuthType.Employee),
  PaintingPerformances(ApiRouteContext.Mes, AuthType.Employee),
  PressPerformances(ApiRouteContext.Mes, AuthType.Employee),
  ProductionPerformances(ApiRouteContext.Mes, AuthType.Employee),

  ///ProductionManagement / Records
  DefectRecords(ApiRouteContext.Mes, AuthType.Employee),
  DowntimeRecords(ApiRouteContext.Mes, AuthType.Employee),
  LossRecords(ApiRouteContext.Mes, AuthType.Employee),
  OffDutyRecords(ApiRouteContext.Mes, AuthType.Employee),
  ReworkRecords(ApiRouteContext.Mes, AuthType.Employee),

  ///ProductionManagement / CallResponse
  CallResponse(ApiRouteContext.Mes, AuthType.Employee),
  CallCode(ApiRouteContext.Mes, AuthType.Employee),
  ResponseCode(ApiRouteContext.Mes, AuthType.Employee),

  ///PurchaseManagement
  StandardPurchaseOrder(ApiRouteContext.Mes, AuthType.Employee),
  StandardPurchaseReceipts(ApiRouteContext.Mes, AuthType.Employee),

  ///QualityManagement
  InspectionWorks(ApiRouteContext.Mes, AuthType.Employee),

  ///SalesManagement
  SalesOrder(ApiRouteContext.Mes, AuthType.Employee),
  StandardGoodsIssue(ApiRouteContext.Mes, AuthType.Employee),
  SubcontractGoodsIssue(ApiRouteContext.Mes, AuthType.Employee),
  StandardIssueRequisition(ApiRouteContext.Mes, AuthType.Employee),
  SubcontractIssueRequisition(ApiRouteContext.Mes, AuthType.Employee),
  SalesPlans(ApiRouteContext.Mes, AuthType.Employee),
  SalesReturn(ApiRouteContext.Mes, AuthType.Employee),

  ///SystemManagement
  System(ApiRouteContext.Mes, AuthType.Master),
  
;
  const ApiController(this._apiRouteContext, this._authType);
  final ApiRouteContext _apiRouteContext;
  final AuthType _authType;
  getApiRouteContext() => _apiRouteContext;

  getAuthType() => _authType;
}
