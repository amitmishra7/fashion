import '../product_full_screen/widgets/productlist2_item_widget.dart';
import '../product_full_screen/widgets/productmaterial_item_widget.dart';
import '../product_full_screen/widgets/userprofile3_item_widget.dart';
import '../product_full_screen/widgets/userprofile4_item_widget.dart';
import 'controller/product_full_controller.dart';
import 'models/productlist2_item_model.dart';
import 'models/productmaterial_item_model.dart';
import 'models/userprofile3_item_model.dart';
import 'models/userprofile4_item_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/widgets/custom_elevated_button.dart';
import 'package:amit_s_application2/widgets/custom_icon_button.dart';
import 'package:amit_s_application2/widgets/custom_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class ProductFullScreen extends GetWidget<ProductFullController> {
  const ProductFullScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildProductImage(),
                SizedBox(height: 18.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.h),
                  child: _buildSizeGuide(
                    titleText: "lbl_17_00".tr,
                  ),
                ),
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
                _buildProductTitle(),
                SizedBox(height: 11.v),
                _buildProductList(),
                SizedBox(height: 27.v),
                Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: Text(
                    "lbl_specifications".tr,
                    style: CustomTextStyles.titleLargeBlack90002,
                  ),
                ),
                SizedBox(height: 12.v),
                Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: Text(
                    "lbl_material".tr,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                SizedBox(height: 8.v),
                _buildProductMaterial(),
                SizedBox(height: 17.v),
                Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: Text(
                    "lbl_origin".tr,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                SizedBox(height: 6.v),
                Container(
                  width: 59.h,
                  margin: EdgeInsets.only(left: 20.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 19.h,
                    vertical: 2.v,
                  ),
                  decoration: AppDecoration.fillIndigo.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder4,
                  ),
                  child: Text(
                    "lbl_eu".tr,
                    style: CustomTextStyles.titleSmallBlack90002,
                  ),
                ),
                SizedBox(height: 10.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 19.h),
                  child: _buildSizeGuide(
                    titleText: "lbl_size_guide".tr,
                  ),
                ),
                SizedBox(height: 22.v),
                Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: Text(
                    "lbl_delivery".tr,
                    style: CustomTextStyles.titleLargeBlack90002,
                  ),
                ),
                SizedBox(height: 10.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.h),
                  child: _buildExpressOption(
                    title: "lbl_standart".tr,
                    duration: "lbl_5_7_days".tr,
                    price: "lbl_3_00".tr,
                  ),
                ),
                SizedBox(height: 6.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.h),
                  child: _buildExpressOption(
                    title: "lbl_express".tr,
                    duration: "lbl_1_2_days".tr,
                    price: "lbl_12_00".tr,
                  ),
                ),
                SizedBox(height: 32.v),
                SizedBox(
                  height: 1235.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 20.h,
                            right: 10.h,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 1.h),
                                child: Text(
                                  "msg_rating_reviews".tr,
                                  style: CustomTextStyles.titleLargeBlack90002,
                                ),
                              ),
                              SizedBox(height: 15.v),
                              Padding(
                                padding: EdgeInsets.only(left: 1.h),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 1.v),
                                      child: CustomRatingBar(
                                        initialRating: 0,
                                        itemSize: 20,
                                      ),
                                    ),
                                    Container(
                                      height: 20.v,
                                      width: 38.h,
                                      margin: EdgeInsets.only(left: 13.h),
                                      child: Stack(
                                        alignment: Alignment.bottomCenter,
                                        children: [
                                          Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                              height: 20.v,
                                              width: 38.h,
                                              decoration: BoxDecoration(
                                                color: appTheme.blue5001,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  6.h,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Text(
                                              "lbl_4_5".tr,
                                              style: theme.textTheme.titleSmall,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 19.v),
                              _buildReviewSection(),
                              SizedBox(height: 18.v),
                              CustomElevatedButton(
                                text: "msg_view_all_reviews".tr,
                                margin: EdgeInsets.only(
                                  left: 1.h,
                                  right: 9.h,
                                ),
                              ),
                              SizedBox(height: 230.v),
                              Padding(
                                padding: EdgeInsets.only(left: 1.h),
                                child: Text(
                                  "lbl_you_might_like".tr,
                                  style: CustomTextStyles.titleLargeBlack90002,
                                ),
                              ),
                              SizedBox(height: 19.v),
                              _buildUserProfile(),
                            ],
                          ),
                        ),
                      ),
                      _buildBottomBar(),
                      _buildMostPopularSection(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildProductImage() {
    return SizedBox(
      height: 395.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.img8e9310b198484,
            height: 395.v,
            width: 375.h,
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 395.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.img02643accCfe94395x375,
                    height: 395.v,
                    width: 375.h,
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 10.v,
                      margin: EdgeInsets.only(bottom: 10.v),
                      child: AnimatedSmoothIndicator(
                        activeIndex: 0,
                        count: 5,
                        effect: ScrollingDotsEffect(
                          spacing: 10,
                          activeDotColor: appTheme.blue80001,
                          dotColor: appTheme.blue80001.withOpacity(0.2),
                          dotHeight: 10.v,
                          dotWidth: 10.h,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildProductTitle() {
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
              .productFullModelObj.value.productlist2ItemList.value.length,
          itemBuilder: (context, index) {
            Productlist2ItemModel model = controller
                .productFullModelObj.value.productlist2ItemList.value[index];
            return Productlist2ItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildProductMaterial() {
    return Padding(
      padding: EdgeInsets.only(left: 20.h),
      child: Obx(
        () => Wrap(
          runSpacing: 6.v,
          spacing: 6.h,
          children: List<Widget>.generate(
            controller
                .productFullModelObj.value.productmaterialItemList.value.length,
            (index) {
              ProductmaterialItemModel model = controller.productFullModelObj
                  .value.productmaterialItemList.value[index];

              return ProductmaterialItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildReviewSection() {
    return Padding(
      padding: EdgeInsets.only(right: 16.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 40.adaptSize,
            width: 40.adaptSize,
            margin: EdgeInsets.only(bottom: 63.v),
            decoration: AppDecoration.outlineOnErrorContainer1.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder18,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgImage,
              height: 40.adaptSize,
              width: 40.adaptSize,
              alignment: Alignment.center,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_veronika".tr,
                    style: CustomTextStyles.titleMediumBlack90002SemiBold,
                  ),
                  SizedBox(height: 4.v),
                  CustomRatingBar(
                    initialRating: 0,
                  ),
                  SizedBox(height: 11.v),
                  SizedBox(
                    width: 268.h,
                    child: Text(
                      "msg_lorem_ipsum_dolor7".tr,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodySmall!.copyWith(
                        height: 1.50,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile() {
    return Padding(
      padding: EdgeInsets.only(left: 10.h),
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
          itemCount: controller
              .productFullModelObj.value.userprofile3ItemList.value.length,
          itemBuilder: (context, index) {
            Userprofile3ItemModel model = controller
                .productFullModelObj.value.userprofile3ItemList.value[index];
            return Userprofile3ItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(top: 1151.v),
        padding: EdgeInsets.symmetric(vertical: 10.v),
        decoration: AppDecoration.outlineBlack900025,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 24.v),
              child: CustomIconButton(
                height: 40.v,
                width: 47.h,
                padding: EdgeInsets.all(7.h),
                decoration: IconButtonStyleHelper.fillGrayTL11,
                child: CustomImageView(
                  imagePath: ImageConstant.imgFavoriteGray90001,
                ),
              ),
            ),
            CustomElevatedButton(
              width: 128.h,
              text: "lbl_add_to_cart".tr,
              margin: EdgeInsets.only(bottom: 24.v),
              buttonStyle: CustomButtonStyles.fillGrayTL11,
            ),
            CustomElevatedButton(
              width: 128.h,
              text: "lbl_buy_now".tr,
              margin: EdgeInsets.only(bottom: 24.v),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMostPopularSection() {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: EdgeInsets.only(
          left: 20.h,
          top: 269.v,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 15.h),
              child: Row(
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
            ),
            SizedBox(height: 10.v),
            SizedBox(
              height: 140.v,
              child: Obx(
                () => ListView.separated(
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (
                    context,
                    index,
                  ) {
                    return SizedBox(
                      width: 6.h,
                    );
                  },
                  itemCount: controller.productFullModelObj.value
                      .userprofile4ItemList.value.length,
                  itemBuilder: (context, index) {
                    Userprofile4ItemModel model = controller.productFullModelObj
                        .value.userprofile4ItemList.value[index];
                    return Userprofile4ItemWidget(
                      model,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildSizeGuide({required String titleText}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 7.v,
            bottom: 2.v,
          ),
          child: Text(
            titleText,
            style: theme.textTheme.titleMedium!.copyWith(
              color: appTheme.gray90001,
            ),
          ),
        ),
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
    );
  }

  /// Common widget
  Widget _buildExpressOption({
    required String title,
    required String duration,
    required String price,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 5.v,
      ),
      decoration: AppDecoration.outlinePrimary3.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder11,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 8.v),
            child: Text(
              title,
              style: CustomTextStyles.titleMediumBlack90002Medium.copyWith(
                color: appTheme.black90002,
              ),
            ),
          ),
          Container(
            width: 72.h,
            margin: EdgeInsets.only(left: 15.h),
            padding: EdgeInsets.symmetric(
              horizontal: 11.h,
              vertical: 2.v,
            ),
            decoration: AppDecoration.fillGray5002.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder4,
            ),
            child: Text(
              duration,
              style: CustomTextStyles.labelLargePrimary.copyWith(
                color: theme.colorScheme.primary,
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(top: 6.v),
            child: Text(
              price,
              style: CustomTextStyles.titleMediumBlack90002.copyWith(
                color: appTheme.black90002,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
