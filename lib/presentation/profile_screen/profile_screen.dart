import '../profile_screen/widgets/profile_item_widget.dart';
import '../profile_screen/widgets/recentlyviewed_item_widget.dart';
import 'controller/profile_controller.dart';
import 'models/profile_item_model.dart';
import 'models/recentlyviewed_item_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/presentation/cart_page/cart_page.dart';
import 'package:amit_s_application2/presentation/flash_sale_full_page/flash_sale_full_page.dart';
import 'package:amit_s_application2/presentation/full_profile_page/full_profile_page.dart';
import 'package:amit_s_application2/presentation/wishlist_page/wishlist_page.dart';
import 'package:amit_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:amit_s_application2/widgets/app_bar/appbar_title_button.dart';
import 'package:amit_s_application2/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:amit_s_application2/widgets/app_bar/appbar_trailing_iconbutton_one.dart';
import 'package:amit_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:amit_s_application2/widgets/custom_bottom_bar.dart';
import 'package:amit_s_application2/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ProfileScreen extends GetWidget<ProfileController> {
  const ProfileScreen({Key? key})
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
          padding: EdgeInsets.symmetric(vertical: 14.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20.h),
                child: Text(
                  "lbl_hello_romina2".tr,
                  style: theme.textTheme.headlineMedium,
                ),
              ),
              SizedBox(height: 12.v),
              _buildAnnouncement(),
              SizedBox(height: 22.v),
              Padding(
                padding: EdgeInsets.only(left: 20.h),
                child: Text(
                  "lbl_recently_viewed".tr,
                  style: theme.textTheme.titleLarge,
                ),
              ),
              SizedBox(height: 12.v),
              _buildRecentlyViewed(),
              SizedBox(height: 29.v),
              Padding(
                padding: EdgeInsets.only(left: 20.h),
                child: Text(
                  "lbl_my_orders".tr,
                  style: theme.textTheme.titleLarge,
                ),
              ),
              SizedBox(height: 10.v),
              _buildMyOrders(),
              SizedBox(height: 29.v),
              Padding(
                padding: EdgeInsets.only(left: 20.h),
                child: Text(
                  "lbl_stories".tr,
                  style: theme.textTheme.titleLarge,
                ),
              ),
              SizedBox(height: 8.v),
              _buildProfile(),
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
          imagePath: ImageConstant.imgImage40x40,
        ),
      ),
      title: AppbarTitleButton(
        margin: EdgeInsets.only(left: 16.h),
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgIcon,
          margin: EdgeInsets.only(
            left: 20.h,
            top: 11.v,
            right: 10.h,
          ),
        ),
        AppbarTrailingIconbuttonOne(
          imagePath: ImageConstant.imgMessagesIcon,
          margin: EdgeInsets.only(
            left: 11.h,
            top: 11.v,
            right: 10.h,
          ),
        ),
        AppbarTrailingIconbuttonOne(
          imagePath: ImageConstant.imgMessagesIcon,
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
  Widget _buildAnnouncement() {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.h),
        padding: EdgeInsets.symmetric(
          horizontal: 12.h,
          vertical: 7.v,
        ),
        decoration: AppDecoration.fillGray.copyWith(
          borderRadius: BorderRadiusStyle.circleBorder11,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 2.v),
            Padding(
              padding: EdgeInsets.only(left: 2.h),
              child: Text(
                "lbl_announcement".tr,
                style: theme.textTheme.titleSmall,
              ),
            ),
            SizedBox(height: 2.v),
            Padding(
              padding: EdgeInsets.only(left: 2.h),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      width: 244.h,
                      margin: EdgeInsets.only(top: 2.v),
                      child: Text(
                        "msg_lorem_ipsum_dolor4".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodySmall10.copyWith(
                          height: 1.50,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 34.h,
                      bottom: 2.v,
                    ),
                    child: CustomIconButton(
                      height: 30.adaptSize,
                      width: 30.adaptSize,
                      padding: EdgeInsets.all(7.h),
                      decoration: IconButtonStyleHelper.fillOnError,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgArrowRight,
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
  Widget _buildRecentlyViewed() {
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
                width: 1.h,
              );
            },
            itemCount: controller
                .profileModelObj.value.recentlyviewedItemList.value.length,
            itemBuilder: (context, index) {
              RecentlyviewedItemModel model = controller
                  .profileModelObj.value.recentlyviewedItemList.value[index];
              return RecentlyviewedItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMyOrders() {
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
                borderRadius: BorderRadiusStyle.roundedBorder18,
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
                        borderRadius: BorderRadiusStyle.roundedBorder18,
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
                borderRadius: BorderRadiusStyle.roundedBorder18,
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
  Widget _buildProfile() {
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
            itemCount:
                controller.profileModelObj.value.profileItemList.value.length,
            itemBuilder: (context, index) {
              ProfileItemModel model =
                  controller.profileModelObj.value.profileItemList.value[index];
              return ProfileItemWidget(
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
