import 'controller/image_search_controller.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ImageSearchScreen extends GetWidget<ImageSearchController> {
  const ImageSearchScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            color: theme.colorScheme.onErrorContainer.withOpacity(1),
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.img30ImageSearch,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 37.h,
              vertical: 46.v,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(left: 12.h),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgTelevision,
                        height: 27.adaptSize,
                        width: 27.adaptSize,
                        margin: EdgeInsets.symmetric(vertical: 21.v),
                      ),
                      Container(
                        height: 70.adaptSize,
                        width: 70.adaptSize,
                        margin: EdgeInsets.only(left: 76.h),
                        decoration: BoxDecoration(
                          color: appTheme.blueA700,
                          borderRadius: BorderRadius.circular(
                            35.h,
                          ),
                          border: Border.all(
                            color: theme.colorScheme.onErrorContainer
                                .withOpacity(1),
                            width: 6.h,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 14.v),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 1.v),
                      child: Text(
                        "lbl_gallery".tr,
                        style: CustomTextStyles.titleMediumMedium16,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 68.h),
                      child: Text(
                        "lbl_camera".tr,
                        style: CustomTextStyles.titleMedium16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
