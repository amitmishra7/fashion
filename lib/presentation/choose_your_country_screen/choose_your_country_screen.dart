import 'controller/choose_your_country_controller.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/presentation/cart_page/cart_page.dart';
import 'package:amit_s_application2/presentation/flash_sale_full_page/flash_sale_full_page.dart';
import 'package:amit_s_application2/presentation/full_profile_page/full_profile_page.dart';
import 'package:amit_s_application2/presentation/wishlist_page/wishlist_page.dart';
import 'package:amit_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:amit_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:amit_s_application2/widgets/custom_bottom_bar.dart';
import 'package:amit_s_application2/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ChooseYourCountryScreen extends GetWidget<ChooseYourCountryController> {
  const ChooseYourCountryScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_country".tr,
                style: CustomTextStyles.titleMediumBlack90002Medium16,
              ),
              SizedBox(height: 21.v),
              CustomTextFormField(
                controller: controller.countryController,
                hintText: "lbl_india".tr,
                hintStyle: CustomTextStyles.bodyLargeBlue80001,
                textInputAction: TextInputAction.done,
                borderDecoration: TextFormFieldStyleHelper.fillIndigoTL9,
                fillColor: appTheme.indigo50,
              ),
              SizedBox(height: 20.v),
              Container(
                width: 52.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 20.h,
                  vertical: 2.v,
                ),
                decoration: AppDecoration.fillGray.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder11,
                ),
                child: Text(
                  "lbl_a".tr,
                  style:
                      CustomTextStyles.titleMediumNunitoSansBlack90002SemiBold,
                ),
              ),
              SizedBox(height: 28.v),
              SizedBox(
                width: 150.h,
                child: Text(
                  "msg_afghanistan_alb".tr,
                  maxLines: 12,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyLargeBlack90002_1.copyWith(
                    height: 2.50,
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
