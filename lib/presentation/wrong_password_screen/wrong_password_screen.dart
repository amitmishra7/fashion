import 'controller/wrong_password_controller.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class WrongPasswordScreen extends GetWidget<WrongPasswordController> {
  const WrongPasswordScreen({Key? key})
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
              _buildLoginScreen(),
              SizedBox(height: 9.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgEllispse01Red400,
                    height: 17.adaptSize,
                    width: 17.adaptSize,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgEllispse01Red400,
                    height: 17.adaptSize,
                    width: 17.adaptSize,
                    margin: EdgeInsets.only(left: 12.h),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgEllispse01Red400,
                    height: 17.adaptSize,
                    width: 17.adaptSize,
                    margin: EdgeInsets.only(left: 12.h),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgEllispse01Red400,
                    height: 17.adaptSize,
                    width: 17.adaptSize,
                    margin: EdgeInsets.only(left: 12.h),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgEllispse01Red400,
                    height: 17.adaptSize,
                    width: 17.adaptSize,
                    margin: EdgeInsets.only(left: 12.h),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgEllispse01Red400,
                    height: 17.adaptSize,
                    width: 17.adaptSize,
                    margin: EdgeInsets.only(left: 12.h),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgEllispse01Red400,
                    height: 17.adaptSize,
                    width: 17.adaptSize,
                    margin: EdgeInsets.only(left: 12.h),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgEllispse01Red400,
                    height: 17.adaptSize,
                    width: 17.adaptSize,
                    margin: EdgeInsets.only(left: 12.h),
                  ),
                ],
              ),
              SizedBox(height: 41.v),
              Text(
                "msg_forgot_your_password".tr,
                style: CustomTextStyles.bodyMediumGray90001,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLoginScreen() {
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
