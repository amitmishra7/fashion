import 'controller/recently_viewed_date_chosen_tab_container_controller.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/presentation/cart_page/cart_page.dart';
import 'package:amit_s_application2/presentation/flash_sale_full_page/flash_sale_full_page.dart';
import 'package:amit_s_application2/presentation/full_profile_page/full_profile_page.dart';
import 'package:amit_s_application2/presentation/recently_viewed_date_chosen_page/recently_viewed_date_chosen_page.dart';
import 'package:amit_s_application2/presentation/wishlist_page/wishlist_page.dart';
import 'package:amit_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:amit_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:amit_s_application2/widgets/custom_bottom_bar.dart';
import 'package:amit_s_application2/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class RecentlyViewedDateChosenTabContainerScreen
    extends GetWidget<RecentlyViewedDateChosenTabContainerController> {
  const RecentlyViewedDateChosenTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 1.v),
              _buildTabview(),
              Expanded(
                child: SizedBox(
                  height: 602.v,
                  child: TabBarView(
                    controller: controller.tabviewController,
                    children: [
                      RecentlyViewedDateChosenPage(),
                      RecentlyViewedDateChosenPage(),
                    ],
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
      height: 49.v,
      title: AppbarTitle(
        text: "lbl_recently_viewed".tr,
        margin: EdgeInsets.only(left: 20.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview() {
    return Container(
      height: 30.v,
      width: 335.h,
      child: TabBar(
        controller: controller.tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: appTheme.gray90001,
        labelStyle: TextStyle(
          fontSize: 15.fSize,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w700,
        ),
        unselectedLabelColor: appTheme.blueA700,
        unselectedLabelStyle: TextStyle(
          fontSize: 15.fSize,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w700,
        ),
        indicator: BoxDecoration(
          color: appTheme.gray5001,
          borderRadius: BorderRadius.circular(
            15.h,
          ),
        ),
        tabs: [
          Tab(
            child: CustomElevatedButton(
              height: 30.v,
              width: 146.h,
              text: "lbl_today".tr,
              buttonStyle: CustomButtonStyles.fillGrayTL15,
              buttonTextStyle: CustomTextStyles.titleSmall15_1,
            ),
          ),
          Tab(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 4.h,
                vertical: 3.v,
              ),
              decoration: AppDecoration.fillIndigo.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder15,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 4.v),
                    child: Text(
                      "lbl_april_18".tr,
                    ),
                  ),
                  Container(
                    height: 22.adaptSize,
                    width: 22.adaptSize,
                    margin: EdgeInsets.only(left: 15.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 7.h,
                      vertical: 8.v,
                    ),
                    decoration: AppDecoration.outlineOnErrorContainer.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder11,
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgIconFeatherCheck,
                      height: 4.v,
                      width: 6.h,
                      alignment: Alignment.topCenter,
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
