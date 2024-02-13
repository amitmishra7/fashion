import '../shop_clothing_screen/widgets/ebeedfour_item_widget.dart';
import '../shop_clothing_screen/widgets/viewhierarchy1_item_widget.dart';
import 'controller/shop_clothing_controller.dart';
import 'models/ebeedfour_item_model.dart';
import 'models/viewhierarchy1_item_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/presentation/cart_page/cart_page.dart';
import 'package:amit_s_application2/presentation/flash_sale_full_page/flash_sale_full_page.dart';
import 'package:amit_s_application2/presentation/full_profile_page/full_profile_page.dart';
import 'package:amit_s_application2/presentation/wishlist_page/wishlist_page.dart';
import 'package:amit_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:amit_s_application2/widgets/app_bar/appbar_title_searchview_one.dart';
import 'package:amit_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:amit_s_application2/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ShopClothingScreen extends GetWidget<ShopClothingController> {
  const ShopClothingScreen({Key? key})
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
              SizedBox(height: 13.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildViewHierarchy(),
                        SizedBox(height: 24.v),
                        _buildTitle(),
                        SizedBox(height: 12.v),
                        _buildEbeedFour(),
                        SizedBox(height: 5.v),
                        Padding(
                          padding: EdgeInsets.only(right: 48.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "msg_lorem_ipsum_dolor".tr,
                                style: theme.textTheme.bodySmall,
                              ),
                              Text(
                                "msg_lorem_ipsum_dolor".tr,
                                style: theme.textTheme.bodySmall,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20.v),
                        Padding(
                          padding: EdgeInsets.only(right: 113.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "lbl_17_00".tr,
                                style: theme.textTheme.titleMedium,
                              ),
                              Text(
                                "lbl_17_00".tr,
                                style: theme.textTheme.titleMedium,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
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
      centerTitle: true,
      title: Row(
        children: [
          AppbarTitle(
            text: "lbl_shop".tr,
            margin: EdgeInsets.only(top: 6.v),
          ),
          AppbarTitleSearchviewOne(
            margin: EdgeInsets.only(
              left: 19.h,
              bottom: 3.v,
            ),
            hintText: "lbl_clothing".tr,
            controller: controller.searchController,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildViewHierarchy() {
    return Obx(
      () => GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 86.v,
          crossAxisCount: 5,
          mainAxisSpacing: 9.h,
          crossAxisSpacing: 9.h,
        ),
        physics: NeverScrollableScrollPhysics(),
        itemCount: controller
            .shopClothingModelObj.value.viewhierarchy1ItemList.value.length,
        itemBuilder: (context, index) {
          Viewhierarchy1ItemModel model = controller
              .shopClothingModelObj.value.viewhierarchy1ItemList.value[index];
          return Viewhierarchy1ItemWidget(
            model,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTitle() {
    return Padding(
      padding: EdgeInsets.only(right: 5.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 2.v),
            child: Text(
              "lbl_all_items".tr,
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
  Widget _buildEbeedFour() {
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
            .shopClothingModelObj.value.ebeedfourItemList.value.length,
        itemBuilder: (context, index) {
          EbeedfourItemModel model = controller
              .shopClothingModelObj.value.ebeedfourItemList.value[index];
          return EbeedfourItemWidget(
            model,
          );
        },
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
