import '../shop_screen/widgets/ebdcfour_item_widget.dart';
import '../shop_screen/widgets/placeholderone_item_widget.dart';
import '../shop_screen/widgets/salebanner_item_widget.dart';
import '../shop_screen/widgets/userprofile1_item_widget.dart';
import '../shop_screen/widgets/userprofile2_item_widget.dart';
import '../shop_screen/widgets/view_item_widget.dart';
import '../shop_screen/widgets/viewhierarchy_item_widget.dart';
import 'controller/shop_controller.dart';
import 'models/ebdcfour_item_model.dart';
import 'models/placeholderone_item_model.dart';
import 'models/salebanner_item_model.dart';
import 'models/userprofile1_item_model.dart';
import 'models/userprofile2_item_model.dart';
import 'models/view_item_model.dart';
import 'models/viewhierarchy_item_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/presentation/cart_page/cart_page.dart';
import 'package:amit_s_application2/presentation/flash_sale_full_page/flash_sale_full_page.dart';
import 'package:amit_s_application2/presentation/full_profile_page/full_profile_page.dart';
import 'package:amit_s_application2/presentation/wishlist_page/wishlist_page.dart';
import 'package:amit_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:amit_s_application2/widgets/app_bar/appbar_title_searchview.dart';
import 'package:amit_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:amit_s_application2/widgets/custom_bottom_bar.dart';
import 'package:amit_s_application2/widgets/custom_icon_button.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class ShopScreen extends GetWidget<ShopController> {
  const ShopScreen({Key? key})
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
              SizedBox(height: 7.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      _buildSaleBanner(),
                      SizedBox(height: 10.v),
                      Obx(
                        () => SizedBox(
                          height: 10.v,
                          child: AnimatedSmoothIndicator(
                            activeIndex: controller.sliderIndex.value,
                            count: controller.shopModelObj.value
                                .salebannerItemList.value.length,
                            axisDirection: Axis.horizontal,
                            effect: ScrollingDotsEffect(
                              spacing: 10,
                              activeDotColor: appTheme.blue80001,
                              dotColor: appTheme.blue80001.withOpacity(0.42),
                              dotHeight: 10.v,
                              dotWidth: 10.h,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 19.v),
                      _buildTitle(),
                      SizedBox(height: 10.v),
                      _buildViewHierarchy(),
                      SizedBox(height: 31.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 20.h),
                          child: Text(
                            "lbl_top_products".tr,
                            style: theme.textTheme.titleLarge,
                          ),
                        ),
                      ),
                      SizedBox(height: 10.v),
                      _buildPlaceholderOne(),
                      SizedBox(height: 9.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 26.h),
                          child: Text(
                            "lbl_dresses".tr,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.labelLarge,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 98.h),
                          child: Text(
                            "lbl_t_shirts".tr,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.labelLarge,
                          ),
                        ),
                      ),
                      Text(
                        "lbl_skirts".tr,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.labelLarge,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(right: 100.h),
                          child: Text(
                            "lbl_shoes".tr,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.labelLarge,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(right: 34.h),
                          child: Text(
                            "lbl_bags".tr,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.labelLarge,
                          ),
                        ),
                      ),
                      SizedBox(height: 40.v),
                      _buildTitle1(),
                      SizedBox(height: 12.v),
                      _buildUserProfile(),
                      SizedBox(height: 23.v),
                      _buildTitle2(),
                      SizedBox(height: 13.v),
                      _buildView(),
                      SizedBox(height: 24.v),
                      _buildTitle3(),
                      SizedBox(height: 10.v),
                      _buildUserProfile1(),
                      SizedBox(height: 29.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 20.h),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "lbl_just_for_you".tr,
                                style: theme.textTheme.titleLarge,
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgSignal,
                                height: 13.v,
                                width: 14.h,
                                margin: EdgeInsets.only(
                                  left: 7.h,
                                  top: 2.v,
                                  bottom: 8.v,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 12.v),
                      _buildEBDCFour(),
                      SizedBox(height: 6.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 20.h,
                            right: 68.h,
                          ),
                          child: Row(
                            children: [
                              _buildDescription(
                                loremIpsumDolor: "msg_lorem_ipsum_dolor".tr,
                                price: "lbl_17_00".tr,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 53.h),
                                child: _buildDescription(
                                  loremIpsumDolor: "msg_lorem_ipsum_dolor".tr,
                                  price: "lbl_17_00".tr,
                                ),
                              ),
                            ],
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
          AppbarTitleSearchview(
            margin: EdgeInsets.only(
              left: 19.h,
              bottom: 3.v,
            ),
            hintText: "lbl_search".tr,
            controller: controller.searchController,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSaleBanner() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Obx(
        () => CarouselSlider.builder(
          options: CarouselOptions(
            height: 130.v,
            initialPage: 0,
            autoPlay: true,
            viewportFraction: 1.0,
            enableInfiniteScroll: false,
            scrollDirection: Axis.horizontal,
            onPageChanged: (
              index,
              reason,
            ) {
              controller.sliderIndex.value = index;
            },
          ),
          itemCount:
              controller.shopModelObj.value.salebannerItemList.value.length,
          itemBuilder: (context, index, realIndex) {
            SalebannerItemModel model =
                controller.shopModelObj.value.salebannerItemList.value[index];
            return SalebannerItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTitle() {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 24.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 7.v),
            child: Text(
              "lbl_categories".tr,
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
  Widget _buildViewHierarchy() {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 24.h,
      ),
      child: Obx(
        () => GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 193.v,
            crossAxisCount: 2,
            mainAxisSpacing: 5.h,
            crossAxisSpacing: 5.h,
          ),
          physics: NeverScrollableScrollPhysics(),
          itemCount:
              controller.shopModelObj.value.viewhierarchyItemList.value.length,
          itemBuilder: (context, index) {
            ViewhierarchyItemModel model = controller
                .shopModelObj.value.viewhierarchyItemList.value[index];
            return ViewhierarchyItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPlaceholderOne() {
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
              width: 9.h,
            );
          },
          itemCount:
              controller.shopModelObj.value.placeholderoneItemList.value.length,
          itemBuilder: (context, index) {
            PlaceholderoneItemModel model = controller
                .shopModelObj.value.placeholderoneItemList.value[index];
            return PlaceholderoneItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTitle1() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 19.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 5.v),
            child: Text(
              "lbl_new_items".tr,
              style: theme.textTheme.titleLarge,
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 6.v,
              bottom: 5.v,
            ),
            child: Text(
              "lbl_see_all".tr,
              style: CustomTextStyles.titleSmall15_1,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 13.h),
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
                controller.shopModelObj.value.userprofile1ItemList.value.length,
            itemBuilder: (context, index) {
              Userprofile1ItemModel model = controller
                  .shopModelObj.value.userprofile1ItemList.value[index];
              return Userprofile1ItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTitle2() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 3.v),
            child: Text(
              "lbl_flash_sale".tr,
              style: theme.textTheme.titleLarge,
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgClock,
            height: 19.v,
            width: 17.h,
            margin: EdgeInsets.only(
              top: 3.v,
              bottom: 5.v,
            ),
          ),
          Container(
            width: 30.h,
            margin: EdgeInsets.only(
              left: 10.h,
              bottom: 1.v,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 4.h,
              vertical: 1.v,
            ),
            decoration: AppDecoration.fillGray10001.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder7,
            ),
            child: Text(
              "lbl_00".tr,
              style: theme.textTheme.titleMedium,
            ),
          ),
          Container(
            width: 30.h,
            margin: EdgeInsets.only(
              left: 2.h,
              bottom: 1.v,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 5.h,
              vertical: 1.v,
            ),
            decoration: AppDecoration.fillGray10001.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder7,
            ),
            child: Text(
              "lbl_36".tr,
              style: theme.textTheme.titleMedium,
            ),
          ),
          Container(
            width: 30.h,
            margin: EdgeInsets.only(
              left: 2.h,
              bottom: 1.v,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 5.h,
              vertical: 1.v,
            ),
            decoration: AppDecoration.fillGray10001.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder7,
            ),
            child: Text(
              "lbl_58".tr,
              style: theme.textTheme.titleMedium,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildView() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Obx(
        () => GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 115.v,
            crossAxisCount: 3,
            mainAxisSpacing: 4.h,
            crossAxisSpacing: 4.h,
          ),
          physics: NeverScrollableScrollPhysics(),
          itemCount: controller.shopModelObj.value.viewItemList.value.length,
          itemBuilder: (context, index) {
            ViewItemModel model =
                controller.shopModelObj.value.viewItemList.value[index];
            return ViewItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTitle3() {
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
  Widget _buildUserProfile1() {
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
            itemCount:
                controller.shopModelObj.value.userprofile2ItemList.value.length,
            itemBuilder: (context, index) {
              Userprofile2ItemModel model = controller
                  .shopModelObj.value.userprofile2ItemList.value[index];
              return Userprofile2ItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEBDCFour() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Obx(
        () => GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 246.v,
            crossAxisCount: 2,
            mainAxisSpacing: 5.h,
            crossAxisSpacing: 5.h,
          ),
          physics: NeverScrollableScrollPhysics(),
          itemCount:
              controller.shopModelObj.value.ebdcfourItemList.value.length,
          itemBuilder: (context, index) {
            EbdcfourItemModel model =
                controller.shopModelObj.value.ebdcfourItemList.value[index];
            return EbdcfourItemWidget(
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

  /// Common widget
  Widget _buildDescription({
    required String loremIpsumDolor,
    required String price,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 116.h,
          child: Text(
            loremIpsumDolor,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.bodySmall!.copyWith(
              color: appTheme.black90002,
              height: 1.33,
            ),
          ),
        ),
        SizedBox(height: 2.v),
        Text(
          price,
          style: theme.textTheme.titleMedium!.copyWith(
            color: appTheme.gray90001,
          ),
        ),
      ],
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
