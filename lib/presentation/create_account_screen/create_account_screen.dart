import 'controller/create_account_controller.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/core/utils/validation_functions.dart';
import 'package:amit_s_application2/widgets/custom_elevated_button.dart';
import 'package:amit_s_application2/widgets/custom_phone_number.dart';
import 'package:amit_s_application2/widgets/custom_text_form_field.dart';
import 'package:country_pickers/country.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class CreateAccountScreen extends GetWidget<CreateAccountController> {
  CreateAccountScreen({Key? key})
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
                    _buildTitleSection(),
                    SizedBox(height: 32.v),
                    _buildEmailSection(),
                    SizedBox(height: 7.v),
                    _buildPasswordSection(),
                    SizedBox(height: 7.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.h),
                      child: _buildPhoneNumber(),
                    ),
                    SizedBox(height: 52.v),
                    _buildDoneButtonSection(),
                    SizedBox(height: 26.v),
                    Opacity(
                      opacity: 0.9,
                      child: Text(
                        "lbl_cancel".tr,
                        style: CustomTextStyles.bodyMediumGray90001Light,
                      ),
                    ),
                    SizedBox(height: 5.v),
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
  Widget _buildTitleSection() {
    return SizedBox(
      height: 330.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 30.h,
                vertical: 74.v,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    ImageConstant.imgGroup130,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: SizedBox(
                width: 197.h,
                child: Text(
                  "lbl_create_account".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.displayMedium!.copyWith(
                    height: 1.08,
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              height: 90.adaptSize,
              width: 90.adaptSize,
              margin: EdgeInsets.only(left: 30.h),
              padding: EdgeInsets.symmetric(
                horizontal: 26.h,
                vertical: 29.v,
              ),
              decoration: AppDecoration.outlinePrimary.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder45,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgCameraIcon,
                height: 27.v,
                width: 34.h,
                alignment: Alignment.center,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailSection() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: CustomTextFormField(
        controller: controller.emailSectionController,
        hintText: "lbl_email".tr,
        hintStyle: CustomTextStyles.titleSmallPoppinsBluegray100,
        textInputType: TextInputType.emailAddress,
        validator: (value) {
          if (value == null || (!isValidEmail(value, isRequired: true))) {
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
    );
  }

  /// Section Widget
  Widget _buildPasswordSection() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Obx(
        () => CustomTextFormField(
          controller: controller.passwordSectionController,
          hintText: "lbl_password".tr,
          hintStyle: CustomTextStyles.titleSmallPoppinsBluegray100,
          textInputType: TextInputType.visiblePassword,
          suffix: InkWell(
            onTap: () {
              controller.isShowPassword.value =
                  !controller.isShowPassword.value;
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(30.h, 18.v, 19.h, 18.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgEye,
                height: 15.adaptSize,
                width: 15.adaptSize,
              ),
            ),
          ),
          suffixConstraints: BoxConstraints(
            maxHeight: 52.v,
          ),
          validator: (value) {
            if (value == null || (!isValidPassword(value, isRequired: true))) {
              return "err_msg_please_enter_valid_password".tr;
            }
            return null;
          },
          obscureText: controller.isShowPassword.value,
          contentPadding: EdgeInsets.only(
            left: 19.h,
            top: 15.v,
            bottom: 15.v,
          ),
          borderDecoration: TextFormFieldStyleHelper.fillGray,
          fillColor: appTheme.gray5001,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPhoneNumber() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Obx(
        () => CustomPhoneNumber(
          country: controller.selectedCountry.value,
          controller: controller.phoneNumberController,
          onTap: (Country value) {
            controller.selectedCountry.value = value;
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildDoneButtonSection() {
    return CustomElevatedButton(
      height: 61.v,
      text: "lbl_done".tr,
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      buttonStyle: CustomButtonStyles.fillPrimary,
      buttonTextStyle: CustomTextStyles.titleLargeNunitoSansGray10001,
    );
  }
}
