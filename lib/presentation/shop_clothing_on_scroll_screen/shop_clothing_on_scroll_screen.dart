import '../shop_clothing_on_scroll_screen/widgets/dynamictext_item_widget.dart';
import 'controller/shop_clothing_on_scroll_controller.dart';
import 'models/dynamictext_item_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/presentation/cart_page/cart_page.dart';
import 'package:amit_s_application2/presentation/flash_sale_full_page/flash_sale_full_page.dart';
import 'package:amit_s_application2/presentation/full_profile_page/full_profile_page.dart';
import 'package:amit_s_application2/presentation/wishlist_page/wishlist_page.dart';
import 'package:amit_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:amit_s_application2/widgets/app_bar/appbar_title_searchview_two.dart';
import 'package:amit_s_application2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:amit_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:amit_s_application2/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ShopClothingOnScrollScreen
    extends GetWidget<ShopClothingOnScrollController> {
  const ShopClothingOnScrollScreen({Key? key})
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildDaddefeThirtyFour(),
              SizedBox(height: 6.v),
              _buildDynamicText(),
              SizedBox(height: 6.v),
              Padding(
                padding: EdgeInsets.only(right: 48.h),
                child: Row(
                  children: [
                    SizedBox(
                      width: 116.h,
                      child: Text(
                        "msg_lorem_ipsum_dolor".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.bodySmall!.copyWith(
                          height: 1.33,
                        ),
                      ),
                    ),
                    Container(
                      width: 116.h,
                      margin: EdgeInsets.only(left: 53.h),
                      child: Text(
                        "msg_lorem_ipsum_dolor".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.bodySmall!.copyWith(
                          height: 1.33,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 4.v),
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
        bottomNavigationBar: _buildBottomBar(),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 51.v,
      title: Padding(
        padding: EdgeInsets.only(left: 20.h),
        child: Row(
          children: [
            AppbarTitle(
              text: "lbl_shop".tr,
              margin: EdgeInsets.only(top: 6.v),
            ),
            AppbarTitleSearchviewTwo(
              margin: EdgeInsets.only(
                left: 19.h,
                bottom: 3.v,
              ),
              hintText: "lbl_clothing".tr,
              controller: controller.searchController,
            ),
          ],
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgFilterIcon,
          margin: EdgeInsets.fromLTRB(12.h, 6.v, 20.h, 20.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildDaddefeThirtyFour() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildPlaceholder01(
          imageTwo: ImageConstant.img32eb245aE30d4,
        ),
        _buildPlaceholder01(
          imageTwo: ImageConstant.img92caf77e01b54,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildDynamicText() {
    return Obx(
      () => GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 59.v,
          crossAxisCount: 2,
          mainAxisSpacing: 53.h,
          crossAxisSpacing: 53.h,
        ),
        physics: NeverScrollableScrollPhysics(),
        itemCount: controller.shopClothingOnScrollModelObj.value
            .dynamictextItemList.value.length,
        itemBuilder: (context, index) {
          DynamictextItemModel model = controller.shopClothingOnScrollModelObj
              .value.dynamictextItemList.value[index];
          return DynamictextItemWidget(
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

  /// Common widget
  Widget _buildPlaceholder01({required String imageTwo}) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.all(0),
      color: theme.colorScheme.onErrorContainer.withOpacity(1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.circleBorder11,
      ),
      child: Container(
        height: 181.v,
        width: 165.h,
        padding: EdgeInsets.all(5.h),
        decoration: AppDecoration.outlineBlack900023.copyWith(
          borderRadius: BorderRadiusStyle.circleBorder11,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.img7de82ade04de4,
              height: 171.v,
              width: 155.h,
              radius: BorderRadius.circular(
                5.h,
              ),
              alignment: Alignment.center,
            ),
            CustomImageView(
              imagePath: imageTwo,
              height: 171.v,
              width: 155.h,
              radius: BorderRadius.circular(
                5.h,
              ),
              alignment: Alignment.center,
            ),
          ],
        ),
      ),
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
