import 'controller/story_dots_controller.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/presentation/cart_page/cart_page.dart';
import 'package:amit_s_application2/presentation/flash_sale_full_page/flash_sale_full_page.dart';
import 'package:amit_s_application2/presentation/full_profile_page/full_profile_page.dart';
import 'package:amit_s_application2/presentation/wishlist_page/wishlist_page.dart';
import 'package:amit_s_application2/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class StoryDotsScreen extends GetWidget<StoryDotsController> {
  const StoryDotsScreen({Key? key})
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
                    alignment: Alignment.topLeft,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.img19d6b3d105024,
                        height: 620.v,
                        width: 335.h,
                        radius: BorderRadius.circular(
                          9.h,
                        ),
                        alignment: Alignment.center,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 72.h,
                            top: 209.v,
                            right: 97.h,
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
                              SizedBox(height: 129.v),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                  height: 23.adaptSize,
                                  width: 23.adaptSize,
                                  decoration: BoxDecoration(
                                    color: theme.colorScheme.onErrorContainer
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
