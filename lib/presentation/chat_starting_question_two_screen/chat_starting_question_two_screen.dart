import 'controller/chat_starting_question_two_controller.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/widgets/app_bar/appbar_iconbutton.dart';
import 'package:amit_s_application2/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:amit_s_application2/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:amit_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:amit_s_application2/widgets/custom_elevated_button.dart';
import 'package:amit_s_application2/widgets/custom_icon_button.dart';
import 'package:amit_s_application2/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ChatStartingQuestionTwoScreen
    extends GetWidget<ChatStartingQuestionTwoController> {
  const ChatStartingQuestionTwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray5001,
        appBar: _buildAppBar(),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 14.v),
              Container(
                width: 221.h,
                margin: EdgeInsets.only(
                  left: 20.h,
                  right: 134.h,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 14.h,
                  vertical: 4.v,
                ),
                decoration: AppDecoration.fillIndigo.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder11,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 6.v),
                    Container(
                      width: 185.h,
                      margin: EdgeInsets.only(right: 7.h),
                      child: Text(
                        "msg_hello_amanda_welcome".tr,
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.bodySmall!.copyWith(
                          height: 1.58,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              _buildIDidntRecieveMyParcel1(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 81.v,
      leadingWidth: 60.h,
      leading: Container(
        margin: EdgeInsets.only(
          left: 20.h,
          top: 26.v,
          bottom: 15.v,
        ),
        decoration: AppDecoration.outlineOnErrorContainer1.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder18,
        ),
        child: AppbarIconbutton(
          imagePath: ImageConstant.imgBagPrimary,
        ),
      ),
      title: Padding(
        padding: EdgeInsets.only(left: 10.h),
        child: Column(
          children: [
            AppbarSubtitleOne(
              text: "lbl_chat_bot".tr,
              margin: EdgeInsets.only(right: 66.h),
            ),
            AppbarSubtitleFour(
              text: "msg_customer_care_service".tr,
            ),
          ],
        ),
      ),
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildIDidntRecieveMyParcel() {
    return CustomElevatedButton(
      width: 217.h,
      text: "msg_i_didn_t_recieve".tr,
      margin: EdgeInsets.only(left: 20.h),
      buttonTextStyle: CustomTextStyles.titleSmallOnErrorContainerMedium_1,
    );
  }

  /// Section Widget
  Widget _buildIWantToCancelMyOrder() {
    return CustomOutlinedButton(
      height: 40.v,
      width: 185.h,
      text: "msg_i_want_to_cancel".tr,
      margin: EdgeInsets.only(left: 20.h),
      buttonStyle: CustomButtonStyles.outlinePrimaryTL91,
      buttonTextStyle: CustomTextStyles.titleSmallPrimaryMedium_1,
    );
  }

  /// Section Widget
  Widget _buildIWantToReturnMyOrder() {
    return CustomOutlinedButton(
      height: 40.v,
      width: 181.h,
      text: "msg_i_want_to_return".tr,
      margin: EdgeInsets.only(left: 20.h),
      buttonStyle: CustomButtonStyles.outlinePrimaryTL91,
      buttonTextStyle: CustomTextStyles.titleSmallPrimaryMedium_1,
    );
  }

  /// Section Widget
  Widget _buildPackageWasDamaged() {
    return CustomOutlinedButton(
      height: 40.v,
      width: 177.h,
      text: "msg_package_was_damaged".tr,
      margin: EdgeInsets.only(left: 20.h),
      buttonStyle: CustomButtonStyles.outlinePrimaryTL91,
      buttonTextStyle: CustomTextStyles.titleSmallPrimaryMedium_1,
    );
  }

  /// Section Widget
  Widget _buildOther() {
    return CustomOutlinedButton(
      height: 40.v,
      width: 73.h,
      text: "lbl_other".tr,
      margin: EdgeInsets.only(left: 20.h),
      buttonStyle: CustomButtonStyles.outlinePrimaryTL91,
      buttonTextStyle: CustomTextStyles.titleSmallPrimaryMedium_1,
    );
  }

  /// Section Widget
  Widget _buildNext() {
    return Expanded(
      child: CustomElevatedButton(
        text: "lbl_next".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildIDidntRecieveMyParcel1() {
    return SizedBox(
      height: 393.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(top: 313.v),
              padding: EdgeInsets.symmetric(
                horizontal: 20.h,
                vertical: 12.v,
              ),
              decoration: AppDecoration.fillIndigo,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 7.v,
                      bottom: 29.v,
                    ),
                    child: Text(
                      "lbl_message".tr,
                      style: CustomTextStyles.titleMediumBlueA700,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgImageBlueA700,
                    height: 26.adaptSize,
                    width: 26.adaptSize,
                    margin: EdgeInsets.only(
                      right: 44.h,
                      bottom: 29.v,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 9.h),
              decoration: AppDecoration.outlineBlack900026.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder11,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 356.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.h,
                      vertical: 13.v,
                    ),
                    decoration: AppDecoration.fillGray5003.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderTL9,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 5.v),
                        Text(
                          "lbl_order_issues".tr,
                          style: theme.textTheme.titleLarge,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.v),
                  _buildIDidntRecieveMyParcel(),
                  SizedBox(height: 6.v),
                  _buildIWantToCancelMyOrder(),
                  SizedBox(height: 6.v),
                  _buildIWantToReturnMyOrder(),
                  SizedBox(height: 6.v),
                  _buildPackageWasDamaged(),
                  SizedBox(height: 6.v),
                  _buildOther(),
                  SizedBox(height: 12.v),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 20.h,
                        right: 14.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _buildNext(),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 15.h,
                              top: 7.v,
                              bottom: 7.v,
                            ),
                            child: CustomIconButton(
                              height: 26.adaptSize,
                              width: 26.adaptSize,
                              padding: EdgeInsets.all(7.h),
                              child: CustomImageView(
                                imagePath:
                                    ImageConstant.imgCloseOnerrorcontainer26x26,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 9.v),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
