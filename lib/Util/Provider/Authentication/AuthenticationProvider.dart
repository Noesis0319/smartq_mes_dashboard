import '../../../Util/Storage/Base/Controller/Controller.dart';

import '../../../Api/Mes/MasterData/Model/Dto/Employee.dart';
import '../../../Api/Mes/MasterData/Model/Dto/Factory.dart';
import '../../Storage/Type/StorageType.dart';
import '../BaseProvider.dart';

///로그인, 로그인 정보 관련
///대부분 작업이 로그인 전제로 처리되기 때문에
///해당 작업(로그인, 로그인 정보)과 연관있는 Provider 는 이 클래스를 상속
class AuthenticationProvider extends BaseProvider {
  EmployeeDto? loggedInEmployee;
  List<FactoryDto> customerFactoryList = [];
  FactoryDto? customerFactory;

  bool? shouldAutoAuth;
  bool? shouldSaveId;

  String? loginId;

  void setLoginId({required String loginId}){
    this.loginId = loginId;

    notifyListeners();
  }

  void setLoggedInEmployee({required EmployeeDto employeeDto}) {
    loggedInEmployee = employeeDto;

    notifyListeners();
  }

  void setCustomerFactoryList({required factoryList}) {
    customerFactoryList = factoryList;

    // if (customerFactory != null) {
    //   storage.setAuthFactoryData(
    //       factoryId: customerFactory!.id,
    //       factoryCode: customerFactory!.code,
    //       factoryName: customerFactory!.name,
    //       storageType: StorageType.local);
    // }

    notifyListeners();
  }

  void setCustomerFactoryById({required int authFactoryId}) {
    customerFactory = customerFactoryList
        .where(
          (element) => element.id == authFactoryId,
        )
        .first;
    if (customerFactory != null) {
      storage.setAuthFactoryData(
          factoryId: customerFactory!.id,
          factoryCode: customerFactory!.code,
          factoryName: customerFactory!.name,
          storageType: StorageType.Local);
    }

    notifyListeners();
  }

  void setCustomerFactory({required FactoryDto factoryDto}) {
    customerFactory = factoryDto;
  }

  void changeAutoAuth({bool? value}) {
    shouldAutoAuth = value ?? false;
    notifyListeners();
  }

  void setShouldSaveId({bool? value}) {
    shouldSaveId = value ?? false;
    notifyListeners();
  }

// bool isEmployeeAutoAuth = false;

// Future<bool> initLoginSetting() async {
// isEmployeeAutoAuth = await storage.getEmployeeAutoAuth()?? false;
// return isEmployeeAutoAuth;
// }
}
