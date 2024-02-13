import '../recently_viewed_screen/widgets/recentlyviewed1_item_widget.dart';
import 'controller/recently_viewed_controller.dart';
import 'models/recentlyviewed1_item_model.dart';
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
class RecentlyViewedScreen extends GetWidget<RecentlyViewedController> {
  const RecentlyViewedScreen({Key? key})
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
              SizedBox(height: 1.v),
              _buildRecentOrders(),
              SizedBox(height: 20.v),
              _buildRecentlyViewed(),
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
  Widget _buildRecentOrders() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 4.h,
            vertical: 3.v,
          ),
          decoration: AppDecoration.fillIndigo.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder15,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 4.v),
                child: Text(
                  "lbl_today".tr,
                  style: CustomTextStyles.titleSmallPrimary15,
                ),
              ),
              Container(
                height: 22.adaptSize,
                width: 22.adaptSize,
                margin: EdgeInsets.only(left: 23.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 6.h,
                  vertical: 8.v,
                ),
                decoration: AppDecoration.outlineOnErrorContainer.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder11,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgIconFeatherCheck,
                  height: 4.v,
                  width: 6.h,
                  alignment: Alignment.centerRight,
                ),
              ),
            ],
          ),
        ),
        CustomElevatedButton(
          height: 30.v,
          width: 146.h,
          text: "lbl_yesterday".tr,
          buttonStyle: CustomButtonStyles.fillGrayTL15,
          buttonTextStyle: CustomTextStyles.titleSmallBlack90002Medium15,
        ),
        CustomIconButton(
          height: 30.adaptSize,
          width: 30.adaptSize,
          padding: EdgeInsets.all(7.h),
          decoration: IconButtonStyleHelper.outlineBlueATL15,
          child: CustomImageView(
            imagePath: ImageConstant.imgArrowDownOnerrorcontainer,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildRecentlyViewed() {
    return Expanded(
      child: Obx(
        () => GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 246.v,
            crossAxisCount: 2,
            mainAxisSpacing: 5.h,
            crossAxisSpacing: 5.h,
          ),
          physics: BouncingScrollPhysics(),
          itemCount: controller.recentlyViewedModelObj.value
              .recentlyviewed1ItemList.value.length,
          itemBuilder: (context, index) {
            Recentlyviewed1ItemModel model = controller.recentlyViewedModelObj
                .value.recentlyviewed1ItemList.value[index];
            return Recentlyviewed1ItemWidget(
              model,
            );
          },
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
