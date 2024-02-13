import '../filter_screen/widgets/chipview2_item_widget.dart';
import '../filter_screen/widgets/chipview_item_widget.dart';
import '../filter_screen/widgets/viewhierarchy2_item_widget.dart';
import 'controller/filter_controller.dart';
import 'models/chipview2_item_model.dart';
import 'models/chipview_item_model.dart';
import 'models/viewhierarchy2_item_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:amit_s_application2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:amit_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:amit_s_application2/widgets/custom_elevated_button.dart';
import 'package:amit_s_application2/widgets/custom_icon_button.dart';
import 'package:amit_s_application2/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class FilterScreen extends GetWidget<FilterController> {
  const FilterScreen({Key? key})
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
          padding: EdgeInsets.symmetric(vertical: 18.v),
          child: Column(
            children: [
              _buildViewHierarchy(),
              SizedBox(height: 37.v),
              _buildChipView(),
              SizedBox(height: 7.v),
              _buildStack(),
              SizedBox(height: 20.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: Text(
                    "lbl_color".tr,
                    style: CustomTextStyles.titleLargeBlack90002,
                  ),
                ),
              ),
              SizedBox(height: 12.v),
              _buildHorizontalScroll(),
              SizedBox(height: 23.v),
              _buildRow(),
              SizedBox(height: 15.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: SliderTheme(
                  data: SliderThemeData(
                    trackShape: RoundedRectSliderTrackShape(),
                    activeTrackColor: theme.colorScheme.primary,
                    inactiveTrackColor: appTheme.indigo50,
                    thumbColor:
                        theme.colorScheme.onErrorContainer.withOpacity(1),
                    thumbShape: RoundSliderThumbShape(),
                  ),
                  child: RangeSlider(
                    values: RangeValues(
                      0,
                      0,
                    ),
                    min: 0.0,
                    max: 100.0,
                    onChanged: (value) {},
                  ),
                ),
              ),
              SizedBox(height: 25.v),
              _buildChipView1(),
              SizedBox(height: 7.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildRow1(),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 51.v,
      title: AppbarTitle(
        text: "lbl_filter".tr,
        margin: EdgeInsets.only(left: 20.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgCloseBlack90002,
          margin: EdgeInsets.fromLTRB(20.h, 12.v, 20.h, 26.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildViewHierarchy() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Obx(
        () => GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 88.v,
            crossAxisCount: 5,
            mainAxisSpacing: 9.h,
            crossAxisSpacing: 9.h,
          ),
          physics: NeverScrollableScrollPhysics(),
          itemCount: controller
              .filterModelObj.value.viewhierarchy2ItemList.value.length,
          itemBuilder: (context, index) {
            Viewhierarchy2ItemModel model = controller
                .filterModelObj.value.viewhierarchy2ItemList.value[index];
            return Viewhierarchy2ItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildChipView() {
    return Obx(
      () => Wrap(
        runSpacing: 153.v,
        spacing: 153.h,
        children: List<Widget>.generate(
          controller.filterModelObj.value.chipviewItemList.value.length,
          (index) {
            ChipviewItemModel model =
                controller.filterModelObj.value.chipviewItemList.value[index];

            return ChipviewItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildStack() {
    return SizedBox(
      height: 40.v,
      width: 334.h,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 7.v),
              padding: EdgeInsets.symmetric(
                horizontal: 15.h,
                vertical: 3.v,
              ),
              decoration: AppDecoration.fillGray50.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder11,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 2.v),
                    child: Text(
                      "lbl_xs".tr,
                      style: CustomTextStyles.labelLargeBlue20001,
                    ),
                  ),
                  Spacer(
                    flex: 19,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 2.v),
                    child: Text(
                      "lbl_s".tr,
                      style: CustomTextStyles.labelLargeBlue20001,
                    ),
                  ),
                  Spacer(
                    flex: 42,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 2.v),
                    child: Text(
                      "lbl_l".tr,
                      style: CustomTextStyles.labelLargeBlue20001,
                    ),
                  ),
                  Spacer(
                    flex: 19,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 2.v),
                    child: Text(
                      "lbl_xl".tr,
                      style: CustomTextStyles.labelLargeBlue20001,
                    ),
                  ),
                  Spacer(
                    flex: 19,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 2.v),
                    child: Text(
                      "lbl_2xl".tr,
                      style: CustomTextStyles.labelLargeBlue20001,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 40.adaptSize,
              margin: EdgeInsets.only(left: 114.h),
              padding: EdgeInsets.symmetric(
                horizontal: 13.h,
                vertical: 10.v,
              ),
              decoration: AppDecoration.outlineIndigo.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder18,
              ),
              child: Text(
                "lbl_m".tr,
                style: CustomTextStyles.titleSmallPrimary,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildHorizontalScroll() {
    return Align(
      alignment: Alignment.centerRight,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 20.h),
        child: IntrinsicWidth(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 41.v,
                width: 47.h,
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        margin: EdgeInsets.only(right: 7.h),
                        padding: EdgeInsets.all(4.h),
                        decoration: AppDecoration.outlinePrimary2.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder18,
                        ),
                        child: Container(
                          height: 30.adaptSize,
                          width: 30.adaptSize,
                          decoration: BoxDecoration(
                            color: appTheme.gray200,
                            borderRadius: BorderRadius.circular(
                              15.h,
                            ),
                          ),
                        ),
                      ),
                    ),
                    CustomIconButton(
                      height: 22.adaptSize,
                      width: 22.adaptSize,
                      padding: EdgeInsets.all(6.h),
                      decoration: IconButtonStyleHelper.outlineOnErrorContainer,
                      alignment: Alignment.topRight,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgIconFeatherCheck,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 9.h,
                  top: 1.v,
                ),
                padding: EdgeInsets.all(5.h),
                decoration: AppDecoration.outlineBlack900024.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder18,
                ),
                child: Container(
                  height: 30.adaptSize,
                  width: 30.adaptSize,
                  decoration: BoxDecoration(
                    color: appTheme.gray90002,
                    borderRadius: BorderRadius.circular(
                      15.h,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 16.h,
                  top: 1.v,
                ),
                padding: EdgeInsets.all(5.h),
                decoration: AppDecoration.outlineBlack900024.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder18,
                ),
                child: Container(
                  height: 30.adaptSize,
                  width: 30.adaptSize,
                  decoration: BoxDecoration(
                    color: theme.colorScheme.onPrimaryContainer,
                    borderRadius: BorderRadius.circular(
                      15.h,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 16.h,
                  top: 1.v,
                ),
                padding: EdgeInsets.all(5.h),
                decoration: AppDecoration.outlineBlack900024.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder18,
                ),
                child: Container(
                  height: 30.adaptSize,
                  width: 30.adaptSize,
                  decoration: BoxDecoration(
                    color: appTheme.red50001,
                    borderRadius: BorderRadius.circular(
                      15.h,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 15.h,
                  top: 1.v,
                ),
                padding: EdgeInsets.all(5.h),
                decoration: AppDecoration.outlineBlack900024.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder18,
                ),
                child: Container(
                  height: 30.adaptSize,
                  width: 30.adaptSize,
                  decoration: BoxDecoration(
                    color: appTheme.cyan600,
                    borderRadius: BorderRadius.circular(
                      15.h,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 16.h,
                  top: 1.v,
                ),
                padding: EdgeInsets.all(5.h),
                decoration: AppDecoration.outlineBlack900024.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder18,
                ),
                child: Container(
                  height: 30.adaptSize,
                  width: 30.adaptSize,
                  decoration: BoxDecoration(
                    color: appTheme.yellow800,
                    borderRadius: BorderRadius.circular(
                      15.h,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 16.h,
                  top: 1.v,
                ),
                padding: EdgeInsets.all(5.h),
                decoration: AppDecoration.outlineBlack900024.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder18,
                ),
                child: Container(
                  height: 30.adaptSize,
                  width: 30.adaptSize,
                  decoration: BoxDecoration(
                    color: appTheme.purple400,
                    borderRadius: BorderRadius.circular(
                      15.h,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRow() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 5.v),
            child: Text(
              "lbl_price".tr,
              style: CustomTextStyles.titleLargeBlack90002,
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(top: 4.v),
            child: Text(
              "lbl_102".tr,
              style: CustomTextStyles.titleMediumBlack90002Medium19,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 6.h,
              top: 6.v,
            ),
            child: Text(
              "lbl".tr,
              style: CustomTextStyles.titleMediumBlack90002Medium19,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 5.h,
              top: 5.v,
            ),
            child: Text(
              "lbl_150".tr,
              style: CustomTextStyles.titleMediumBlack90002Medium19,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildChipView1() {
    return Obx(
      () => Wrap(
        runSpacing: 11.v,
        spacing: 11.h,
        children: List<Widget>.generate(
          controller.filterModelObj.value.chipview2ItemList.value.length,
          (index) {
            Chipview2ItemModel model =
                controller.filterModelObj.value.chipview2ItemList.value[index];

            return Chipview2ItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRow1() {
    return Padding(
      padding: EdgeInsets.only(
        left: 20.h,
        right: 20.h,
        bottom: 30.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomOutlinedButton(
            height: 50.v,
            width: 91.h,
            text: "lbl_clear".tr,
            buttonStyle: CustomButtonStyles.outlinePrimary,
            buttonTextStyle: CustomTextStyles.titleLargeNunitoSansPrimary,
          ),
          Expanded(
            child: CustomElevatedButton(
              height: 50.v,
              text: "lbl_apply".tr,
              margin: EdgeInsets.only(left: 8.h),
              buttonStyle: CustomButtonStyles.fillPrimary,
              buttonTextStyle: CustomTextStyles.titleLargeNunitoSansGray10001,
            ),
          ),
        ],
      ),
    );
  }
}
