import 'controller/chat_hello_controller.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:amit_s_application2/widgets/app_bar/appbar_subtitle_five.dart';
import 'package:amit_s_application2/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:amit_s_application2/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:amit_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:amit_s_application2/widgets/custom_elevated_button.dart';
import 'package:amit_s_application2/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ChatHelloScreen extends GetWidget<ChatHelloController> {
  const ChatHelloScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray5001,
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 14.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 221.h,
                  margin: EdgeInsets.only(right: 114.h),
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
              ),
              SizedBox(height: 23.v),
              Padding(
                padding: EdgeInsets.only(right: 2.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomElevatedButton(
                      width: 142.h,
                      text: "lbl_order_issues".tr,
                      buttonTextStyle:
                          CustomTextStyles.titleSmallOnErrorContainerMedium_1,
                    ),
                    Container(
                      height: 40.adaptSize,
                      width: 40.adaptSize,
                      margin: EdgeInsets.only(left: 11.h),
                      decoration:
                          AppDecoration.outlineOnErrorContainer1.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder18,
                      ),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgImage,
                        height: 40.adaptSize,
                        width: 40.adaptSize,
                        alignment: Alignment.center,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 6.v),
              CustomElevatedButton(
                width: 217.h,
                text: "msg_i_didn_t_recieve".tr,
                buttonTextStyle:
                    CustomTextStyles.titleSmallOnErrorContainerMedium_1,
                alignment: Alignment.center,
              ),
              SizedBox(height: 6.v),
              Container(
                margin: EdgeInsets.only(
                  left: 34.h,
                  right: 2.h,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 7.h,
                  vertical: 4.v,
                ),
                decoration: AppDecoration.outlinePrimary5.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder11,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgGroup1000004655,
                      height: 89.adaptSize,
                      width: 89.adaptSize,
                      margin: EdgeInsets.only(top: 2.v),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10.h, 2.v, 6.h, 3.v),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 178.h,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 4.v),
                                  child: Text(
                                    "lbl_order_92287157".tr,
                                    style: theme.textTheme.titleSmall,
                                  ),
                                ),
                                Container(
                                  width: 61.h,
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 8.h,
                                    vertical: 1.v,
                                  ),
                                  decoration: AppDecoration.fillGray.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder4,
                                  ),
                                  child: Text(
                                    "lbl_3_items".tr,
                                    style:
                                        CustomTextStyles.labelLargeBlack90002,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 3.v),
                          Text(
                            "msg_standard_delivery".tr,
                            style: CustomTextStyles.titleSmallMedium,
                          ),
                          SizedBox(height: 18.v),
                          Text(
                            "lbl_shipped".tr,
                            style: CustomTextStyles.titleMedium18,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 221.h,
                  margin: EdgeInsets.only(right: 114.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 14.h,
                    vertical: 4.v,
                  ),
                  decoration: AppDecoration.fillPrimary.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder11,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 6.v),
                      Container(
                        width: 180.h,
                        margin: EdgeInsets.only(right: 12.h),
                        child: Text(
                          "msg_hello_amanda_i_m".tr,
                          maxLines: 5,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodySmallOnErrorContainer
                              .copyWith(
                            height: 1.58,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10.v),
              CustomElevatedButton(
                height: 37.v,
                width: 135.h,
                text: "msg_hello_maggy_sure".tr,
                margin: EdgeInsets.only(right: 2.h),
                buttonStyle: CustomButtonStyles.fillOnErrorContainer,
                buttonTextStyle: theme.textTheme.bodySmall!,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildChatBar(),
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
        child: AppbarImage(
          imagePath: ImageConstant.imgImage,
        ),
      ),
      title: Padding(
        padding: EdgeInsets.only(left: 10.h),
        child: Column(
          children: [
            AppbarSubtitleOne(
              text: "lbl_maggy_lee".tr,
              margin: EdgeInsets.only(right: 45.h),
            ),
            AppbarSubtitleFour(
              text: "msg_customer_care_service".tr,
            ),
          ],
        ),
      ),
      actions: [
        AppbarSubtitleFive(
          text: "lbl_typing".tr,
          margin: EdgeInsets.fromLTRB(18.h, 33.v, 18.h, 32.v),
        ),
      ],
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildChatBar() {
    return Container(
      margin: EdgeInsets.only(
        left: 21.h,
        right: 21.h,
        bottom: 41.v,
      ),
      decoration: AppDecoration.fillIndigo,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 7.v),
            child: Text(
              "lbl_message".tr,
              style: CustomTextStyles.titleMediumBlueA700,
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgImageIcon,
            height: 26.adaptSize,
            width: 26.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: CustomIconButton(
              height: 26.adaptSize,
              width: 26.adaptSize,
              padding: EdgeInsets.all(7.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgMegaphoneBlueA700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
