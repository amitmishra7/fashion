import '../product_sale_screen/widgets/image1_item_widget.dart';
import '../product_sale_screen/widgets/productlist1_item_widget.dart';
import 'controller/product_sale_controller.dart';
import 'models/image1_item_model.dart';
import 'models/productlist1_item_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/widgets/custom_elevated_button.dart';
import 'package:amit_s_application2/widgets/custom_icon_button.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class ProductSaleScreen extends GetWidget<ProductSaleController> {
  const ProductSaleScreen({Key? key})
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
              SizedBox(height: 12.v),
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
              SizedBox(height: 15.v),
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
              itemCount: controller
                  .productSaleModelObj.value.image1ItemList.value.length,
              itemBuilder: (context, index, realIndex) {
                Image1ItemModel model = controller
                    .productSaleModelObj.value.image1ItemList.value[index];
                return Image1ItemWidget(
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
                      .productSaleModelObj.value.image1ItemList.value.length,
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
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_24_00".tr,
                  style: CustomTextStyles.headlineMediumBlack90002ExtraBold,
                ),
                SizedBox(height: 2.v),
                SizedBox(
                  width: 92.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 1.v),
                        child: Text(
                          "lbl_30_00".tr,
                          style: CustomTextStyles.titleSmallRed200ExtraBold
                              .copyWith(
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 18.v,
                        width: 39.h,
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                height: 18.v,
                                width: 39.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(5.h),
                                    topRight: Radius.circular(5.h),
                                    bottomLeft: Radius.circular(5.h),
                                  ),
                                  gradient: LinearGradient(
                                    begin: Alignment(1, 0),
                                    end: Alignment(0, 0),
                                    colors: [
                                      appTheme.pink300,
                                      appTheme.redA400,
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                "lbl_20".tr,
                                style: CustomTextStyles
                                    .labelLargeOnErrorContainerBold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Spacer(),
            CustomImageView(
              imagePath: ImageConstant.imgClock,
              height: 19.v,
              width: 17.h,
              margin: EdgeInsets.only(
                top: 5.v,
                bottom: 27.v,
              ),
            ),
            Container(
              width: 30.h,
              margin: EdgeInsets.only(
                left: 10.h,
                top: 2.v,
                bottom: 23.v,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 3.h,
                vertical: 1.v,
              ),
              decoration: AppDecoration.fillRed.copyWith(
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
                top: 2.v,
                bottom: 23.v,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 3.h,
                vertical: 1.v,
              ),
              decoration: AppDecoration.fillRed.copyWith(
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
                top: 2.v,
                bottom: 23.v,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 3.h,
                vertical: 1.v,
              ),
              decoration: AppDecoration.fillRed.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder7,
              ),
              child: Text(
                "lbl_58".tr,
                style: theme.textTheme.titleMedium,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 24.h,
                bottom: 22.v,
              ),
              child: CustomIconButton(
                height: 30.adaptSize,
                width: 30.adaptSize,
                padding: EdgeInsets.all(5.h),
                decoration: IconButtonStyleHelper.fillRed,
                child: CustomImageView(
                  imagePath: ImageConstant.imgQuestion,
                ),
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
          itemCount: controller
              .productSaleModelObj.value.productlist1ItemList.value.length,
          itemBuilder: (context, index) {
            Productlist1ItemModel model = controller
                .productSaleModelObj.value.productlist1ItemList.value[index];
            return Productlist1ItemWidget(
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
              imagePath: ImageConstant.imgLike,
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
