import '../search_screen/widgets/discover_item_widget.dart';
import '../search_screen/widgets/recommendations_item_widget.dart';
import '../search_screen/widgets/tags_item_widget.dart';
import 'controller/search_controller.dart';
import 'models/discover_item_model.dart';
import 'models/recommendations_item_model.dart';
import 'models/tags_item_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/presentation/cart_page/cart_page.dart';
import 'package:amit_s_application2/presentation/flash_sale_full_page/flash_sale_full_page.dart';
import 'package:amit_s_application2/presentation/full_profile_page/full_profile_page.dart';
import 'package:amit_s_application2/presentation/wishlist_page/wishlist_page.dart';
import 'package:amit_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:amit_s_application2/widgets/app_bar/appbar_title_searchview_three.dart';
import 'package:amit_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:amit_s_application2/widgets/custom_bottom_bar.dart';
import 'package:amit_s_application2/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart' hide SearchController;

// ignore_for_file: must_be_immutable
class SearchScreen extends GetWidget<SearchController> {
  const SearchScreen({Key? key})
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
          padding: EdgeInsets.symmetric(vertical: 11.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildSearchHistory(),
              SizedBox(height: 21.v),
              _buildTags(),
              SizedBox(height: 31.v),
              Padding(
                padding: EdgeInsets.only(left: 20.h),
                child: Text(
                  "lbl_recommendations".tr,
                  style: CustomTextStyles.titleMediumMedium,
                ),
              ),
              SizedBox(height: 26.v),
              _buildRecommendations(),
              SizedBox(height: 33.v),
              Padding(
                padding: EdgeInsets.only(left: 20.h),
                child: Text(
                  "lbl_discover".tr,
                  style: theme.textTheme.titleLarge,
                ),
              ),
              SizedBox(height: 8.v),
              _buildDiscover(),
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
      height: 46.v,
      centerTitle: true,
      title: Row(
        children: [
          AppbarTitle(
            text: "lbl_search".tr,
            margin: EdgeInsets.only(top: 3.v),
          ),
          AppbarTitleSearchviewThree(
            margin: EdgeInsets.only(left: 9.h),
            hintText: "",
            controller: controller.searchController,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSearchHistory() {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 9.v,
                bottom: 3.v,
              ),
              child: Text(
                "lbl_search_history".tr,
                style: CustomTextStyles.titleMediumMedium,
              ),
            ),
            CustomIconButton(
              height: 35.adaptSize,
              width: 35.adaptSize,
              padding: EdgeInsets.all(9.h),
              decoration: IconButtonStyleHelper.fillGray,
              child: CustomImageView(
                imagePath: ImageConstant.imgThumbsUp,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTags() {
    return Padding(
      padding: EdgeInsets.only(left: 20.h),
      child: Obx(
        () => Wrap(
          runSpacing: 6.v,
          spacing: 6.h,
          children: List<Widget>.generate(
            controller.searchModelObj.value.tagsItemList.value.length,
            (index) {
              TagsItemModel model =
                  controller.searchModelObj.value.tagsItemList.value[index];

              return TagsItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRecommendations() {
    return Padding(
      padding: EdgeInsets.only(left: 20.h),
      child: Obx(
        () => Wrap(
          runSpacing: 6.v,
          spacing: 6.h,
          children: List<Widget>.generate(
            controller
                .searchModelObj.value.recommendationsItemList.value.length,
            (index) {
              RecommendationsItemModel model = controller
                  .searchModelObj.value.recommendationsItemList.value[index];

              return RecommendationsItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildDiscover() {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 204.v,
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
            itemCount:
                controller.searchModelObj.value.discoverItemList.value.length,
            itemBuilder: (context, index) {
              DiscoverItemModel model =
                  controller.searchModelObj.value.discoverItemList.value[index];
              return DiscoverItemWidget(
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
