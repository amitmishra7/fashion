import '../history_screen/widgets/april06_item_widget.dart';
import 'controller/history_controller.dart';
import 'models/april06_item_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/presentation/cart_page/cart_page.dart';
import 'package:amit_s_application2/presentation/flash_sale_full_page/flash_sale_full_page.dart';
import 'package:amit_s_application2/presentation/full_profile_page/full_profile_page.dart';
import 'package:amit_s_application2/presentation/wishlist_page/wishlist_page.dart';
import 'package:amit_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:amit_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:amit_s_application2/widgets/app_bar/appbar_trailing_iconbutton_one.dart';
import 'package:amit_s_application2/widgets/app_bar/appbar_trailing_iconbutton_two.dart';
import 'package:amit_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:amit_s_application2/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class HistoryScreen extends GetWidget<HistoryController> {
  const HistoryScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          height: 609.v,
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  margin: EdgeInsets.only(
                    left: 139.h,
                    right: 93.h,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 27.h,
                    vertical: 4.v,
                  ),
                  decoration: AppDecoration.fillGray.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder11,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(height: 5.v),
                      Text(
                        "lbl_april_06".tr,
                        style: CustomTextStyles.labelLargeBlack90002,
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  margin: EdgeInsets.only(left: 249.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 12.h,
                    vertical: 2.v,
                  ),
                  decoration: AppDecoration.outlinePrimary4.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder11,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 1.v),
                      Text(
                        "lbl_review".tr,
                        style: CustomTextStyles.titleMediumPrimaryMedium16,
                      ),
                    ],
                  ),
                ),
              ),
              _buildApril06(),
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
      title: AppbarSubtitle(
        text: "lbl_history".tr,
        margin: EdgeInsets.only(left: 17.h),
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
  Widget _buildApril06() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(top: 20.v),
        child: Obx(
          () => ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 15.v,
              );
            },
            itemCount:
                controller.historyModelObj.value.april06ItemList.value.length,
            itemBuilder: (context, index) {
              April06ItemModel model =
                  controller.historyModelObj.value.april06ItemList.value[index];
              return April06ItemWidget(
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
