import 'controller/to_receive_attempt_is_not_successful_controller.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/presentation/cart_page/cart_page.dart';
import 'package:amit_s_application2/presentation/flash_sale_full_page/flash_sale_full_page.dart';
import 'package:amit_s_application2/presentation/full_profile_page/full_profile_page.dart';
import 'package:amit_s_application2/presentation/wishlist_page/wishlist_page.dart';
import 'package:amit_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:amit_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:amit_s_application2/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:amit_s_application2/widgets/app_bar/appbar_trailing_iconbutton_one.dart';
import 'package:amit_s_application2/widgets/app_bar/appbar_trailing_iconbutton_two.dart';
import 'package:amit_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:amit_s_application2/widgets/custom_bottom_bar.dart';
import 'package:amit_s_application2/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ToReceiveAttemptIsNotSuccessfulScreen
    extends GetWidget<ToReceiveAttemptIsNotSuccessfulController> {
  const ToReceiveAttemptIsNotSuccessfulScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: Column(
            children: [
              SizedBox(height: 15.v),
              _buildView(),
              SizedBox(height: 11.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Text(
                    "lbl_packed".tr,
                    style: CustomTextStyles.labelLargeBold_1,
                  ),
                ),
              ),
              Text(
                "lbl_shipped".tr,
                textAlign: TextAlign.center,
                style: CustomTextStyles.labelLargeBold_1,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "lbl_delivered".tr,
                  textAlign: TextAlign.right,
                  style: CustomTextStyles.labelLargeBold_1,
                ),
              ),
              SizedBox(height: 13.v),
              _buildTitle1(),
              SizedBox(height: 23.v),
              _buildTitle(
                titleText: "lbl_packed".tr,
                dateText: "lbl_april_19_12_31".tr,
              ),
              SizedBox(height: 3.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 323.h,
                  margin: EdgeInsets.only(right: 11.h),
                  child: Text(
                    "msg_your_parcel_is_packed".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodySmall!.copyWith(
                      height: 1.33,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 23.v),
              _buildTitle(
                titleText: "msg_on_the_way_to_logistic".tr,
                dateText: "lbl_april_19_16_20".tr,
              ),
              SizedBox(height: 1.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 316.h,
                  margin: EdgeInsets.only(right: 18.h),
                  child: Text(
                    "msg_lorem_ipsum_dolor9".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodySmall!.copyWith(
                      height: 1.33,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 23.v),
              _buildTitle(
                titleText: "msg_arrived_at_logistic".tr,
                dateText: "lbl_april_19_19_07".tr,
              ),
              SizedBox(height: 1.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 316.h,
                  margin: EdgeInsets.only(right: 18.h),
                  child: Text(
                    "msg_lorem_ipsum_dolor9".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodySmall!.copyWith(
                      height: 1.33,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 23.v),
              _buildTitle(
                titleText: "lbl_shipped".tr,
                dateText: "lbl_april_20_06_15".tr,
              ),
              SizedBox(height: 1.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 316.h,
                  margin: EdgeInsets.only(right: 18.h),
                  child: Text(
                    "msg_lorem_ipsum_dolor9".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodySmall!.copyWith(
                      height: 1.33,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 23.v),
              _buildTitle(
                titleText: "msg_out_for_delivery".tr,
                dateText: "lbl_april_22_11_10".tr,
              ),
              SizedBox(height: 1.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 316.h,
                  margin: EdgeInsets.only(right: 18.h),
                  child: Text(
                    "msg_lorem_ipsum_dolor9".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodySmall!.copyWith(
                      height: 1.33,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 23.v),
              _buildApril191250(),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 316.h,
                  margin: EdgeInsets.only(right: 18.h),
                  child: Text(
                    "msg_lorem_ipsum_dolor9".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodySmall!.copyWith(
                      height: 1.33,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 64.h,
      leading: Container(
        margin: EdgeInsets.only(
          left: 24.h,
          top: 1.v,
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
        padding: EdgeInsets.only(left: 17.h),
        child: Column(
          children: [
            AppbarSubtitle(
              text: "lbl_to_recieve".tr,
              margin: EdgeInsets.only(right: 2.h),
            ),
            SizedBox(height: 1.v),
            AppbarSubtitleFour(
              text: "msg_track_your_order".tr,
            ),
          ],
        ),
      ),
      actions: [
        AppbarTrailingIconbuttonTwo(
          imagePath: ImageConstant.imgIcon,
          margin: EdgeInsets.only(
            left: 20.h,
            top: 4.v,
            right: 16.h,
          ),
        ),
        AppbarTrailingIconbuttonOne(
          imagePath: ImageConstant.imgEllispse01Indigo50,
          margin: EdgeInsets.only(
            left: 11.h,
            top: 4.v,
            right: 16.h,
          ),
        ),
        AppbarTrailingIconbuttonOne(
          imagePath: ImageConstant.imgEllispse01Indigo50,
          margin: EdgeInsets.only(
            left: 10.h,
            top: 4.v,
            right: 36.h,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildView() {
    return SizedBox(
      height: 30.v,
      width: 331.h,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 14.v,
              width: 331.h,
              decoration: BoxDecoration(
                color: appTheme.indigo50,
                borderRadius: BorderRadius.circular(
                  7.h,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              height: 30.adaptSize,
              width: 30.adaptSize,
              decoration: BoxDecoration(
                color: appTheme.indigo50,
                borderRadius: BorderRadius.circular(
                  15.h,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 30.adaptSize,
              width: 30.adaptSize,
              decoration: BoxDecoration(
                color: appTheme.indigo50,
                borderRadius: BorderRadius.circular(
                  15.h,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              height: 30.adaptSize,
              width: 30.adaptSize,
              decoration: BoxDecoration(
                color: appTheme.indigo50,
                borderRadius: BorderRadius.circular(
                  15.h,
                ),
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgUnion7,
            height: 22.v,
            width: 323.h,
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTitle1() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder11,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 6.h,
              top: 3.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_tracking_number".tr,
                  style: theme.textTheme.titleSmall,
                ),
                Text(
                  "msg_lgs_i92927839300763731".tr,
                  style: theme.textTheme.bodySmall,
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgCopy,
            height: 20.adaptSize,
            width: 20.adaptSize,
            margin: EdgeInsets.only(
              top: 2.v,
              bottom: 14.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildApril191250() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 40.v,
          width: 225.h,
          margin: EdgeInsets.only(top: 3.v),
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgArrowRightBlue80001,
                height: 11.v,
                width: 14.h,
                alignment: Alignment.bottomRight,
                margin: EdgeInsets.only(
                  right: 58.h,
                  bottom: 4.v,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 225.h,
                  child: Text(
                    "msg_attempt_to_deliver".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.titleMediumBlue8000116.copyWith(
                      height: 1.25,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        CustomElevatedButton(
          height: 22.v,
          width: 90.h,
          text: "lbl_april_19_12_50".tr,
          margin: EdgeInsets.only(bottom: 21.v),
          buttonStyle: CustomButtonStyles.fillRed,
          buttonTextStyle: CustomTextStyles.labelLargeOnErrorContainer_1,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Get.toNamed(getCurrentRoute(type), id: 1);
      },
    );
  }

  /// Common widget
  Widget _buildTitle({
    required String titleText,
    required String dateText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 4.v),
          child: Text(
            titleText,
            style: CustomTextStyles.titleMediumBlack90002_1.copyWith(
              color: appTheme.black90002,
            ),
          ),
        ),
        Container(
          width: 90.h,
          margin: EdgeInsets.only(
            left: 6.h,
            bottom: 2.v,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: 6.h,
            vertical: 1.v,
          ),
          decoration: AppDecoration.fillGray.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder4,
          ),
          child: Text(
            dateText,
            style: CustomTextStyles.labelLargeBlack90002.copyWith(
              color: appTheme.black90002,
            ),
          ),
        ),
      ],
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Settings:
        return AppRoutes.flashSaleFullPage;
      case BottomBarEnum.Favorite:
        return AppRoutes.wishlistPage;
      case BottomBarEnum.User:
        return "/";
      case BottomBarEnum.Cart:
        return AppRoutes.cartPage;
      case BottomBarEnum.Lock:
        return AppRoutes.fullProfilePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.flashSaleFullPage:
        return FlashSaleFullPage();
      case AppRoutes.wishlistPage:
        return WishlistPage();
      case AppRoutes.cartPage:
        return CartPage();
      case AppRoutes.fullProfilePage:
        return FullProfilePage();
      default:
        return DefaultWidget();
    }
  }
}
