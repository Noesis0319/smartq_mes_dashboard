// class IntroAuthRequestManager extends AuthenticationRequest {
//
//   Future<void> tryAutoLogin({required BuildContext context}) async {
//     bool isCompanyAutoAuth = await shared.getCompanyAutoAuth() ?? false;
//     String? brn = await shared.getBrn();
//
//     if(!context.mounted) throw Exception(SystemMessage.notMountedContext);
//
//     if (brn != null && isCompanyAutoAuth) {
//       tryCompanyAutoAuth(brn: brn, context: context);
//     } else {
//       Menu.authCompany.pushReplacementNamed(context: context);
//     }
//   }
//
//   Future<void> tryCompanyAutoAuth({
//     required String brn,
//     required BuildContext context,
//   }) async {
//     createCompanyToken(
//         brn: brn,
//         context: context,
//         responseCallback: (response) async {
//           if (response.statusCode == ok) {
//             String? loginId = await shared.getLoginId();
//             String? password = await shared.getPassword();
//
//             if(!context.mounted) throw Exception(SystemMessage.notMountedContext);
//
//             if (loginId == null || password == null) {
//               Menu.authCompany.pushReplacementNamed(context: context);
//             } else {
//               createEmployeeToken(
//                   loginId: loginId,
//                   password: password,
//                   context: context,
//                   employeeAuthType: EmployeeAuthType.admin,
//                   responseCallback: (response) {
//                     getCompanyPermission(
//                         brn: brn,
//                         context: context,
//                         responseCallback: (response) {
//                           if (response.statusCode == ok) {
//                             shared.setCompanyAutoAuth(allowAutoLogin: true);
//                             ///업체권한 처리
//                             tryEmployeeAutoAuth(brn: brn, loginId: loginId, password: password, context: context);
//                           } else {
//                             Menu.authCompany.pushReplacementNamed(context: context);
//                           }
//                         });
//                   });
//             }
//           }
//         });
//   }
//
//   Future<void> tryEmployeeAutoAuth(
//       {required String brn, required String loginId, required String password, required BuildContext context}) async {
//     bool isEmployeeAutoAuth = await shared.getEmployeeAutoAuth() ?? false;
//     if(!context.mounted) throw Exception(SystemMessage.notMountedContext);
//     if (isEmployeeAutoAuth) {
//       createEmployeeToken(
//           loginId: loginId,
//           password: password,
//           context: context,
//           employeeAuthType: EmployeeAuthType.manager,
//           responseCallback: (adminToken) => getByLoginId(
//               loginId: loginId,
//               responseCallback: (employeeDto) {
//                 shared.setLoginData(brn: brn, loginId: loginId, password: password);
//                 Menu.standardDashboard.pushReplacementNamed(context: context);
//               },
//               context: context));
//     } else {
//       Menu.authEmployee.pushReplacementNamed(context: context);
//     }
//   }
// }
