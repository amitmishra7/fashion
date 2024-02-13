import '../wishlist_empty_screen/widgets/ellipselist_item_widget.dart';
import '../wishlist_empty_screen/widgets/userprofile5_item_widget.dart';
import 'controller/wishlist_empty_controller.dart';
import 'models/ellipselist_item_model.dart';
import 'models/userprofile5_item_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/presentation/cart_page/cart_page.dart';
import 'package:amit_s_application2/presentation/flash_sale_full_page/flash_sale_full_page.dart';
import 'package:amit_s_application2/presentation/full_profile_page/full_profile_page.dart';
import 'package:amit_s_application2/presentation/wishlist_page/wishlist_page.dart';
import 'package:amit_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:amit_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:amit_s_application2/widgets/custom_bottom_bar.dart';
import 'package:amit_s_application2/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class WishlistEmptyScreen extends GetWidget<WishlistEmptyController> {
  const WishlistEmptyScreen({Key? key})
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
          padding: EdgeInsets.symmetric(vertical: 6.v),
          child: Column(
            children: [
              _buildRecentlyViewed(),
              SizedBox(height: 26.v),
              _buildEllipseList(),
              SizedBox(height: 69.v),
              Container(
                height: 134.adaptSize,
                width: 134.adaptSize,
                padding: EdgeInsets.symmetric(
                  horizontal: 32.h,
                  vertical: 31.v,
                ),
                decoration: AppDecoration.outlineBlack.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder67,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgLayer1,
                  height: 70.adaptSize,
                  width: 70.adaptSize,
                  alignment: Alignment.center,
                ),
              ),
              Spacer(),
              _buildMostPopularTitle(),
              SizedBox(height: 10.v),
              _buildUserProfile(),
              SizedBox(height: 13.v),
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
        text: "lbl_wishlist".tr,
        margin: EdgeInsets.only(left: 20.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildRecentlyViewed() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 7.v),
            child: Text(
              "lbl_recently_viewed".tr,
              style: theme.textTheme.titleLarge,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 2.v),
            child: CustomIconButton(
              height: 30.adaptSize,
              width: 30.adaptSize,
              padding: EdgeInsets.all(7.h),
              decoration: IconButtonStyleHelper.fillPrimary,
              child: CustomImageView(
                imagePath: ImageConstant.imgArrowRight,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEllipseList() {
    return SizedBox(
      height: 60.v,
      child: Obx(
        () => ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 1.h,
            );
          },
          itemCount: controller
              .wishlistEmptyModelObj.value.ellipselistItemList.value.length,
          itemBuilder: (context, index) {
            EllipselistItemModel model = controller
                .wishlistEmptyModelObj.value.ellipselistItemList.value[index];
            return EllipselistItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMostPopularTitle() {
    return Padding(
      padding: EdgeInsets.only(
        left: 20.h,
        right: 15.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 7.v),
            child: Text(
              "lbl_most_popular".tr,
              style: theme.textTheme.titleLarge,
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 6.v,
              bottom: 7.v,
            ),
            child: Text(
              "lbl_see_all".tr,
              style: CustomTextStyles.titleSmall15_1,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 13.h,
              bottom: 2.v,
            ),
            child: CustomIconButton(
              height: 30.adaptSize,
              width: 30.adaptSize,
              padding: EdgeInsets.all(7.h),
              decoration: IconButtonStyleHelper.fillPrimary,
              child: CustomImageView(
                imagePath: ImageConstant.imgArrowRight,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile() {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 140.v,
        child: Obx(
          () => ListView.separated(
            padding: EdgeInsets.only(left: 20.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 6.h,
              );
            },
            itemCount: controller
                .wishlistEmptyModelObj.value.userprofile5ItemList.value.length,
            itemBuilder: (context, index) {
              Userprofile5ItemModel model = controller.wishlistEmptyModelObj
                  .value.userprofile5ItemList.value[index];
              return Userprofile5ItemWidget(
                model,
              );
            },
          ),
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
