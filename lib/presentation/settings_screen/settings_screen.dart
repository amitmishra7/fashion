import 'controller/settings_controller.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/presentation/cart_page/cart_page.dart';
import 'package:amit_s_application2/presentation/flash_sale_full_page/flash_sale_full_page.dart';
import 'package:amit_s_application2/presentation/full_profile_page/full_profile_page.dart';
import 'package:amit_s_application2/presentation/wishlist_page/wishlist_page.dart';
import 'package:amit_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:amit_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:amit_s_application2/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SettingsScreen extends GetWidget<SettingsController> {
  const SettingsScreen({Key? key})
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
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 13.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_personal".tr,
                style: CustomTextStyles.titleLargeExtraBold,
              ),
              SizedBox(height: 32.v),
              _buildTitle(
                title: "lbl_profile".tr,
                arrowRight: ImageConstant.imgArrowRightBlack90002,
              ),
              SizedBox(height: 24.v),
              Opacity(
                opacity: 0.1,
                child: Divider(),
              ),
              SizedBox(height: 21.v),
              _buildTitle(
                title: "msg_shipping_address".tr,
                arrowRight: ImageConstant.imgArrowRightBlack90002,
              ),
              SizedBox(height: 24.v),
              Opacity(
                opacity: 0.1,
                child: Divider(),
              ),
              SizedBox(height: 22.v),
              _buildTitle(
                title: "lbl_payment_methods".tr,
                arrowRight: ImageConstant.imgArrowRightBlack90002,
              ),
              SizedBox(height: 23.v),
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
                titleText: "lbl_country".tr,
                priceText: "lbl_vietnam".tr,
              ),
              SizedBox(height: 19.v),
              Opacity(
                opacity: 0.1,
                child: Divider(),
              ),
              SizedBox(height: 21.v),
              _buildTitle1(
                titleText: "lbl_currency".tr,
                priceText: "lbl_usd".tr,
              ),
              SizedBox(height: 19.v),
              Opacity(
                opacity: 0.1,
                child: Divider(),
              ),
              SizedBox(height: 21.v),
              _buildTitle1(
                titleText: "lbl_sizes".tr,
                priceText: "lbl_uk".tr,
              ),
              SizedBox(height: 21.v),
              Opacity(
                opacity: 0.1,
                child: Divider(),
              ),
              SizedBox(height: 21.v),
              _buildTitle(
                title: "msg_terms_and_conditions".tr,
                arrowRight: ImageConstant.imgArrowRightBlack9000217x9,
              ),
              SizedBox(height: 21.v),
              Opacity(
                opacity: 0.1,
                child: Divider(),
              ),
              SizedBox(height: 5.v),
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
      title: AppbarTitle(
        text: "lbl_settings".tr,
        margin: EdgeInsets.only(left: 20.h),
      ),
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
    required String title,
    required String arrowRight,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style:
              CustomTextStyles.titleMediumNunitoSansBlack90002SemiBold.copyWith(
            color: appTheme.black90002,
          ),
        ),
        CustomImageView(
          imagePath: arrowRight,
          height: 17.v,
          width: 9.h,
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildTitle1({
    required String titleText,
    required String priceText,
  }) {
    return Row(
      children: [
        Text(
          titleText,
          style:
              CustomTextStyles.titleMediumNunitoSansBlack90002SemiBold.copyWith(
            color: appTheme.black90002,
          ),
        ),
        Spacer(),
        Text(
          priceText,
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
