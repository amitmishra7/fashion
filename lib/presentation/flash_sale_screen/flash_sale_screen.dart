import '../flash_sale_screen/widgets/dynamicviewgrid_item_widget.dart';
import 'controller/flash_sale_controller.dart';
import 'models/dynamicviewgrid_item_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/presentation/cart_page/cart_page.dart';
import 'package:amit_s_application2/presentation/flash_sale_full_page/flash_sale_full_page.dart';
import 'package:amit_s_application2/presentation/full_profile_page/full_profile_page.dart';
import 'package:amit_s_application2/presentation/wishlist_page/wishlist_page.dart';
import 'package:amit_s_application2/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:amit_s_application2/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:amit_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:amit_s_application2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:amit_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:amit_s_application2/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class FlashSaleScreen extends GetWidget<FlashSaleController> {
  const FlashSaleScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SizedBox(
          height: 619.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgGroup26,
                height: 202.v,
                width: 354.h,
                alignment: Alignment.topRight,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.h),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _buildOfferRow(),
                      SizedBox(height: 13.v),
                      _buildDynamicViewGrid(),
                    ],
                  ),
                ),
              ),
              _buildDiscountsStack(),
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
      height: 64.v,
      title: Padding(
        padding: EdgeInsets.only(left: 20.h),
        child: Column(
          children: [
            AppbarTitle(
              text: "lbl_flash_sale".tr,
              margin: EdgeInsets.only(right: 6.h),
            ),
            SizedBox(height: 1.v),
            AppbarSubtitleFour(
              text: "msg_choose_your_discount".tr,
            ),
          ],
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgClockOnerrorcontainer,
          margin: EdgeInsets.fromLTRB(20.h, 4.v, 22.h, 4.v),
        ),
        AppbarSubtitleThree(
          text: "lbl_00".tr,
          margin: EdgeInsets.only(
            left: 10.h,
            top: 1.v,
            right: 22.h,
          ),
        ),
        AppbarSubtitleThree(
          text: "lbl_36".tr,
          margin: EdgeInsets.only(
            left: 2.h,
            top: 1.v,
            right: 22.h,
          ),
        ),
        AppbarSubtitleThree(
          text: "lbl_58".tr,
          margin: EdgeInsets.only(
            left: 2.h,
            top: 1.v,
            right: 42.h,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildOfferRow() {
    return Padding(
      padding: EdgeInsets.only(right: 5.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 2.v),
            child: Text(
              "lbl_20_discount".tr,
              style: theme.textTheme.titleLarge,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgFilterIcon,
            height: 25.adaptSize,
            width: 25.adaptSize,
            margin: EdgeInsets.only(bottom: 2.v),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDynamicViewGrid() {
    return Obx(
      () => GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 246.v,
          crossAxisCount: 2,
          mainAxisSpacing: 5.h,
          crossAxisSpacing: 5.h,
        ),
        physics: NeverScrollableScrollPhysics(),
        itemCount: controller
            .flashSaleModelObj.value.dynamicviewgridItemList.value.length,
        itemBuilder: (context, index) {
          DynamicviewgridItemModel model = controller
              .flashSaleModelObj.value.dynamicviewgridItemList.value[index];
          return DynamicviewgridItemWidget(
            model,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildDiscountsStack() {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: 40.v,
        width: 335.h,
        margin: EdgeInsets.only(top: 15.v),
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                margin: EdgeInsets.only(
                  top: 7.v,
                  bottom: 5.v,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 4.v,
                ),
                decoration: AppDecoration.fillGray.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder7,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "lbl_all".tr,
                      style: CustomTextStyles.labelLargeBlack90002Bold,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 28.h),
                      child: Text(
                        "lbl_10".tr,
                        style: CustomTextStyles.labelLargeBlack90002Bold,
                      ),
                    ),
                    Spacer(
                      flex: 75,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 2.v),
                      child: Text(
                        "lbl_30".tr,
                        style: CustomTextStyles.labelLargeBlack90002Bold,
                      ),
                    ),
                    Spacer(
                      flex: 25,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 2.v),
                      child: Text(
                        "lbl_40".tr,
                        style: CustomTextStyles.labelLargeBlack90002Bold,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 30.h,
                        top: 2.v,
                      ),
                      child: Text(
                        "lbl_50".tr,
                        style: CustomTextStyles.labelLargeBlack90002Bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                height: 40.v,
                width: 60.h,
                margin: EdgeInsets.only(left: 104.h),
                padding: EdgeInsets.symmetric(horizontal: 22.h),
                decoration: AppDecoration.outlinePrimary1.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder18,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgArrowDown,
                  height: 9.v,
                  width: 11.h,
                  alignment: Alignment.topRight,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 118.h,
                  bottom: 9.v,
                ),
                child: Text(
                  "lbl_202".tr,
                  style: CustomTextStyles.titleMediumPrimaryExtraBold,
                ),
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
