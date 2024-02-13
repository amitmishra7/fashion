import 'controller/rewards_progress_controller.dart';
import 'models/rewards_progress_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class RewardsProgressPage extends StatelessWidget {
  RewardsProgressPage({Key? key})
      : super(
          key: key,
        );

  RewardsProgressController controller =
      Get.put(RewardsProgressController(RewardsProgressModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnErrorContainer,
          child: Column(
            children: [
              SizedBox(height: 25.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 35.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildBag(),
                    SizedBox(height: 15.v),
                    _buildView(),
                    SizedBox(height: 15.v),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 9.h,
                        right: 30.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 70.adaptSize,
                                width: 70.adaptSize,
                                padding: EdgeInsets.all(5.h),
                                decoration:
                                    AppDecoration.outlineBlack900024.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder35,
                                ),
                                child: CustomIconButton(
                                  height: 60.adaptSize,
                                  width: 60.adaptSize,
                                  padding: EdgeInsets.all(17.h),
                                  decoration:
                                      IconButtonStyleHelper.outlinePrimary,
                                  alignment: Alignment.center,
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgShirt,
                                  ),
                                ),
                              ),
                              SizedBox(height: 11.v),
                              Text(
                                "msg_t_shirt_collector".tr,
                                style: CustomTextStyles.titleSmallBlack9000215,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Card(
                                clipBehavior: Clip.antiAlias,
                                elevation: 0,
                                margin: EdgeInsets.all(0),
                                color: theme.colorScheme.onErrorContainer
                                    .withOpacity(1),
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder35,
                                ),
                                child: Container(
                                  height: 70.adaptSize,
                                  width: 70.adaptSize,
                                  decoration:
                                      AppDecoration.outlineBlack900024.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder35,
                                  ),
                                  child: Stack(
                                    alignment: Alignment.topRight,
                                    children: [
                                      Align(
                                        alignment: Alignment.center,
                                        child: SizedBox(
                                          height: 60.adaptSize,
                                          width: 60.adaptSize,
                                          child: CircularProgressIndicator(
                                            value: 0.5,
                                            backgroundColor: theme
                                                .colorScheme.onErrorContainer
                                                .withOpacity(1),
                                            color: theme
                                                .colorScheme.onErrorContainer
                                                .withOpacity(1),
                                            strokeWidth: 1.h,
                                          ),
                                        ),
                                      ),
                                      CustomImageView(
                                        imagePath: ImageConstant
                                            .imgSettingsPrimary69x31,
                                        height: 35.v,
                                        width: 31.h,
                                        alignment: Alignment.topRight,
                                      ),
                                      CustomImageView(
                                        imagePath: ImageConstant.imgUserPrimary,
                                        height: 26.adaptSize,
                                        width: 26.adaptSize,
                                        alignment: Alignment.center,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 11.v),
                              Text(
                                "lbl_10_orders".tr,
                                style: CustomTextStyles.titleSmallBlack9000215,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 7.v),
                    _buildLoremIpsumDolor(),
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
  Widget _buildBag() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 17.h),
          child: Column(
            children: [
              Card(
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                margin: EdgeInsets.all(0),
                color: theme.colorScheme.onErrorContainer.withOpacity(1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusStyle.circleBorder35,
                ),
                child: Container(
                  height: 70.adaptSize,
                  width: 70.adaptSize,
                  padding: EdgeInsets.all(4.h),
                  decoration: AppDecoration.outlineBlack900024.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder35,
                  ),
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      CustomIconButton(
                        height: 60.adaptSize,
                        width: 60.adaptSize,
                        padding: EdgeInsets.all(20.h),
                        decoration: IconButtonStyleHelper.outlinePrimary,
                        alignment: Alignment.center,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgBagPrimary,
                        ),
                      ),
                      CustomIconButton(
                        height: 22.adaptSize,
                        width: 22.adaptSize,
                        padding: EdgeInsets.all(6.h),
                        decoration:
                            IconButtonStyleHelper.outlineOnErrorContainer,
                        alignment: Alignment.topRight,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgIconFeatherCheck,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 11.v),
              Text(
                "lbl_first_purchase".tr,
                style: CustomTextStyles.titleSmallBlack9000215,
              ),
              SizedBox(height: 6.v),
              SizedBox(
                width: 135.h,
                child: Text(
                  "msg_lorem_ipsum_dolor11".tr,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodySmall11.copyWith(
                    height: 1.64,
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 17.h),
          child: Column(
            children: [
              Card(
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                margin: EdgeInsets.all(0),
                color: theme.colorScheme.onErrorContainer.withOpacity(1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusStyle.circleBorder35,
                ),
                child: Container(
                  height: 70.adaptSize,
                  width: 70.adaptSize,
                  decoration: AppDecoration.outlineBlack900024.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder35,
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 60.adaptSize,
                          width: 60.adaptSize,
                          decoration: BoxDecoration(
                            color: theme.colorScheme.onErrorContainer
                                .withOpacity(1),
                            borderRadius: BorderRadius.circular(
                              30.h,
                            ),
                            border: Border.all(
                              color: theme.colorScheme.primary,
                              width: 1.h,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: appTheme.black90002.withOpacity(0.16),
                                spreadRadius: 2.h,
                                blurRadius: 2.h,
                                offset: Offset(
                                  0,
                                  5,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 69.v,
                          width: 70.h,
                          padding: EdgeInsets.all(22.h),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: fs.Svg(
                                ImageConstant.imgGroup456,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgFavoritePrimary,
                            height: 22.v,
                            width: 24.h,
                            alignment: Alignment.bottomCenter,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 13.v),
              Text(
                "lbl_loyal_customer".tr,
                style: CustomTextStyles.titleSmallBlack9000215,
              ),
              SizedBox(height: 4.v),
              SizedBox(
                width: 135.h,
                child: Text(
                  "msg_lorem_ipsum_dolor11".tr,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodySmall11.copyWith(
                    height: 1.64,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildView() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 17.h),
          child: Column(
            children: [
              Card(
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                margin: EdgeInsets.all(0),
                color: theme.colorScheme.onErrorContainer.withOpacity(1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusStyle.circleBorder35,
                ),
                child: Container(
                  height: 70.adaptSize,
                  width: 70.adaptSize,
                  decoration: AppDecoration.outlineBlack900024.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder35,
                  ),
                  child: Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 60.adaptSize,
                          width: 60.adaptSize,
                          decoration: BoxDecoration(
                            color: theme.colorScheme.onErrorContainer
                                .withOpacity(1),
                            borderRadius: BorderRadius.circular(
                              30.h,
                            ),
                            border: Border.all(
                              color: theme.colorScheme.primary,
                              width: 1.h,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: appTheme.black90002.withOpacity(0.16),
                                spreadRadius: 2.h,
                                blurRadius: 2.h,
                                offset: Offset(
                                  0,
                                  5,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgSettingsPrimary69x31,
                        height: 69.v,
                        width: 31.h,
                        alignment: Alignment.centerRight,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgStar,
                        height: 22.v,
                        width: 23.h,
                        alignment: Alignment.center,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 11.v),
              Text(
                "lbl_review_maker".tr,
                style: CustomTextStyles.titleSmallBlack9000215,
              ),
              SizedBox(height: 6.v),
              SizedBox(
                width: 135.h,
                child: Text(
                  "msg_lorem_ipsum_dolor11".tr,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodySmall11.copyWith(
                    height: 1.64,
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 17.h),
          child: Column(
            children: [
              Container(
                height: 70.adaptSize,
                width: 70.adaptSize,
                padding: EdgeInsets.all(5.h),
                decoration: AppDecoration.outlineBlack900024.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder35,
                ),
                child: CustomIconButton(
                  height: 60.adaptSize,
                  width: 60.adaptSize,
                  padding: EdgeInsets.all(16.h),
                  decoration: IconButtonStyleHelper.outlinePrimary,
                  alignment: Alignment.center,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgIconAwesomeCloud,
                  ),
                ),
              ),
              SizedBox(height: 13.v),
              Text(
                "lbl_big_soul".tr,
                style: CustomTextStyles.titleSmallBlack9000215,
              ),
              SizedBox(height: 4.v),
              SizedBox(
                width: 135.h,
                child: Text(
                  "msg_lorem_ipsum_dolor11".tr,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodySmall11.copyWith(
                    height: 1.64,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildLoremIpsumDolor() {
    return Row(
      children: [
        SizedBox(
          width: 135.h,
          child: Text(
            "msg_lorem_ipsum_dolor11".tr,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: CustomTextStyles.bodySmall11.copyWith(
              height: 1.64,
            ),
          ),
        ),
        Container(
          width: 135.h,
          margin: EdgeInsets.only(left: 35.h),
          child: Text(
            "msg_lorem_ipsum_dolor11".tr,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: CustomTextStyles.bodySmall11.copyWith(
              height: 1.64,
            ),
          ),
        ),
      ],
    );
  }
}
