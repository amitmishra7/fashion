import 'controller/story_product_style_two_controller.dart';
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
class StoryProductStyleTwoScreen
    extends GetWidget<StoryProductStyleTwoController> {
  const StoryProductStyleTwoScreen({Key? key})
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
            vertical: 15.v,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                margin: EdgeInsets.all(0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusStyle.circleBorder11,
                ),
                child: Container(
                  height: 617.v,
                  width: 335.h,
                  decoration: AppDecoration.outlineBlack900022.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder11,
                  ),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.img02643accCfe94,
                        height: 617.v,
                        width: 335.h,
                        radius: BorderRadius.circular(
                          9.h,
                        ),
                        alignment: Alignment.center,
                      ),
                      _buildItem(),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 22.v),
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
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(),
      ),
    );
  }

  /// Section Widget
  Widget _buildItem() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.fromLTRB(10.h, 483.v, 10.h, 10.v),
        padding: EdgeInsets.all(7.h),
        decoration: AppDecoration.outlineBlack900023.copyWith(
          borderRadius: BorderRadiusStyle.circleBorder11,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.img576df1589ecf4,
              height: 108.v,
              width: 133.h,
              radius: BorderRadius.circular(
                5.h,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 140.h,
                    child: Text(
                      "msg_lorem_ipsum_dolor5".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodySmall!.copyWith(
                        height: 1.33,
                      ),
                    ),
                  ),
                  SizedBox(height: 4.v),
                  Text(
                    "lbl_17_00".tr,
                    style: theme.textTheme.titleMedium,
                  ),
                  SizedBox(height: 31.v),
                  CustomElevatedButton(
                    width: 157.h,
                    text: "lbl_shop".tr,
                  ),
                ],
              ),
            ),
          ],
        ),
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
