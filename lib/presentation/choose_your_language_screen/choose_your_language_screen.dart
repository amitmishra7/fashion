import 'controller/choose_your_language_controller.dart';
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
class ChooseYourLanguageScreen extends GetWidget<ChooseYourLanguageController> {
  const ChooseYourLanguageScreen({Key? key})
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_language".tr,
                style: CustomTextStyles.titleMediumBlack90002Medium16,
              ),
              SizedBox(height: 21.v),
              _buildEn(),
              SizedBox(height: 6.v),
              _buildRu(
                titleText: "lbl_fran_ais".tr,
              ),
              SizedBox(height: 6.v),
              _buildRu(
                titleText: "lbl3".tr,
              ),
              SizedBox(height: 6.v),
              _buildRu(
                titleText: "lbl_ti_ng_vi_t".tr,
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
  Widget _buildEn() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.fillIndigo.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder11,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 1.v,
            ),
            child: Text(
              "lbl_english".tr,
              style: CustomTextStyles.titleMediumNunitoSansBlack90002SemiBold,
            ),
          ),
          Container(
            height: 22.adaptSize,
            width: 22.adaptSize,
            padding: EdgeInsets.symmetric(
              horizontal: 6.h,
              vertical: 8.v,
            ),
            decoration: AppDecoration.outlineOnErrorContainer.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder11,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgIconFeatherCheck,
              height: 4.v,
              width: 6.h,
              alignment: Alignment.centerRight,
            ),
          ),
        ],
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
  Widget _buildRu({required String titleText}) {
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
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 3.v,
            ),
            child: Text(
              titleText,
              style: CustomTextStyles.bodyLargeBlack90002.copyWith(
                color: appTheme.black90002,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgCheckEmpty,
            height: 22.adaptSize,
            width: 22.adaptSize,
            margin: EdgeInsets.only(top: 1.v),
          ),
        ],
      ),
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
