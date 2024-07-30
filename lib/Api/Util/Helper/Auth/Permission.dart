
import '../../../Mes/MasterData/Model/Dto/EmployeePermission.dart';

class PermissionHelper {
  static List<EmployeePermissionDto> employeePermissionList = [];

  static setEmployeePermissionList(List<EmployeePermissionDto> permissionList) {
    employeePermissionList = permissionList;
  }

  ///현재 권한 필요여부를 알지 못해 사용하지 않음
  static bool isEmployeeMenuGranted({required MesServerMenus businessMenus, required PermissionType permissionType}) {
    EmployeePermissionDto employeePermissionDto = employeePermissionList.firstWhere(
      (dto) => dto.menu == businessMenus.menuName,
      orElse: () => EmployeePermissionDto(null, null, null, null, null, null),
    );
    switch (permissionType) {
      case PermissionType.NoneType:
        return true;
      case PermissionType.CanCreate:
        return employeePermissionDto.canCreate;
      case PermissionType.CanRead:
        return employeePermissionDto.canRead;
      case PermissionType.CanUpdate:
        return employeePermissionDto.canUpdate;
      case PermissionType.CanDelete:
        return employeePermissionDto.canDelete;
      default:
        return false;
    }
  }
}

enum MesServerMenus {
  ///시스템메뉴 (서버 연동X)
 System(menuName: "시스템"),

  ///기초코드
  Factory(menuName: "공장"),
  Employee(menuName: "사원"),
//  품목,
//  업체,
//  금형,
//  Bom,
//  성형공정기준,
//  프레스공정기준,
//  절삭공정기준,
//  영업출하지시,
//  영업출고,
//  영업출하,
//  영업반입,
//  구매요청,
//  구매입하,
//  구매입고,
//  재고재공,
//  재고이동,
//  재고실사,
//  재고공장이동,
//  재고패킹,
//  성형지시,
//  성형실적,
//  프레스지시,
//  프레스실적,
//  절삭지시,
//  절삭실적,
//  검사지시,
//  검사실적,
//  수작업지시,
//  수작업실적,
//  생산출고,
//  생산투입,
//  생산입고,
//  생산출고투입,
//  생산투입반입,
  ProductionCall(menuName: "생산호출"),
//  수입검사,
//  출장검사,
//  초중종검사,
//  공정순회검사,
//  공정전수선별,
//  출하검사,
//  출하전수선별,
//  검사상세현황,
//  외주요청,
//  외주입하,
//  외주입고,
//  외주출고,
//  외주출하,
//  외주반입,
//  생산조건결과,
//  생산조건조치,
//  생산조건제어,
//  설비보전이력,
//  금형보전이력,
//  공구부품요청,
//  공구부품소모,
//  라벨재고,
//  자동재고,
//  설비보전의뢰,
//  금형보전의뢰,
//  영업관리,
//  구매관리,
//  재고관리,
//  생산관리,
//  검사관리,
//  보전관리,
//  성형관리,
//  프레스관리,
//  절삭관리
  ;

  const MesServerMenus({required this.menuName});

  final String menuName;
}

enum PermissionType { NoneType, All, CanCreate, CanRead, CanUpdate, CanDelete }
