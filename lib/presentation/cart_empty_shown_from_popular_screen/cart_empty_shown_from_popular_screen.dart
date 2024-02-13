import '../cart_empty_shown_from_popular_screen/widgets/userprofile8_item_widget.dart';
import 'controller/cart_empty_shown_from_popular_controller.dart';
import 'models/userprofile8_item_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/presentation/cart_page/cart_page.dart';
import 'package:amit_s_application2/presentation/flash_sale_full_page/flash_sale_full_page.dart';
import 'package:amit_s_application2/presentation/full_profile_page/full_profile_page.dart';
import 'package:amit_s_application2/presentation/wishlist_page/wishlist_page.dart';
import 'package:amit_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:amit_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:amit_s_application2/widgets/custom_bottom_bar.dart';
import 'package:amit_s_application2/widgets/custom_elevated_button.dart';
import 'package:amit_s_application2/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class CartEmptyShownFromPopularScreen
    extends GetWidget<CartEmptyShownFromPopularController> {
  const CartEmptyShownFromPopularScreen({Key? key})
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
              SizedBox(height: 6.v),
              _buildShippingAddress(),
              SizedBox(height: 60.v),
              Container(
                height: 134.adaptSize,
                width: 134.adaptSize,
                padding: EdgeInsets.symmetric(
                  horizontal: 38.h,
                  vertical: 36.v,
                ),
                decoration: AppDecoration.outlineBlack.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder67,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgLocation,
                  height: 61.v,
                  width: 58.h,
                  alignment: Alignment.center,
                ),
              ),
              Spacer(),
              _buildTitle(),
              SizedBox(height: 10.v),
              _buildUserProfile(),
              SizedBox(height: 20.v),
              _buildTotal(),
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
      height: 44.v,
      title: Padding(
        padding: EdgeInsets.only(left: 20.h),
        child: Row(
          children: [
            AppbarTitle(
              text: "lbl_cart".tr,
            ),
            Container(
              height: 30.adaptSize,
              width: 30.adaptSize,
              margin: EdgeInsets.only(
                left: 7.h,
                bottom: 2.v,
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup1363,
                    height: 30.adaptSize,
                    width: 30.adaptSize,
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(9.h, 4.v, 9.h, 3.v),
                      child: Text(
                        "lbl_0".tr,
                        style: CustomTextStyles.titleMediumBlack9000218,
                      ),
                    ),
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
  Widget _buildShippingAddress() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder11,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 4.h,
              top: 4.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "msg_shipping_address".tr,
                  style: theme.textTheme.titleSmall,
                ),
                SizedBox(height: 5.v),
                SizedBox(
                  width: 233.h,
                  child: Text(
                    "msg_26_duong_so_2".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodySmall10.copyWith(
                      height: 1.50,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 23.v,
              bottom: 3.v,
            ),
            child: CustomIconButton(
              height: 30.adaptSize,
              width: 30.adaptSize,
              padding: EdgeInsets.all(7.h),
              decoration: IconButtonStyleHelper.fillBlueA,
              child: CustomImageView(
                imagePath: ImageConstant.imgTelevisionOnerrorcontainer,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTitle() {
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
            itemCount: controller.cartEmptyShownFromPopularModelObj.value
                .userprofile8ItemList.value.length,
            itemBuilder: (context, index) {
              Userprofile8ItemModel model = controller
                  .cartEmptyShownFromPopularModelObj
                  .value
                  .userprofile8ItemList
                  .value[index];
              return Userprofile8ItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTotal() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.fillGray,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 9.v,
              bottom: 6.v,
            ),
            child: Text(
              "lbl_total".tr,
              style: CustomTextStyles.titleLargeBlack90002,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 6.h,
              top: 10.v,
              bottom: 7.v,
            ),
            child: Text(
              "lbl_0_00".tr,
              style: CustomTextStyles.titleMedium18,
            ),
          ),
          Spacer(),
          CustomElevatedButton(
            width: 128.h,
            text: "lbl_checkout".tr,
            buttonStyle: CustomButtonStyles.fillOnErrorContainer,
            buttonTextStyle: CustomTextStyles.bodyLargeGray900,
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
