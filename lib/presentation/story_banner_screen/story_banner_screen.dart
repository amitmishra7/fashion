import '../story_banner_screen/widgets/salebanner1_item_widget.dart';
import 'controller/story_banner_controller.dart';
import 'models/salebanner1_item_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/presentation/cart_page/cart_page.dart';
import 'package:amit_s_application2/presentation/flash_sale_full_page/flash_sale_full_page.dart';
import 'package:amit_s_application2/presentation/full_profile_page/full_profile_page.dart';
import 'package:amit_s_application2/presentation/wishlist_page/wishlist_page.dart';
import 'package:amit_s_application2/widgets/custom_bottom_bar.dart';
import 'package:amit_s_application2/widgets/custom_elevated_button.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class StoryBannerScreen extends GetWidget<StoryBannerController> {
  const StoryBannerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 14.v,
          ),
          child: Column(
            children: [
              Container(
                decoration: AppDecoration.outlineBlack900022.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder11,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgD352639aF5804,
                  height: 423.v,
                  width: 335.h,
                  radius: BorderRadius.circular(
                    9.h,
                  ),
                ),
              ),
              SizedBox(height: 6.v),
              _buildSaleBanner(),
              SizedBox(height: 9.v),
              _buildCopy(),
              SizedBox(height: 16.v),
              Obx(
                () => SizedBox(
                  height: 10.v,
                  child: AnimatedSmoothIndicator(
                    activeIndex: controller.sliderIndex.value,
                    count: controller.storyBannerModelObj.value
                        .salebanner1ItemList.value.length,
                    axisDirection: Axis.horizontal,
                    effect: ScrollingDotsEffect(
                      spacing: 10,
                      activeDotColor: appTheme.blue10001,
                      dotColor: appTheme.blue80001,
                      dotHeight: 10.v,
                      dotWidth: 10.h,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 6.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(),
      ),
    );
  }

  /// Section Widget
  Widget _buildSaleBanner() {
    return Obx(
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
        itemCount: controller
            .storyBannerModelObj.value.salebanner1ItemList.value.length,
        itemBuilder: (context, index, realIndex) {
          Salebanner1ItemModel model = controller
              .storyBannerModelObj.value.salebanner1ItemList.value[index];
          return Salebanner1ItemWidget(
            model,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildCopy() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.h),
      padding: EdgeInsets.symmetric(
        horizontal: 7.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.outlineBlack900023.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder11,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 148.h,
            margin: EdgeInsets.only(
              left: 9.h,
              top: 2.v,
              bottom: 4.v,
            ),
            child: Text(
              "msg_lorem_ipsum_dolor3".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodySmall!.copyWith(
                height: 1.33,
              ),
            ),
          ),
          CustomElevatedButton(
            width: 120.h,
            text: "lbl_shop".tr,
            margin: EdgeInsets.only(left: 23.h),
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
