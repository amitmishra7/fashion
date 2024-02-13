import 'controller/live_controller.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/presentation/cart_page/cart_page.dart';
import 'package:amit_s_application2/presentation/flash_sale_full_page/flash_sale_full_page.dart';
import 'package:amit_s_application2/presentation/full_profile_page/full_profile_page.dart';
import 'package:amit_s_application2/presentation/wishlist_page/wishlist_page.dart';
import 'package:amit_s_application2/widgets/custom_bottom_bar.dart';
import 'package:amit_s_application2/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class LiveScreen extends GetWidget<LiveController> {
  const LiveScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 10.v,
          ),
          child: Column(
            children: [
              SizedBox(height: 4.v),
              Container(
                decoration: AppDecoration.outlineBlack900022.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder11,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.img0aee350236664,
                  height: 610.v,
                  width: 335.h,
                  radius: BorderRadius.circular(
                    9.h,
                  ),
                ),
              ),
              SizedBox(height: 10.v),
              _buildShopRow(),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(),
      ),
    );
  }

  /// Section Widget
  Widget _buildShopRow() {
    return Padding(
      padding: EdgeInsets.only(left: 5.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 16.v,
            width: 22.h,
            margin: EdgeInsets.symmetric(vertical: 12.v),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgPath649,
                  height: 16.v,
                  width: 22.h,
                  alignment: Alignment.center,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgContrast,
                  height: 6.adaptSize,
                  width: 6.adaptSize,
                  alignment: Alignment.center,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 5.h,
              top: 12.v,
              bottom: 9.v,
            ),
            child: Text(
              "lbl_2_530".tr,
              style: CustomTextStyles.labelLargeNunitoSansBlack90002,
            ),
          ),
          Container(
            width: 40.h,
            margin: EdgeInsets.only(
              left: 23.h,
              top: 11.v,
              bottom: 11.v,
            ),
            padding: EdgeInsets.symmetric(horizontal: 4.h),
            decoration: AppDecoration.fillGreenA.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder7,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 6.adaptSize,
                  width: 6.adaptSize,
                  margin: EdgeInsets.symmetric(vertical: 6.v),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.onErrorContainer.withOpacity(1),
                    borderRadius: BorderRadius.circular(
                      3.h,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 3.h,
                    top: 2.v,
                  ),
                  child: Text(
                    "lbl_live".tr,
                    style: CustomTextStyles.labelLargeOnErrorContainer,
                  ),
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgForwardIcon,
            height: 16.v,
            width: 24.h,
            margin: EdgeInsets.only(
              left: 20.h,
              top: 11.v,
              bottom: 12.v,
            ),
          ),
          Spacer(),
          CustomElevatedButton(
            width: 120.h,
            text: "lbl_shop".tr,
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
