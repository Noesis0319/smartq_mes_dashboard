part of 'Authentication.dart';

extension CompanyAuth on Authentication {
  _companyAuth() {
    return Column(
      children: [
        Custom.textField.hasTitle(
          resourceType: ResourceType.Brn,
          controller: brnController!,
          focusNode: brnFocusNode,
          fillColor: !brnHasFocus ? ColorConstants.Filled.color : ColorConstants.Surface.color,
        ),
        SizedBox(height: EdgeDimen.BetweenWidgetVertical.getSize()),
        Custom.textField.hasTitle(
          resourceType: ResourceType.LoginId,
          controller: companyLoginIdController!,
          focusNode: companyLoginFocusNode,
          fillColor: !companyLoginHasFocus ? ColorConstants.Filled.color : ColorConstants.Surface.color,
        ),
        SizedBox(height: EdgeDimen.BetweenWidgetVertical.getSize()),
        Custom.textField.hasTitleSecret(
          resourceType: ResourceType.Password,
          controller: companyPasswordController!,
          focusNode: companyPasswordFocusNode,
          fillColor: !companyPasswordHasFocus ? ColorConstants.Filled.color : ColorConstants.Surface.color,
        ),
        SizedBox(height: EdgeDimen.BetweenWidgetVertical.getSize()),
        Custom.checkBox.hasText(
          value: context.watch<AuthenticationProvider>().shouldAutoAuth ?? false,
          onChange: (value) => onChangeAutoAuth(value: value),
          text: ResourceType.AutoAuth.getText(),
        ),
        SizedBox(height: EdgeDimen.AuthenticationBottom.getSize()),
        SizedBox(
          child: Custom.button.basic(
            elevation: ElevationDimen.SubmitButton.dimen,
            borderRadius: RadiusDimen.LittleRounded,
            onPressed: () => onPressCompanyAuth(context: context),
            resourceType: ResourceType.Authentication,
          ),
          width: double.infinity,
          height: WidgetDimen.AuthenticationShadowBox.getSize(),
        ),
      ],
    );
  }
}
