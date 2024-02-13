import 'controller/settings_full_controller.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:amit_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SettingsFullScreen extends GetWidget<SettingsFullController> {
  const SettingsFullScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 13.v),
            child: Container(
              margin: EdgeInsets.only(bottom: 5.v),
              padding: EdgeInsets.symmetric(horizontal: 19.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_personal".tr,
                    style: CustomTextStyles.titleLargeExtraBold,
                  ),
                  SizedBox(height: 32.v),
                  _buildTitle(
                    titleText: "lbl_profile".tr,
                    arrowImage: ImageConstant.imgArrowRightBlack90002,
                  ),
                  SizedBox(height: 24.v),
                  Opacity(
                    opacity: 0.1,
                    child: Divider(),
                  ),
                  SizedBox(height: 21.v),
                  _buildTitle(
                    titleText: "msg_shipping_address".tr,
                    arrowImage: ImageConstant.imgArrowRightBlack90002,
                  ),
                  SizedBox(height: 24.v),
                  Opacity(
                    opacity: 0.1,
                    child: Divider(),
                  ),
                  SizedBox(height: 21.v),
                  _buildTitle(
                    titleText: "lbl_payment_methods".tr,
                    arrowImage: ImageConstant.imgArrowRightBlack90002,
                  ),
                  SizedBox(height: 24.v),
                  Opacity(
                    opacity: 0.1,
                    child: Divider(),
                  ),
                  SizedBox(height: 33.v),
                  Text(
                    "lbl_shop".tr,
                    style: CustomTextStyles.titleLargeExtraBold,
                  ),
                  SizedBox(height: 30.v),
                  _buildTitle1(
                    title: "lbl_country".tr,
                    price: "lbl_vietnam".tr,
                  ),
                  SizedBox(height: 19.v),
                  Opacity(
                    opacity: 0.1,
                    child: Divider(),
                  ),
                  SizedBox(height: 21.v),
                  _buildTitle1(
                    title: "lbl_currency".tr,
                    price: "lbl_usd".tr,
                  ),
                  SizedBox(height: 19.v),
                  Opacity(
                    opacity: 0.1,
                    child: Divider(),
                  ),
                  SizedBox(height: 21.v),
                  _buildTitle1(
                    title: "lbl_sizes".tr,
                    price: "lbl_uk".tr,
                  ),
                  SizedBox(height: 21.v),
                  Opacity(
                    opacity: 0.1,
                    child: Divider(),
                  ),
                  SizedBox(height: 21.v),
                  _buildTitle(
                    titleText: "msg_terms_and_conditions".tr,
                    arrowImage: ImageConstant.imgArrowRightBlack9000217x9,
                  ),
                  SizedBox(height: 21.v),
                  Opacity(
                    opacity: 0.1,
                    child: Divider(),
                  ),
                  SizedBox(height: 31.v),
                  Text(
                    "lbl_account".tr,
                    style: CustomTextStyles.titleLargeExtraBold,
                  ),
                  SizedBox(height: 32.v),
                  _buildTitle1(
                    title: "lbl_language".tr,
                    price: "lbl_english".tr,
                  ),
                  SizedBox(height: 19.v),
                  Opacity(
                    opacity: 0.1,
                    child: Divider(),
                  ),
                  SizedBox(height: 21.v),
                  _buildTitle(
                    titleText: "lbl_about_slada".tr,
                    arrowImage: ImageConstant.imgArrowRightBlack9000217x9,
                  ),
                  SizedBox(height: 21.v),
                  Opacity(
                    opacity: 0.1,
                    child: Divider(),
                  ),
                  SizedBox(height: 45.v),
                  Text(
                    "msg_delete_my_account".tr,
                    style: CustomTextStyles.labelLargeRed300,
                  ),
                  SizedBox(height: 29.v),
                  Text(
                    "lbl_slada".tr,
                    style: CustomTextStyles.titleLargeExtraBold,
                  ),
                  SizedBox(height: 3.v),
                  Text(
                    "msg_version_1_0_april".tr,
                    style: theme.textTheme.bodySmall,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      title: AppbarTitle(
        text: "lbl_settings".tr,
        margin: EdgeInsets.only(left: 20.h),
      ),
    );
  }

  /// Common widget
  Widget _buildTitle({
    required String titleText,
    required String arrowImage,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          titleText,
          style:
              CustomTextStyles.titleMediumNunitoSansBlack90002SemiBold.copyWith(
            color: appTheme.black90002,
          ),
        ),
        CustomImageView(
          imagePath: arrowImage,
          height: 17.v,
          width: 9.h,
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildTitle1({
    required String title,
    required String price,
  }) {
    return Row(
      children: [
        Text(
          title,
          style:
              CustomTextStyles.titleMediumNunitoSansBlack90002SemiBold.copyWith(
            color: appTheme.black90002,
          ),
        ),
        Spacer(),
        Text(
          price,
          style: theme.textTheme.bodyMedium!.copyWith(
            color: appTheme.black90002,
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgArrowRightBlack9000217x9,
          height: 17.v,
          width: 9.h,
          margin: EdgeInsets.only(
            left: 16.h,
            bottom: 3.v,
          ),
        ),
      ],
    );
  }
}
