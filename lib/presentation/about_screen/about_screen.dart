import 'controller/about_controller.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/presentation/cart_page/cart_page.dart';
import 'package:amit_s_application2/presentation/flash_sale_full_page/flash_sale_full_page.dart';
import 'package:amit_s_application2/presentation/full_profile_page/full_profile_page.dart';
import 'package:amit_s_application2/presentation/wishlist_page/wishlist_page.dart';
import 'package:amit_s_application2/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AboutScreen extends GetWidget<AboutController> {
  const AboutScreen({Key? key})
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
            vertical: 26.v,
          ),
          child: Column(
            children: [
              SizedBox(height: 62.v),
              CustomImageView(
                imagePath: ImageConstant.imgBag,
                height: 92.v,
                width: 81.h,
              ),
              Spacer(),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "lbl_about_shoppe".tr,
                  style: theme.textTheme.headlineMedium,
                ),
              ),
              SizedBox(height: 17.v),
              Container(
                width: 327.h,
                margin: EdgeInsets.only(right: 7.h),
                child: Text(
                  "msg_shoppe_shopping".tr,
                  maxLines: 8,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyLargeBlack90002_1.copyWith(
                    height: 1.69,
                  ),
                ),
              ),
              SizedBox(height: 27.v),
              SizedBox(
                width: 335.h,
                child: Text(
                  "msg_if_you_need_help".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyLargeBlack90002_1.copyWith(
                    height: 1.69,
                  ),
                ),
              ),
              SizedBox(height: 7.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "msg_hello_mydomain_com".tr,
                  style: theme.textTheme.titleMedium,
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
