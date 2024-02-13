import 'controller/reviews_controller.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/presentation/cart_page/cart_page.dart';
import 'package:amit_s_application2/presentation/flash_sale_full_page/flash_sale_full_page.dart';
import 'package:amit_s_application2/presentation/full_profile_page/full_profile_page.dart';
import 'package:amit_s_application2/presentation/wishlist_page/wishlist_page.dart';
import 'package:amit_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:amit_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:amit_s_application2/widgets/custom_bottom_bar.dart';
import 'package:amit_s_application2/widgets/custom_rating_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ReviewsScreen extends GetWidget<ReviewsController> {
  const ReviewsScreen({Key? key})
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
            children: [
              SizedBox(height: 22.v),
              _buildReviewsRow1(),
              SizedBox(height: 20.v),
              _buildReviewsRow2(),
              SizedBox(height: 20.v),
              _buildReviewsRow3(),
              SizedBox(height: 20.v),
              _buildReviewsPlaceholderRow(),
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
      height: 43.v,
      title: AppbarTitle(
        text: "lbl_reviews".tr,
        margin: EdgeInsets.only(left: 20.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildReviewsRow1() {
    return Padding(
      padding: EdgeInsets.only(right: 6.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 40.adaptSize,
            width: 40.adaptSize,
            margin: EdgeInsets.only(bottom: 99.v),
            decoration: AppDecoration.outlineOnErrorContainer1.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder18,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgImage,
              height: 40.adaptSize,
              width: 40.adaptSize,
              alignment: Alignment.center,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_veronika".tr,
                    style: CustomTextStyles.titleMediumBlack90002SemiBold,
                  ),
                  SizedBox(height: 4.v),
                  CustomRatingBar(
                    initialRating: 0,
                  ),
                  SizedBox(height: 11.v),
                  SizedBox(
                    width: 268.h,
                    child: Text(
                      "msg_lorem_ipsum_dolor8".tr,
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodySmall!.copyWith(
                        height: 1.50,
                      ),
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
  Widget _buildReviewsRow2() {
    return Padding(
      padding: EdgeInsets.only(right: 6.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 40.adaptSize,
            width: 40.adaptSize,
            margin: EdgeInsets.only(bottom: 99.v),
            decoration: AppDecoration.outlineOnErrorContainer1.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder18,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgImage,
              height: 40.adaptSize,
              width: 40.adaptSize,
              alignment: Alignment.center,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_veronika".tr,
                    style: CustomTextStyles.titleMediumBlack90002SemiBold,
                  ),
                  SizedBox(height: 4.v),
                  CustomRatingBar(
                    initialRating: 0,
                  ),
                  SizedBox(height: 11.v),
                  SizedBox(
                    width: 268.h,
                    child: Text(
                      "msg_lorem_ipsum_dolor8".tr,
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodySmall!.copyWith(
                        height: 1.50,
                      ),
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
  Widget _buildReviewsRow3() {
    return Padding(
      padding: EdgeInsets.only(right: 6.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 40.adaptSize,
            width: 40.adaptSize,
            margin: EdgeInsets.only(bottom: 99.v),
            decoration: AppDecoration.outlineOnErrorContainer1.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder18,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgImage,
              height: 40.adaptSize,
              width: 40.adaptSize,
              alignment: Alignment.center,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_veronika".tr,
                    style: CustomTextStyles.titleMediumBlack90002SemiBold,
                  ),
                  SizedBox(height: 4.v),
                  CustomRatingBar(
                    initialRating: 0,
                  ),
                  SizedBox(height: 11.v),
                  SizedBox(
                    width: 268.h,
                    child: Text(
                      "msg_lorem_ipsum_dolor8".tr,
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodySmall!.copyWith(
                        height: 1.50,
                      ),
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
  Widget _buildReviewsPlaceholderRow() {
    return Padding(
      padding: EdgeInsets.only(right: 6.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 40.adaptSize,
            width: 40.adaptSize,
            margin: EdgeInsets.only(bottom: 99.v),
            decoration: AppDecoration.outlineOnErrorContainer1.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder18,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgImage,
              height: 40.adaptSize,
              width: 40.adaptSize,
              alignment: Alignment.center,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_veronika".tr,
                    style: CustomTextStyles.titleMediumBlack90002SemiBold,
                  ),
                  SizedBox(height: 4.v),
                  CustomRatingBar(
                    initialRating: 0,
                  ),
                  SizedBox(height: 11.v),
                  SizedBox(
                    width: 268.h,
                    child: Text(
                      "msg_lorem_ipsum_dolor8".tr,
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodySmall!.copyWith(
                        height: 1.50,
                      ),
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
