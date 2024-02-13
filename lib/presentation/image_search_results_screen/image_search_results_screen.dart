import '../image_search_results_screen/widgets/productgrid_item_widget.dart';
import 'controller/image_search_results_controller.dart';
import 'models/productgrid_item_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ImageSearchResultsScreen extends GetWidget<ImageSearchResultsController> {
  const ImageSearchResultsScreen({Key? key})
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
            child: SizedBox(
              height: 768.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            ImageConstant.imgGroup39,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Container(
                        height: 768.v,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          color: appTheme.gray20003,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadiusStyle.customBorderTL9,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          _buildHeader(),
                          SizedBox(height: 20.v),
                          _buildProductGrid(),
                          SizedBox(height: 20.v),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 190.h,
                        right: 20.h,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 181.v,
                            width: 165.h,
                            padding: EdgeInsets.all(5.h),
                            decoration:
                                AppDecoration.outlineBlack900023.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder11,
                            ),
                            child: CustomImageView(
                              imagePath: ImageConstant.img1c97b4d1123b4,
                              height: 171.v,
                              width: 155.h,
                              radius: BorderRadius.circular(
                                5.h,
                              ),
                              alignment: Alignment.center,
                            ),
                          ),
                          SizedBox(height: 6.v),
                          Container(
                            width: 138.h,
                            margin: EdgeInsets.only(right: 27.h),
                            child: Text(
                              "msg_lorem_ipsum_dolor".tr,
                              maxLines: null,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.bodySmall!.copyWith(
                                height: 1.33,
                              ),
                            ),
                          ),
                          SizedBox(height: 1.v),
                          Text(
                            "lbl_17_00".tr,
                            style: theme.textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 20.h,
                        right: 190.h,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Card(
                            clipBehavior: Clip.antiAlias,
                            elevation: 0,
                            margin: EdgeInsets.all(0),
                            color: theme.colorScheme.onErrorContainer
                                .withOpacity(1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusStyle.circleBorder11,
                            ),
                            child: Container(
                              height: 181.v,
                              width: 165.h,
                              padding: EdgeInsets.all(5.h),
                              decoration:
                                  AppDecoration.outlineBlack900023.copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder11,
                              ),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgEf9e6aa5974f4,
                                    height: 171.v,
                                    width: 155.h,
                                    radius: BorderRadius.circular(
                                      5.h,
                                    ),
                                    alignment: Alignment.center,
                                  ),
                                  CustomImageView(
                                    imagePath:
                                        ImageConstant.img922654839e7e4171x155,
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
                          ),
                          SizedBox(height: 6.v),
                          Container(
                            width: 138.h,
                            margin: EdgeInsets.only(right: 27.h),
                            child: Text(
                              "msg_lorem_ipsum_dolor".tr,
                              maxLines: null,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.bodySmall!.copyWith(
                                height: 1.33,
                              ),
                            ),
                          ),
                          SizedBox(height: 1.v),
                          Text(
                            "lbl_17_00".tr,
                            style: theme.textTheme.titleMedium,
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
    );
  }

  /// Section Widget
  Widget _buildHeader() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 28.v,
      ),
      decoration: AppDecoration.fillGray5003.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL9,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_image_search".tr,
                style: theme.textTheme.headlineMedium,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgCloseBlack90002,
                height: 13.adaptSize,
                width: 13.adaptSize,
                margin: EdgeInsets.only(
                  top: 2.v,
                  bottom: 16.v,
                ),
              ),
            ],
          ),
          SizedBox(height: 14.v),
          Padding(
            padding: EdgeInsets.only(right: 53.h),
            child: Row(
              children: [
                CustomElevatedButton(
                  height: 36.v,
                  width: 75.h,
                  text: "lbl_shoes".tr,
                  buttonStyle: CustomButtonStyles.fillGrayTL9,
                  buttonTextStyle:
                      CustomTextStyles.titleMediumBlack90002Medium_2,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 10.h,
                    top: 10.v,
                    bottom: 3.v,
                  ),
                  child: Text(
                    "msg_is_this_what_you".tr,
                    style: CustomTextStyles.titleMediumPrimaryMedium,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildProductGrid() {
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
          itemCount: controller.imageSearchResultsModelObj.value
              .productgridItemList.value.length,
          itemBuilder: (context, index) {
            ProductgridItemModel model = controller.imageSearchResultsModelObj
                .value.productgridItemList.value[index];
            return ProductgridItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
