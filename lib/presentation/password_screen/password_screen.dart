import 'controller/password_controller.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/widgets/custom_icon_button.dart';
import 'package:amit_s_application2/widgets/custom_pin_code_text_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class PasswordScreen extends GetWidget<PasswordController> {
  const PasswordScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildPasswordScreen(),
              SizedBox(height: 25.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 81.h),
                child: Obx(
                  () => CustomPinCodeTextField(
                    context: Get.context!,
                    controller: controller.otpController.value,
                    onChanged: (value) {},
                  ),
                ),
              ),
              Spacer(),
              SizedBox(height: 69.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Opacity(
                    opacity: 0.9,
                    child: Padding(
                      padding: EdgeInsets.only(top: 9.v),
                      child: Text(
                        "lbl_not_you".tr,
                        style: CustomTextStyles.bodyMediumGray90001Light,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: CustomIconButton(
                      height: 30.adaptSize,
                      width: 30.adaptSize,
                      padding: EdgeInsets.all(7.h),
                      decoration: IconButtonStyleHelper.fillPrimary,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgArrowRight,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordScreen() {
    return SizedBox(
      height: 336.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 86.h,
                vertical: 60.v,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    ImageConstant.imgGroup5,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 44.v),
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
                  SizedBox(height: 30.v),
                  Text(
                    "lbl_hello_romina".tr,
                    style: theme.textTheme.headlineMedium,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              "msg_type_your_password".tr,
              style: CustomTextStyles.bodyLargeBlack9000219,
            ),
          ),
        ],
      ),
    );
  }
}
