import '../profile_reward_screen/widgets/placeholderone2_item_widget.dart';
import '../profile_reward_screen/widgets/stack1_item_widget.dart';
import 'controller/profile_reward_controller.dart';
import 'models/placeholderone2_item_model.dart';
import 'models/stack1_item_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/presentation/cart_page/cart_page.dart';
import 'package:amit_s_application2/presentation/flash_sale_full_page/flash_sale_full_page.dart';
import 'package:amit_s_application2/presentation/full_profile_page/full_profile_page.dart';
import 'package:amit_s_application2/presentation/wishlist_page/wishlist_page.dart';
import 'package:amit_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:amit_s_application2/widgets/app_bar/appbar_title_button.dart';
import 'package:amit_s_application2/widgets/app_bar/appbar_trailing_iconbutton_one.dart';
import 'package:amit_s_application2/widgets/app_bar/appbar_trailing_iconbutton_two.dart';
import 'package:amit_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:amit_s_application2/widgets/custom_bottom_bar.dart';
import 'package:amit_s_application2/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ProfileRewardScreen extends GetWidget<ProfileRewardController> {
  const ProfileRewardScreen({Key? key})
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
          padding: EdgeInsets.symmetric(vertical: 13.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20.h),
                child: Text(
                  "lbl_hello_romina".tr,
                  style: theme.textTheme.headlineMedium,
                ),
              ),
              SizedBox(height: 12.v),
              _buildReward(),
              SizedBox(height: 22.v),
              Padding(
                padding: EdgeInsets.only(left: 20.h),
                child: Text(
                  "lbl_recently_viewed".tr,
                  style: theme.textTheme.titleLarge,
                ),
              ),
              SizedBox(height: 10.v),
              _buildPlaceholderOne(),
              SizedBox(height: 31.v),
              Padding(
                padding: EdgeInsets.only(left: 20.h),
                child: Text(
                  "lbl_my_orders".tr,
                  style: theme.textTheme.titleLarge,
                ),
              ),
              SizedBox(height: 10.v),
              _buildToPay(),
              SizedBox(height: 29.v),
              Padding(
                padding: EdgeInsets.only(left: 20.h),
                child: Text(
                  "lbl_stories".tr,
                  style: theme.textTheme.titleLarge,
                ),
              ),
              SizedBox(height: 14.v),
              _buildStack(),
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
      leadingWidth: 64.h,
      leading: Container(
        margin: EdgeInsets.only(
          left: 24.h,
          top: 8.v,
          bottom: 8.v,
        ),
        decoration: AppDecoration.outlineOnErrorContainer1.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder18,
        ),
        child: AppbarImage(
          imagePath: ImageConstant.imgImage,
        ),
      ),
      title: AppbarTitleButton(
        margin: EdgeInsets.only(left: 16.h),
      ),
      actions: [
        AppbarTrailingIconbuttonTwo(
          imagePath: ImageConstant.imgIcon,
          margin: EdgeInsets.only(
            left: 20.h,
            top: 11.v,
            right: 10.h,
          ),
        ),
        AppbarTrailingIconbuttonOne(
          imagePath: ImageConstant.imgEllispse01Indigo50,
          margin: EdgeInsets.only(
            left: 11.h,
            top: 11.v,
            right: 10.h,
          ),
        ),
        AppbarTrailingIconbuttonOne(
          imagePath: ImageConstant.imgEllispse01Indigo50,
          margin: EdgeInsets.only(
            left: 10.h,
            top: 11.v,
            right: 30.h,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildReward() {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(
          left: 20.h,
          right: 24.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              margin: EdgeInsets.all(0),
              color: theme.colorScheme.onErrorContainer.withOpacity(1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusStyle.circleBorder35,
              ),
              child: Container(
                height: 70.adaptSize,
                width: 70.adaptSize,
                padding: EdgeInsets.all(4.h),
                decoration: AppDecoration.outlineBlack900027.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder35,
                ),
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    CustomIconButton(
                      height: 60.adaptSize,
                      width: 60.adaptSize,
                      padding: EdgeInsets.all(17.h),
                      decoration: IconButtonStyleHelper.outlinePrimary,
                      alignment: Alignment.center,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgFavoritePrimary,
                      ),
                    ),
                    CustomIconButton(
                      height: 22.adaptSize,
                      width: 22.adaptSize,
                      padding: EdgeInsets.all(6.h),
                      decoration: IconButtonStyleHelper.outlineOnErrorContainer,
                      alignment: Alignment.topRight,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgIconFeatherCheck,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  left: 15.h,
                  top: 9.v,
                  bottom: 6.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "msg_you_just_got_a_reward".tr,
                      style: theme.textTheme.titleSmall,
                    ),
                    SizedBox(height: 4.v),
                    SizedBox(
                      width: 245.h,
                      child: Text(
                        "msg_lorem_ipsum_dolor10".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodySmall11.copyWith(
                          height: 1.45,
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
    );
  }

  /// Section Widget
  Widget _buildPlaceholderOne() {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
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
                width: 9.h,
              );
            },
            itemCount: controller.profileRewardModelObj.value
                .placeholderone2ItemList.value.length,
            itemBuilder: (context, index) {
              Placeholderone2ItemModel model = controller.profileRewardModelObj
                  .value.placeholderone2ItemList.value[index];
              return Placeholderone2ItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildToPay() {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 86.h,
              margin: EdgeInsets.only(top: 2.v),
              padding: EdgeInsets.symmetric(
                horizontal: 18.h,
                vertical: 5.v,
              ),
              decoration: AppDecoration.fillIndigo.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder15,
              ),
              child: Text(
                "lbl_to_pay".tr,
                style: CustomTextStyles.titleMediumBlue80001,
              ),
            ),
            Container(
              height: 37.v,
              width: 122.h,
              margin: EdgeInsets.only(left: 8.h),
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 14.adaptSize,
                      width: 14.adaptSize,
                      decoration: BoxDecoration(
                        color: appTheme.greenA700,
                        borderRadius: BorderRadius.circular(
                          7.h,
                        ),
                        border: Border.all(
                          color:
                              theme.colorScheme.onErrorContainer.withOpacity(1),
                          width: 2.h,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      width: 118.h,
                      padding: EdgeInsets.symmetric(
                        horizontal: 19.h,
                        vertical: 7.v,
                      ),
                      decoration: AppDecoration.fillIndigo.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder15,
                      ),
                      child: Text(
                        "lbl_to_recieve".tr,
                        style: CustomTextStyles.titleMediumBlue80001,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 116.h,
              margin: EdgeInsets.only(
                left: 3.h,
                top: 2.v,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 20.h,
                vertical: 7.v,
              ),
              decoration: AppDecoration.fillIndigo.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder15,
              ),
              child: Text(
                "lbl_to_review".tr,
                style: CustomTextStyles.titleMediumBlue80001,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildStack() {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 175.v,
        child: Obx(
          () => ListView.separated(
            padding: EdgeInsets.only(left: 20.h),
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
                .profileRewardModelObj.value.stack1ItemList.value.length,
            itemBuilder: (context, index) {
              Stack1ItemModel model = controller
                  .profileRewardModelObj.value.stack1ItemList.value[index];
              return Stack1ItemWidget(
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
