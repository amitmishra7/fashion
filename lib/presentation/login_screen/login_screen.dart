import 'controller/login_controller.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/core/utils/validation_functions.dart';
import 'package:amit_s_application2/widgets/custom_elevated_button.dart';
import 'package:amit_s_application2/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends GetWidget<LoginController> {
  LoginScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            color: theme.colorScheme.onErrorContainer.withOpacity(1),
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.img03Login,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: SingleChildScrollView(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: Form(
                key: _formKey,
                child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.h,
                    vertical: 69.v,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Spacer(),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "lbl_login".tr,
                          style: theme.textTheme.displayLarge,
                        ),
                      ),
                      SizedBox(height: 4.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "msg_good_to_see_you".tr,
                              style: CustomTextStyles.bodyLargeGray90001,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgFavoriteBlack90002,
                              height: 15.adaptSize,
                              width: 15.adaptSize,
                              margin: EdgeInsets.only(
                                left: 10.h,
                                top: 3.v,
                                bottom: 7.v,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20.v),
                      CustomTextFormField(
                        controller: controller.emailController,
                        hintText: "lbl_email".tr,
                        hintStyle:
                            CustomTextStyles.titleSmallPoppinsBluegray100,
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value == null ||
                              (!isValidEmail(value, isRequired: true))) {
                            return "err_msg_please_enter_valid_email".tr;
                          }
                          return null;
                        },
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 19.h,
                          vertical: 15.v,
                        ),
                        borderDecoration: TextFormFieldStyleHelper.fillGray,
                        fillColor: appTheme.gray5001,
                      ),
                      SizedBox(height: 36.v),
                      CustomElevatedButton(
                        height: 61.v,
                        text: "lbl_next".tr,
                        buttonStyle: CustomButtonStyles.fillPrimary,
                        buttonTextStyle:
                            CustomTextStyles.titleLargeNunitoSansGray10001,
                      ),
                      SizedBox(height: 16.v),
                      Opacity(
                        opacity: 0.9,
                        child: Text(
                          "lbl_cancel".tr,
                          style: CustomTextStyles.bodyMediumGray90001Light,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
