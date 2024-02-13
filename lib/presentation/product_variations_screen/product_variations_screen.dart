import '../product_variations_screen/widgets/color_item_widget.dart';
import '../product_variations_screen/widgets/dceaaffiftyfour_item_widget.dart';
import '../product_variations_screen/widgets/s_item_widget.dart';
import 'controller/product_variations_controller.dart';
import 'models/color_item_model.dart';
import 'models/dceaaffiftyfour_item_model.dart';
import 'models/s_item_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/widgets/custom_elevated_button.dart';
import 'package:amit_s_application2/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class ProductVariationsScreen extends GetWidget<ProductVariationsController> {
  const ProductVariationsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: 768.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              CustomImageView(
                imagePath: ImageConstant.img8e9310b198484,
                height: 395.v,
                width: 375.h,
                alignment: Alignment.topCenter,
              ),
              CustomImageView(
                imagePath: ImageConstant.img02643accCfe94395x375,
                height: 395.v,
                width: 375.h,
                alignment: Alignment.topCenter,
              ),
              _buildOne(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildOne() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 450.v,
            width: double.maxFinite,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusStyle.customBorderTL9,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: double.maxFinite,
                          padding: EdgeInsets.symmetric(
                            horizontal: 20.h,
                            vertical: 32.v,
                          ),
                          decoration: AppDecoration.fillGray5003.copyWith(
                            borderRadius: BorderRadiusStyle.customBorderTL9,
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                height: 75.adaptSize,
                                width: 75.adaptSize,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.img9a5fd51b6d774,
                                      height: 75.adaptSize,
                                      width: 75.adaptSize,
                                      radius: BorderRadius.circular(
                                        5.h,
                                      ),
                                      alignment: Alignment.center,
                                    ),
                                    CustomImageView(
                                      imagePath:
                                          ImageConstant.img32eb245aE30d475x75,
                                      height: 75.adaptSize,
                                      width: 75.adaptSize,
                                      radius: BorderRadius.circular(
                                        5.h,
                                      ),
                                      alignment: Alignment.center,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 12.h,
                                  top: 10.v,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "lbl_17_00".tr,
                                      style: CustomTextStyles
                                          .headlineMediumBlack90002ExtraBold,
                                    ),
                                    SizedBox(height: 8.v),
                                    Obx(
                                      () => Wrap(
                                        runSpacing: 6.v,
                                        spacing: 6.h,
                                        children: List<Widget>.generate(
                                          controller.productVariationsModelObj
                                              .value.colorItemList.value.length,
                                          (index) {
                                            ColorItemModel model = controller
                                                .productVariationsModelObj
                                                .value
                                                .colorItemList
                                                .value[index];

                                            return ColorItemWidget(
                                              model,
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 22.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 20.h),
                            child: Text(
                              "lbl_color_options".tr,
                              style: theme.textTheme.titleMedium,
                            ),
                          ),
                        ),
                        SizedBox(height: 11.v),
                        SizedBox(
                          height: 79.v,
                          child: Obx(
                            () => ListView.separated(
                              padding: EdgeInsets.symmetric(horizontal: 20.h),
                              scrollDirection: Axis.horizontal,
                              separatorBuilder: (
                                context,
                                index,
                              ) {
                                return SizedBox(
                                  width: 6.h,
                                );
                              },
                              itemCount: controller.productVariationsModelObj
                                  .value.dceaaffiftyfourItemList.value.length,
                              itemBuilder: (context, index) {
                                DceaaffiftyfourItemModel model = controller
                                    .productVariationsModelObj
                                    .value
                                    .dceaaffiftyfourItemList
                                    .value[index];
                                return DceaaffiftyfourItemWidget(
                                  model,
                                );
                              },
                            ),
                          ),
                        ),
                        SizedBox(height: 16.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 20.h),
                            child: Text(
                              "lbl_size".tr,
                              style: theme.textTheme.titleMedium,
                            ),
                          ),
                        ),
                        SizedBox(height: 13.v),
                        Obx(
                          () => Wrap(
                            runSpacing: 6.v,
                            spacing: 6.h,
                            children: List<Widget>.generate(
                              controller.productVariationsModelObj.value
                                  .sItemList.value.length,
                              (index) {
                                SItemModel model = controller
                                    .productVariationsModelObj
                                    .value
                                    .sItemList
                                    .value[index];

                                return SItemWidget(
                                  model,
                                );
                              },
                            ),
                          ),
                        ),
                        SizedBox(height: 34.v),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 18.v,
                                  bottom: 11.v,
                                ),
                                child: Text(
                                  "lbl_quantity".tr,
                                  style: theme.textTheme.titleMedium,
                                ),
                              ),
                              Spacer(),
                              CustomIconButton(
                                height: 50.adaptSize,
                                width: 50.adaptSize,
                                padding: EdgeInsets.all(20.h),
                                decoration: IconButtonStyleHelper.outlineBlueA,
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgLess,
                                ),
                              ),
                              CustomElevatedButton(
                                height: 50.v,
                                width: 74.h,
                                text: "lbl_1".tr,
                                margin: EdgeInsets.only(left: 10.h),
                                buttonStyle: CustomButtonStyles.fillIndigo,
                                buttonTextStyle:
                                    CustomTextStyles.headlineMediumIndigo900,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10.h),
                                child: CustomIconButton(
                                  height: 50.adaptSize,
                                  width: 50.adaptSize,
                                  padding: EdgeInsets.all(19.h),
                                  decoration:
                                      IconButtonStyleHelper.outlineBlueA,
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgGroup1353,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 17.v),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: 10.v,
                    margin: EdgeInsets.only(top: 141.v),
                    child: AnimatedSmoothIndicator(
                      activeIndex: 0,
                      count: 5,
                      effect: ScrollingDotsEffect(
                        spacing: 10,
                        activeDotColor: appTheme.blue80001,
                        dotColor: appTheme.blue80001,
                        dotHeight: 10.v,
                        dotWidth: 10.h,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.maxFinite,
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
        ],
      ),
    );
  }
}
