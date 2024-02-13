import '../flash_sale_full_page/widgets/dynamicview_item_widget.dart';
import '../flash_sale_full_page/widgets/flashsalelist_item_widget.dart';
import 'controller/flash_sale_full_controller.dart';
import 'models/dynamicview_item_model.dart';
import 'models/flash_sale_full_model.dart';
import 'models/flashsalelist_item_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:amit_s_application2/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:amit_s_application2/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:amit_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:amit_s_application2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:amit_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:amit_s_application2/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class FlashSaleFullPage extends StatelessWidget {
  FlashSaleFullPage({Key? key})
      : super(
          key: key,
        );

  FlashSaleFullController controller =
      Get.put(FlashSaleFullController(FlashSaleFullModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(bottom: 5.v),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                      height: 936.v,
                      width: 355.h,
                      child: Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgBubbles,
                            height: 202.v,
                            width: 354.h,
                            alignment: Alignment.topCenter,
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: EdgeInsets.only(right: 20.h),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  _buildOffer(),
                                  SizedBox(height: 13.v),
                                  _buildDynamicView(),
                                ],
                              ),
                            ),
                          ),
                          _buildDiscounts(),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 17.v),
                  _buildPlaceholder(),
                  SizedBox(height: 20.v),
                  _buildMoreItems(),
                  SizedBox(height: 22.v),
                  _buildPopularSection(),
                  SizedBox(height: 10.v),
                  _buildFlashSaleList(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
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
        AppbarSubtitleTwo(
          text: "lbl_58".tr,
          margin: EdgeInsets.only(
            left: 2.h,
            top: 1.v,
            right: 42.h,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildOffer() {
    return Padding(
      padding: EdgeInsets.only(right: 5.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 2.v),
            child: Text(
              "lbl_20_discount".tr,
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
  Widget _buildDynamicView() {
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
            .flashSaleFullModelObj.value.dynamicviewItemList.value.length,
        itemBuilder: (context, index) {
          DynamicviewItemModel model = controller
              .flashSaleFullModelObj.value.dynamicviewItemList.value[index];
          return DynamicviewItemWidget(
            model,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildDiscounts() {
    return Align(
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
    );
  }

  /// Section Widget
  Widget _buildPlaceholder() {
    return SizedBox(
      height: 130.v,
      width: 335.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.img8cb4c26cC8894,
            height: 130.v,
            width: 335.h,
            radius: BorderRadius.circular(
              9.h,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 130.v,
              width: 335.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgC59dc391Dbc84,
                    height: 130.v,
                    width: 335.h,
                    radius: BorderRadius.circular(
                      9.h,
                    ),
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 18.h,
                        vertical: 3.v,
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: fs.Svg(
                            ImageConstant.imgGroup224,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 11.v),
                          Text(
                            "lbl_big_sale".tr,
                            style: CustomTextStyles.headlineMediumBlack90002,
                          ),
                          SizedBox(height: 1.v),
                          Text(
                            "lbl_up_to_50".tr,
                            style: CustomTextStyles.labelLargeNunitoSansBold,
                          ),
                          SizedBox(height: 29.v),
                          SizedBox(
                            width: 57.h,
                            child: Text(
                              "lbl_happening_now".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles
                                  .labelMediumOnErrorContainer
                                  .copyWith(
                                height: 1.36,
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
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMoreItems() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
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
                        imagePath: ImageConstant.img873e463b5d9c4,
                        height: 171.v,
                        width: 155.h,
                        radius: BorderRadius.circular(
                          5.h,
                        ),
                        alignment: Alignment.center,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          height: 171.v,
                          width: 155.h,
                          child: Stack(
                            alignment: Alignment.topRight,
                            children: [
                              CustomImageView(
                                imagePath:
                                    ImageConstant.imgA70864c81b1f4171x155,
                                height: 171.v,
                                width: 155.h,
                                radius: BorderRadius.circular(
                                  5.h,
                                ),
                                alignment: Alignment.center,
                              ),
                              Align(
                                alignment: Alignment.topRight,
                                child: SizedBox(
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
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 6.v),
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
              SizedBox(height: 3.v),
              _buildPriceRow(
                price: "lbl_16_00".tr,
                price1: "lbl_20_00".tr,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 5.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
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
                          imagePath: ImageConstant.img873e463b5d9c4,
                          height: 171.v,
                          width: 155.h,
                          radius: BorderRadius.circular(
                            5.h,
                          ),
                          alignment: Alignment.center,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            height: 171.v,
                            width: 155.h,
                            child: Stack(
                              alignment: Alignment.topRight,
                              children: [
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.img6d305338A2a14171x155,
                                  height: 171.v,
                                  width: 155.h,
                                  radius: BorderRadius.circular(
                                    5.h,
                                  ),
                                  alignment: Alignment.center,
                                ),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: SizedBox(
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
                                                bottomLeft:
                                                    Radius.circular(5.h),
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
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 6.v),
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
                SizedBox(height: 3.v),
                _buildPriceRow(
                  price: "lbl_16_00".tr,
                  price1: "lbl_20_00".tr,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPopularSection() {
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
              left: 15.h,
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
  Widget _buildFlashSaleList() {
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
            itemCount: controller
                .flashSaleFullModelObj.value.flashsalelistItemList.value.length,
            itemBuilder: (context, index) {
              FlashsalelistItemModel model = controller.flashSaleFullModelObj
                  .value.flashsalelistItemList.value[index];
              return FlashsalelistItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildPriceRow({
    required String price,
    required String price1,
  }) {
    return Row(
      children: [
        Text(
          price,
          style: theme.textTheme.titleMedium!.copyWith(
            color: appTheme.gray90001,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 2.h),
          child: Text(
            price1,
            style: CustomTextStyles.titleSmallRed200.copyWith(
              decoration: TextDecoration.lineThrough,
              color: appTheme.red200,
            ),
          ),
        ),
      ],
    );
  }
}
