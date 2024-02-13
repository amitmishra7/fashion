import 'controller/story_dots_tap_controller.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/presentation/cart_page/cart_page.dart';
import 'package:amit_s_application2/presentation/flash_sale_full_page/flash_sale_full_page.dart';
import 'package:amit_s_application2/presentation/full_profile_page/full_profile_page.dart';
import 'package:amit_s_application2/presentation/wishlist_page/wishlist_page.dart';
import 'package:amit_s_application2/widgets/custom_bottom_bar.dart';
import 'package:amit_s_application2/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class StoryDotsTapScreen extends GetWidget<StoryDotsTapController> {
  const StoryDotsTapScreen({Key? key})
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
            vertical: 14.v,
          ),
          child: Column(
            children: [
              Card(
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                margin: EdgeInsets.all(0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusStyle.circleBorder11,
                ),
                child: Container(
                  height: 620.v,
                  width: 335.h,
                  decoration: AppDecoration.outlineBlack900022.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder11,
                  ),
                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgD81ab00bD1654,
                        height: 620.v,
                        width: 335.h,
                        radius: BorderRadius.circular(
                          9.h,
                        ),
                        alignment: Alignment.center,
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 24.h,
                            right: 97.h,
                            bottom: 47.v,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgPoint02,
                                height: 23.adaptSize,
                                width: 23.adaptSize,
                              ),
                              SizedBox(height: 108.v),
                              Align(
                                alignment: Alignment.centerRight,
                                child: SizedBox(
                                  height: 212.v,
                                  width: 158.h,
                                  child: Stack(
                                    alignment: Alignment.topRight,
                                    children: [
                                      Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Container(
                                          margin: EdgeInsets.only(right: 11.h),
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 7.h,
                                            vertical: 6.v,
                                          ),
                                          decoration: AppDecoration
                                              .outlineBlack900024
                                              .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .circleBorder11,
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgC176c1ea70574,
                                                height: 138.v,
                                                width: 132.h,
                                                radius: BorderRadius.circular(
                                                  8.h,
                                                ),
                                              ),
                                              SizedBox(height: 7.v),
                                              CustomElevatedButton(
                                                text: "lbl_shop".tr,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: Container(
                                          height: 23.adaptSize,
                                          width: 23.adaptSize,
                                          decoration: BoxDecoration(
                                            color: theme
                                                .colorScheme.onErrorContainer
                                                .withOpacity(1),
                                            borderRadius: BorderRadius.circular(
                                              11.h,
                                            ),
                                            border: Border.all(
                                              color: theme.colorScheme.primary,
                                              width: 3.h,
                                              strokeAlign: strokeAlignCenter,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.v),
              SizedBox(
                height: 10.v,
                child: AnimatedSmoothIndicator(
                  activeIndex: 0,
                  count: 6,
                  effect: ScrollingDotsEffect(
                    spacing: 10,
                    activeDotColor: appTheme.blue10001,
                    dotColor: appTheme.blue80001,
                    dotHeight: 10.v,
                    dotWidth: 10.h,
                  ),
                ),
              ),
              SizedBox(height: 6.v),
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
