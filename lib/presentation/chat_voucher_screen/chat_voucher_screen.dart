import 'controller/chat_voucher_controller.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:amit_s_application2/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:amit_s_application2/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:amit_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:amit_s_application2/widgets/custom_elevated_button.dart';
import 'package:amit_s_application2/widgets/custom_outlined_button.dart';
import 'package:amit_s_application2/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

// ignore_for_file: must_be_immutable
class ChatVoucherScreen extends GetWidget<ChatVoucherController> {
  const ChatVoucherScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: appTheme.gray5001,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildOrderIssues(),
              Container(
                padding: EdgeInsets.all(10.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 221.h,
                      margin: EdgeInsets.only(
                        left: 10.h,
                        right: 124.h,
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
                              style: CustomTextStyles.bodySmallOnErrorContainer
                                  .copyWith(
                                height: 1.58,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.v),
                    CustomElevatedButton(
                      height: 37.v,
                      width: 135.h,
                      text: "msg_hello_maggy_sure".tr,
                      margin: EdgeInsets.only(right: 12.h),
                      buttonStyle: CustomButtonStyles.fillOnErrorContainer,
                      buttonTextStyle: theme.textTheme.bodySmall!,
                      alignment: Alignment.centerRight,
                    ),
                    SizedBox(height: 13.v),
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
                    SizedBox(height: 4.v),
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
  Widget _buildOrderIssues() {
    return SizedBox(
      height: 170.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              margin: EdgeInsets.only(
                left: 54.h,
                top: 69.v,
                right: 22.h,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 7.h,
                vertical: 5.v,
              ),
              decoration: AppDecoration.outlinePrimary5.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder11,
              ),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup1000004655,
                    height: 89.adaptSize,
                    width: 89.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 10.h,
                      top: 3.v,
                      bottom: 2.v,
                    ),
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
                                  style: CustomTextStyles.labelLargeBlack90002,
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
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.only(
                left: 81.h,
                right: 22.h,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(left: 75.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Expanded(
                            child: CustomTextFormField(
                              controller: controller.orderIssuesController,
                              hintText: "lbl_order_issues".tr,
                              textInputAction: TextInputAction.done,
                              prefix: Container(
                                margin:
                                    EdgeInsets.fromLTRB(20.h, 10.v, 10.h, 10.v),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgChecked,
                                  height: 20.adaptSize,
                                  width: 20.adaptSize,
                                ),
                              ),
                              prefixConstraints: BoxConstraints(
                                maxHeight: 17.v,
                              ),
                              contentPadding: EdgeInsets.only(
                                top: 11.v,
                                right: 11.h,
                                bottom: 11.v,
                              ),
                              borderDecoration:
                                  TextFormFieldStyleHelper.fillPrimary,
                              fillColor: theme.colorScheme.primary,
                            ),
                          ),
                          Container(
                            height: 17.v,
                            width: 40.h,
                            margin: EdgeInsets.only(left: 11.h),
                            decoration:
                                AppDecoration.outlineOnErrorContainer1.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder18,
                            ),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgEllipse163,
                              height: 17.v,
                              width: 40.h,
                              alignment: Alignment.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 6.v),
                  Container(
                    margin: EdgeInsets.only(right: 55.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 6.h,
                      vertical: 8.v,
                    ),
                    decoration: AppDecoration.fillPrimary.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder11,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          height: 20.adaptSize,
                          width: 20.adaptSize,
                          margin: EdgeInsets.only(left: 12.h),
                          padding: EdgeInsets.symmetric(
                            horizontal: 6.h,
                            vertical: 7.v,
                          ),
                          decoration:
                              AppDecoration.outlineOnErrorContainer4.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder11,
                          ),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgIconFeatherCheck,
                            height: 4.v,
                            width: 6.h,
                            alignment: Alignment.centerRight,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 10.h,
                            top: 6.v,
                          ),
                          child: Text(
                            "msg_i_didn_t_recieve".tr,
                            style: CustomTextStyles
                                .titleSmallOnErrorContainerMedium_1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomAppBar(
            height: 77.v,
            leadingWidth: 60.h,
            leading: Container(
              margin: EdgeInsets.only(
                left: 20.h,
                top: 22.v,
                bottom: 14.v,
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
            styleType: Style.bgFill,
          ),
        ],
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
          CustomImageView(
            imagePath: ImageConstant.imgMegaphone,
            height: 26.adaptSize,
            width: 26.adaptSize,
            margin: EdgeInsets.only(left: 16.h),
          ),
        ],
      ),
    );
  }
}
