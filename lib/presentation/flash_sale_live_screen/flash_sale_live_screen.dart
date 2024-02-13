import '../flash_sale_live_screen/widgets/productcard_item_widget.dart';
import 'controller/flash_sale_live_controller.dart';
import 'models/productcard_item_model.dart';
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
class FlashSaleLiveScreen extends GetWidget<FlashSaleLiveController> {
  const FlashSaleLiveScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              _buildBubblesStack(),
              SizedBox(height: 27.v),
              _buildScrollView(),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(),
      ),
    );
  }

  /// Section Widget
  Widget _buildBubblesStack() {
    return SizedBox(
      height: 296.v,
      width: 355.h,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGroup26,
            height: 202.v,
            width: 354.h,
            alignment: Alignment.topCenter,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              margin: EdgeInsets.only(right: 19.h),
              decoration: AppDecoration.outlineGray.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder11,
              ),
              child: Card(
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                margin: EdgeInsets.all(0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusStyle.circleBorder11,
                ),
                child: Container(
                  height: 160.v,
                  width: 335.h,
                  decoration: AppDecoration.outlineBlack900022.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder11,
                  ),
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgA1710791E63d4,
                        height: 160.v,
                        width: 335.h,
                        radius: BorderRadius.circular(
                          9.h,
                        ),
                        alignment: Alignment.center,
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 170.h,
                            right: 6.h,
                            bottom: 5.v,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Opacity(
                                opacity: 0.56,
                                child: CustomImageView(
                                  imagePath:
                                      ImageConstant.imgUserOnerrorcontainer,
                                  height: 17.v,
                                  width: 12.h,
                                  radius: BorderRadius.circular(
                                    2.h,
                                  ),
                                ),
                              ),
                              SizedBox(height: 46.v),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                  width: 41.h,
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 6.h,
                                    vertical: 1.v,
                                  ),
                                  decoration: AppDecoration.fillGreenA.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder4,
                                  ),
                                  child: Text(
                                    "lbl_live".tr,
                                    style: CustomTextStyles
                                        .titleSmallOnErrorContainer,
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
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              height: 40.v,
              width: 335.h,
              margin: EdgeInsets.only(top: 80.v),
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
          ),
          CustomAppBar(
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
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildScrollView() {
    return Expanded(
      child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 8.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_20_discount".tr,
                      style: theme.textTheme.titleLarge,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgSettingsOnerrorcontainer,
                      height: 16.v,
                      width: 18.h,
                      margin: EdgeInsets.only(bottom: 6.v),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 13.v),
              Obx(
                () => GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 246.v,
                    crossAxisCount: 2,
                    mainAxisSpacing: 5.h,
                    crossAxisSpacing: 5.h,
                  ),
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: controller.flashSaleLiveModelObj.value
                      .productcardItemList.value.length,
                  itemBuilder: (context, index) {
                    ProductcardItemModel model = controller
                        .flashSaleLiveModelObj
                        .value
                        .productcardItemList
                        .value[index];
                    return ProductcardItemWidget(
                      model,
                    );
                  },
                ),
              ),
              SizedBox(height: 6.v),
              Padding(
                padding: EdgeInsets.only(right: 27.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 16.h),
                      child: _buildDescriptionColumn(
                        loremIpsumDolor: "msg_lorem_ipsum_dolor".tr,
                        price: "lbl_16_00".tr,
                        price1: "lbl_20_00".tr,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: _buildDescriptionColumn(
                        loremIpsumDolor: "msg_lorem_ipsum_dolor".tr,
                        price: "lbl_16_00".tr,
                        price1: "lbl_20_00".tr,
                      ),
                    ),
                  ],
                ),
              ),
            ],
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

  /// Common widget
  Widget _buildDescriptionColumn({
    required String loremIpsumDolor,
    required String price,
    required String price1,
  }) {
    return Expanded(
      child: SizedBox(
        width: double.maxFinite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 138.h,
              child: Text(
                loremIpsumDolor,
                maxLines: null,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodySmall!.copyWith(
                  color: appTheme.black90002,
                  height: 1.33,
                ),
              ),
            ),
            SizedBox(height: 1.v),
            Text(
              price,
              style: theme.textTheme.titleMedium!.copyWith(
                color: appTheme.gray90001,
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(right: 36.h),
                child: Text(
                  price1,
                  style: CustomTextStyles.titleSmallRed200.copyWith(
                    decoration: TextDecoration.lineThrough,
                    color: appTheme.red200,
                  ),
                ),
              ),
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
