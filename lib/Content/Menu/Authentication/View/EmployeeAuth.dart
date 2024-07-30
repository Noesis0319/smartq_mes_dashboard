part of 'Authentication.dart';

extension EmployeeAuth on Authentication {
  _employeeAuth() {
    return Column(
      children: [
        Custom.dropDown.hasTitleFactory(
            resourceType: ResourceType.FactoryName,
            value: context.watch<AuthenticationProvider>().customerFactory,
            initValue: context.watch<AuthenticationProvider>().customerFactory,
            focusNode: factoryNameFocusNode,
            filled: !factoryNameHasFocus,
            onSelected: (value) {
              context.read<AuthenticationProvider>().setCustomerFactory(factoryDto: value);
            },
            items: context.watch<AuthenticationProvider>().customerFactoryList),
        SizedBox(height: EdgeDimen.BetweenWidgetVertical.getSize()),
        Custom.textField.hasTitle(
          resourceType: ResourceType.LoginId,
          controller: employeeLoginIdController!,
          focusNode: employeeLoginFocusNode,
          fillColor: !employeeLoginHasFocus ? ColorConstants.Filled.color : ColorConstants.Surface.color,
        ),
        SizedBox(height: EdgeDimen.BetweenWidgetVertical.getSize()),
        Custom.textField.hasTitleSecret(
          resourceType: ResourceType.Password,
          controller: employeePasswordController!,
          focusNode: employeePasswordFocusNode,
          fillColor: !employeePasswordHasFocus ? ColorConstants.Filled.color : ColorConstants.Surface.color,
        ),
        SizedBox(height: EdgeDimen.BetweenWidgetVertical.getSize()),
        Custom.checkBox.hasText(
          value: context.watch<AuthenticationProvider>().shouldSaveId ?? false,
          onChange: (value) => onChangeSaveId(value: value),
          text: ResourceType.SaveId.getText(),
        ),
        SizedBox(height: EdgeDimen.AuthenticationBottom.getSize()),
        SizedBox(
          child: Custom.button.basic(
            elevation: ElevationDimen.SubmitButton.dimen,
            borderRadius: RadiusDimen.LittleRounded,
            onPressed: () => onPressEmployeeAuth(context: context),
            resourceType: ResourceType.Login,
          ),
          width: double.infinity,
          height: WidgetDimen.AuthenticationShadowBox.getSize(),
        ),
      ],
    );
  }
}
