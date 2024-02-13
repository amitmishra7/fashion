import '../product_screen/widgets/image_item_widget.dart';
import '../product_screen/widgets/productlist_item_widget.dart';
import 'controller/product_controller.dart';
import 'models/image_item_model.dart';
import 'models/productlist_item_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/widgets/custom_elevated_button.dart';
import 'package:amit_s_application2/widgets/custom_icon_button.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class ProductScreen extends GetWidget<ProductController> {
  const ProductScreen({Key? key})
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildImageSlider(),
              SizedBox(height: 18.v),
              _buildPriceRow(),
              SizedBox(height: 13.v),
              Container(
                width: 320.h,
                margin: EdgeInsets.only(
                  left: 20.h,
                  right: 34.h,
                ),
                child: Text(
                  "msg_lorem_ipsum_dolor6".tr,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyMedium!.copyWith(
                    height: 1.33,
                  ),
                ),
              ),
              SizedBox(height: 17.v),
              _buildTitleRow(),
              SizedBox(height: 11.v),
              _buildProductList(),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(),
      ),
    );
  }

  /// Section Widget
  Widget _buildImageSlider() {
    return SizedBox(
      height: 395.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Obx(
            () => CarouselSlider.builder(
              options: CarouselOptions(
                height: 395.v,
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
                  controller.productModelObj.value.imageItemList.value.length,
              itemBuilder: (context, index, realIndex) {
                ImageItemModel model =
                    controller.productModelObj.value.imageItemList.value[index];
                return ImageItemWidget(
                  model,
                );
              },
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Obx(
              () => Container(
                height: 10.v,
                margin: EdgeInsets.only(bottom: 10.v),
                child: AnimatedSmoothIndicator(
                  activeIndex: controller.sliderIndex.value,
                  count: controller
                      .productModelObj.value.imageItemList.value.length,
                  axisDirection: Axis.horizontal,
                  effect: ScrollingDotsEffect(
                    spacing: 10,
                    activeDotColor: appTheme.blueA70001,
                    dotColor: appTheme.blueA70001.withOpacity(0.2),
                    dotHeight: 10.v,
                    dotWidth: 10.h,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPriceRow() {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "lbl_17_00".tr,
              style: CustomTextStyles.headlineMediumBlack90002ExtraBold,
            ),
            CustomIconButton(
              height: 30.adaptSize,
              width: 30.adaptSize,
              padding: EdgeInsets.all(5.h),
              decoration: IconButtonStyleHelper.fillRed,
              child: CustomImageView(
                imagePath: ImageConstant.imgQuestion,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTitleRow() {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 2.v),
              child: Text(
                "lbl_variations".tr,
                style: CustomTextStyles.titleLargeBlack90002,
              ),
            ),
            Container(
              width: 54.h,
              margin: EdgeInsets.only(
                left: 9.h,
                top: 2.v,
                bottom: 3.v,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 13.h,
                vertical: 2.v,
              ),
              decoration: AppDecoration.fillGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder4,
              ),
              child: Text(
                "lbl_pink".tr,
                style: CustomTextStyles.titleSmallBlack90002,
              ),
            ),
            Container(
              width: 54.h,
              margin: EdgeInsets.only(
                left: 6.h,
                top: 2.v,
                bottom: 3.v,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 20.h,
                vertical: 2.v,
              ),
              decoration: AppDecoration.fillGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder4,
              ),
              child: Text(
                "lbl_m".tr,
                style: CustomTextStyles.titleSmallBlack90002,
              ),
            ),
            Spacer(),
            CustomIconButton(
              height: 30.adaptSize,
              width: 30.adaptSize,
              padding: EdgeInsets.all(7.h),
              decoration: IconButtonStyleHelper.fillPrimary,
              child: CustomImageView(
                imagePath: ImageConstant.imgArrowRight,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildProductList() {
    return SizedBox(
      height: 75.v,
      child: Obx(
        () => ListView.separated(
          padding: EdgeInsets.only(
            left: 20.h,
            right: 118.h,
          ),
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
              controller.productModelObj.value.productlistItemList.value.length,
          itemBuilder: (context, index) {
            ProductlistItemModel model = controller
                .productModelObj.value.productlistItemList.value[index];
            return ProductlistItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return Container(
      margin: EdgeInsets.only(
        left: 20.h,
        right: 20.h,
        bottom: 34.v,
      ),
      decoration: AppDecoration.outlineBlack900025,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomIconButton(
            height: 40.v,
            width: 47.h,
            padding: EdgeInsets.all(7.h),
            decoration: IconButtonStyleHelper.fillGrayTL11,
            child: CustomImageView(
              imagePath: ImageConstant.imgFavoriteGray90001,
            ),
          ),
          CustomElevatedButton(
            width: 128.h,
            text: "lbl_add_to_cart".tr,
            margin: EdgeInsets.only(left: 16.h),
            buttonStyle: CustomButtonStyles.fillGrayTL11,
          ),
          CustomElevatedButton(
            width: 128.h,
            text: "lbl_buy_now".tr,
            margin: EdgeInsets.only(left: 16.h),
          ),
        ],
      ),
    );
  }
}
