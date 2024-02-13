import 'controller/story_product_style_one_controller.dart';
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
class StoryProductStyleOneScreen
    extends GetWidget<StoryProductStyleOneController> {
  const StoryProductStyleOneScreen({Key? key})
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
              Container(
                decoration: AppDecoration.outlineBlack900022.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder11,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.img225b8879Feb34,
                  height: 556.v,
                  width: 335.h,
                  radius: BorderRadius.circular(
                    9.h,
                  ),
                ),
              ),
              SizedBox(height: 12.v),
              _buildRowWithTextAndButton(),
              SizedBox(height: 16.v),
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
  Widget _buildRowWithTextAndButton() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.h),
      padding: EdgeInsets.all(8.h),
      decoration: AppDecoration.outlineBlack900023.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder11,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 148.h,
            margin: EdgeInsets.only(
              left: 8.h,
              top: 2.v,
              bottom: 4.v,
            ),
            child: Text(
              "msg_lorem_ipsum_dolor3".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodySmall!.copyWith(
                height: 1.33,
              ),
            ),
          ),
          CustomElevatedButton(
            width: 120.h,
            text: "lbl_shop".tr,
            margin: EdgeInsets.only(left: 22.h),
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
