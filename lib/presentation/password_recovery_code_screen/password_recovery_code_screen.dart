import 'controller/password_recovery_code_controller.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class PasswordRecoveryCodeScreen
    extends GetWidget<PasswordRecoveryCodeController> {
  const PasswordRecoveryCodeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildPasswordRecoveryColumn(),
              SizedBox(height: 8.v),
              Text(
                "msg_password_recovery".tr,
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 7.v),
              Container(
                width: 265.h,
                margin: EdgeInsets.only(
                  left: 55.h,
                  right: 54.h,
                ),
                child: Text(
                  "msg_enter_4_digits_code".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyLargeBlack9000219.copyWith(
                    height: 1.42,
                  ),
                ),
              ),
              SizedBox(height: 15.v),
              Text(
                "lbl_98_00".tr,
                style: CustomTextStyles.titleMediumNunitoSansBlack90002,
              ),
              SizedBox(height: 29.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgEllispse01Indigo50,
                    height: 17.adaptSize,
                    width: 17.adaptSize,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgEllispse01Indigo50,
                    height: 17.adaptSize,
                    width: 17.adaptSize,
                    margin: EdgeInsets.only(left: 12.h),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgEllispse01Indigo50,
                    height: 17.adaptSize,
                    width: 17.adaptSize,
                    margin: EdgeInsets.only(left: 12.h),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgEllispse01Indigo50,
                    height: 17.adaptSize,
                    width: 17.adaptSize,
                    margin: EdgeInsets.only(left: 12.h),
                  ),
                ],
              ),
              Spacer(),
              CustomElevatedButton(
                height: 50.v,
                width: 201.h,
                text: "lbl_send_again".tr,
                buttonStyle: CustomButtonStyles.fillPink,
                buttonTextStyle: CustomTextStyles.titleLargeNunitoSansGray10001,
              ),
              SizedBox(height: 31.v),
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
    );
  }

  /// Section Widget
  Widget _buildPasswordRecoveryColumn() {
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
