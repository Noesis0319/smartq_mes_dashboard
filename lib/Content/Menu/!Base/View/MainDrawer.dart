//
// class MainDrawer extends BaseState<MainDrawerCreator> with MainDrawerViewManager, StyleMixin {
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Drawer(
//         shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
//         backgroundColor: CustomColor.drawerBackGround.getColor(),
//         child: ListView(
//           children: [
//             LoginInfo(
//               name: name,
//               factoryName: factoryName,
//               employeeName: employeeName,
//               employeeCode: employeeCode,
//             ),
//             MenuItemButton(
//               style: customButtonStyle.basic(backGroundColor: CustomColor.primary.getColor(), borderRadius: 0),
//               leadingIcon: ResourceType.productionCall.getIcon(color: CustomColor.surface.getColor()),
//               onPressed: onPressProductionCallMenu,
//               child: Text(
//                 Menu.productionCall.menuName,
//                 style: customTextStyle.basic(
//                     textColor: CustomColor.whiteText.getColor(), fontSize: TextDimen.small.getSize()),
//               ),
//             ),
//             MenuItemButton(
//               style: customButtonStyle.basic(backGroundColor: CustomColor.surface.getColor(), borderRadius: 0),
//               leadingIcon: ResourceType.error.getIcon(),
//               onPressed: onPressErrorMenu,
//               child: Text(
//                 ResourceType.error.getText(),
//                 style:
//                     customTextStyle.basic(textColor: CustomColor.text.getColor(), fontSize: TextDimen.small.getSize()),
//               ),
//             ),
//             Custom.divider.basic(padding: PaddingDimen.verySmall.getSize()),
//
//             MenuItemButton(
//               leadingIcon: ResourceType.setting.getIcon(),
//               onPressed: onPressSettingMenu,
//               child: Text(
//                 ResourceType.setting.getText(),
//                 style:
//                     customTextStyle.basic(textColor: CustomColor.text.getColor(), fontSize: TextDimen.small.getSize()),
//               ),
//             ),
//             MenuItemButton(
//               leadingIcon: ResourceType.update.getIcon(),
//               onPressed: onPressUpdateMenu,
//               child: Text(ResourceType.update.getText(),
//                   style: customTextStyle.basic(
//                       textColor: CustomColor.text.getColor(), fontSize: TextDimen.small.getSize())),
//             ),
//             MenuItemButton(
//               leadingIcon: ResourceType.remoteSupport.getIcon(),
//               onPressed: onPressRemoteSupportMenu,
//               child: Text(ResourceType.remoteSupport.getText(),
//                   style: customTextStyle.basic(
//                       textColor: CustomColor.text.getColor(), fontSize: TextDimen.small.getSize())),
//             ),
//             MenuItemButton(
//               leadingIcon: ResourceType.logout.getIcon(),
//               onPressed: onPressLogoutMenu,
//               child: Text(ResourceType.logout.getText(),
//                   style: customTextStyle.basic(
//                       textColor: CustomColor.text.getColor(), fontSize: TextDimen.small.getSize())),
//             ),
//             Custom.divider.basic(padding: PaddingDimen.verySmall.getSize()),
//
//             ///테스트용
//             MenuItemButton(
//               leadingIcon: ResourceType.call.getIcon(),
//               onPressed: onPressCallMenu,
//               child: Text(ResourceType.call.getText(),
//                   style: customTextStyle.basic(
//                       textColor: CustomColor.text.getColor(), fontSize: TextDimen.small.getSize())),
//             ),
//             MenuItemButton(
//               leadingIcon: const Icon(Icons.error),
//               onPressed: onPressAddErrorMenu,
//               child: Text("에러추가",
//                   style: customTextStyle.basic(
//                       textColor: CustomColor.text.getColor(), fontSize: TextDimen.small.getSize())),
//             ),
//
//             MenuItemButton(
//               leadingIcon: const Icon(Icons.error),
//               onPressed: () {
//                 throw Exception("Message!!!");
//               },
//               child: Text("Exception",
//                   style: customTextStyle.basic(
//                       textColor: CustomColor.text.getColor(), fontSize: TextDimen.small.getSize())),
//             ),
//           ],
//         ));
//   }
// }
