import 'controller/chat_go_to_the_bottom_controller.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:amit_s_application2/widgets/app_bar/appbar_subtitle_five.dart';
import 'package:amit_s_application2/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:amit_s_application2/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:amit_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:amit_s_application2/widgets/custom_elevated_button.dart';
import 'package:amit_s_application2/widgets/custom_icon_button.dart';
import 'package:amit_s_application2/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

// ignore_for_file: must_be_immutable
class ChatGoToTheBottomScreen extends GetWidget<ChatGoToTheBottomController> {
  const ChatGoToTheBottomScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray5001,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildPlaceholderOne(),
              Container(
                padding: EdgeInsets.all(10.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomElevatedButton(
                      height: 37.v,
                      width: 139.h,
                      text: "msg_hello_maggy_sure".tr,
                      margin: EdgeInsets.only(right: 12.h),
                      buttonStyle: CustomButtonStyles.fillOnErrorContainer,
                      buttonTextStyle: theme.textTheme.bodySmall!,
                      alignment: Alignment.centerRight,
                    ),
                    SizedBox(height: 10.v),
                    Container(
                      width: 221.h,
                      margin: EdgeInsets.only(
                        left: 10.h,
                        right: 124.h,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 13.h,
                        vertical: 4.v,
                      ),
                      decoration: AppDecoration.fillPrimary.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder11,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 5.v),
                          Container(
                            width: 185.h,
                            margin: EdgeInsets.only(right: 9.h),
                            child: Text(
                              "msg_thank_you_for_waiting".tr,
                              maxLines: 6,
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
                    SizedBox(height: 6.v),
                    Container(
                      margin: EdgeInsets.only(
                        left: 10.h,
                        right: 124.h,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 14.h,
                        vertical: 7.v,
                      ),
                      decoration: AppDecoration.fillPrimary.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder11,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 3.v),
                          SizedBox(
                            width: 192.h,
                            child: Text(
                              "msg_we_would_like_to".tr,
                              maxLines: 2,
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
                    SizedBox(height: 6.v),
                    Container(
                      margin: EdgeInsets.only(right: 114.h),
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.h,
                        vertical: 4.v,
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: fs.Svg(
                            ImageConstant.imgVoucher01,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              left: 10.h,
                              right: 4.h,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "lbl_voucher".tr,
                                  style: CustomTextStyles.titleMediumPrimary,
                                ),
                                Container(
                                  width: 100.h,
                                  margin: EdgeInsets.only(bottom: 2.v),
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 5.h,
                                    vertical: 2.v,
                                  ),
                                  decoration: AppDecoration.fillGray.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder4,
                                  ),
                                  child: Text(
                                    "msg_valid_until_6_20_20".tr,
                                    style: theme.textTheme.labelMedium,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 1.v),
                          Divider(
                            color: theme.colorScheme.primary,
                          ),
                          SizedBox(height: 9.v),
                          Text(
                            "msg_15_off_your_next".tr,
                            style:
                                CustomTextStyles.labelLargeNunitoSansBlack90002,
                          ),
                          SizedBox(height: 3.v),
                          CustomOutlinedButton(
                            width: 79.h,
                            text: "lbl_collect".tr,
                            buttonStyle: CustomButtonStyles.outlineBlueTL6,
                          ),
                          SizedBox(height: 9.v),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.v),
                    CustomElevatedButton(
                      height: 37.v,
                      width: 176.h,
                      text: "msg_wow_thanks_a_lot".tr,
                      margin: EdgeInsets.only(right: 12.h),
                      buttonStyle: CustomButtonStyles.fillOnErrorContainer,
                      buttonTextStyle: theme.textTheme.bodySmall!,
                      alignment: Alignment.centerRight,
                    ),
                    SizedBox(height: 10.v),
                    _buildTitle(),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildChatBar(),
      ),
    );
  }

  /// Section Widget
  Widget _buildPlaceholderOne() {
    return SizedBox(
      height: 188.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          CustomAppBar(
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
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              margin: EdgeInsets.only(
                left: 20.h,
                right: 134.h,
              ),
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
                      style:
                          CustomTextStyles.bodySmallOnErrorContainer.copyWith(
                        height: 1.58,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTitle() {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 11.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 10.v),
              padding: EdgeInsets.symmetric(
                horizontal: 14.h,
                vertical: 8.v,
              ),
              decoration: AppDecoration.fillPrimary.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder11,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 2.v),
                  SizedBox(
                    width: 190.h,
                    child: Text(
                      "msg_is_there_anything".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style:
                          CustomTextStyles.bodySmallOnErrorContainer.copyWith(
                        height: 1.58,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30.v),
              child: CustomIconButton(
                height: 40.adaptSize,
                width: 40.adaptSize,
                padding: EdgeInsets.all(12.h),
                decoration: IconButtonStyleHelper.outlineBlackTL20,
                child: CustomImageView(
                  imagePath: ImageConstant.imgArrowUp,
                ),
              ),
            ),
          ],
        ),
      ),
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
