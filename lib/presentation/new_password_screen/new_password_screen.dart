import 'controller/new_password_controller.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/core/utils/validation_functions.dart';
import 'package:amit_s_application2/widgets/custom_elevated_button.dart';
import 'package:amit_s_application2/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class NewPasswordScreen extends GetWidget<NewPasswordController> {
  NewPasswordScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: SizedBox(
                width: double.maxFinite,
                child: Column(
                  children: [
                    _buildNewPasswordSection(),
                    SizedBox(height: 8.v),
                    Text(
                      "msg_setup_new_password".tr,
                      style: theme.textTheme.titleLarge,
                    ),
                    SizedBox(height: 7.v),
                    Container(
                      width: 282.h,
                      margin: EdgeInsets.only(
                        left: 47.h,
                        right: 45.h,
                      ),
                      child: Text(
                        "msg_please_setup_a".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.bodyLargeBlack9000219.copyWith(
                          height: 1.42,
                        ),
                      ),
                    ),
                    SizedBox(height: 24.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.h),
                      child: CustomTextFormField(
                        controller: controller.newpasswordController,
                        hintText: "lbl_new_password".tr,
                        hintStyle: CustomTextStyles.titleMediumGray30001,
                        textInputType: TextInputType.visiblePassword,
                        validator: (value) {
                          if (value == null ||
                              (!isValidPassword(value, isRequired: true))) {
                            return "err_msg_please_enter_valid_password".tr;
                          }
                          return null;
                        },
                        obscureText: true,
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 30.h,
                          vertical: 15.v,
                        ),
                        borderDecoration: TextFormFieldStyleHelper.fillGrayTL9,
                        fillColor: appTheme.gray5001,
                      ),
                    ),
                    SizedBox(height: 10.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.h),
                      child: CustomTextFormField(
                        controller: controller.passwordController,
                        hintText: "lbl_repeat_password".tr,
                        hintStyle: CustomTextStyles.titleMediumGray30001,
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.visiblePassword,
                        validator: (value) {
                          if (value == null ||
                              (!isValidPassword(value, isRequired: true))) {
                            return "err_msg_please_enter_valid_password".tr;
                          }
                          return null;
                        },
                        obscureText: true,
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 30.h,
                          vertical: 15.v,
                        ),
                        borderDecoration: TextFormFieldStyleHelper.fillGray1,
                        fillColor: appTheme.gray5001,
                      ),
                    ),
                    Spacer(),
                    CustomElevatedButton(
                      height: 61.v,
                      text: "lbl_save".tr,
                      margin: EdgeInsets.symmetric(horizontal: 20.h),
                      buttonStyle: CustomButtonStyles.fillPrimary,
                      buttonTextStyle:
                          CustomTextStyles.titleLargeNunitoSansGray10001,
                    ),
                    SizedBox(height: 26.v),
                    Opacity(
                      opacity: 0.9,
                      child: Text(
                        "lbl_cancel".tr,
                        style: CustomTextStyles.bodyMediumGray90001Light,
                      ),
                    ),
                    SizedBox(height: 69.v),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNewPasswordSection() {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        width: 354.h,
        margin: EdgeInsets.only(left: 20.h),
        padding: EdgeInsets.symmetric(
          horizontal: 114.h,
          vertical: 7.v,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              ImageConstant.imgGroup26,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 97.v),
            Container(
              height: 105.adaptSize,
              width: 105.adaptSize,
              padding: EdgeInsets.all(7.h),
              decoration: AppDecoration.outlineBlack90002.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder52,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgImage,
                height: 91.adaptSize,
                width: 91.adaptSize,
                alignment: Alignment.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
