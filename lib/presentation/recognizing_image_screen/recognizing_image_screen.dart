import 'controller/recognizing_image_controller.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class RecognizingImageScreen extends GetWidget<RecognizingImageController> {
  const RecognizingImageScreen({Key? key})
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
                ImageConstant.img31RecognizingImage,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(vertical: 46.v),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Spacer(),
                Container(
                  height: 10.v,
                  width: 215.h,
                  decoration: BoxDecoration(
                    color: appTheme.gray10003,
                    borderRadius: BorderRadius.circular(
                      5.h,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(
                      5.h,
                    ),
                    child: LinearProgressIndicator(
                      value: 0.18,
                      backgroundColor: appTheme.gray10003,
                      valueColor: AlwaysStoppedAnimation<Color>(
                        appTheme.blueA700,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 13.v),
                Text(
                  "lbl_recognizing".tr,
                  style: CustomTextStyles.titleMediumOnErrorContainer,
                ),
                SizedBox(height: 21.v),
                CustomIconButton(
                  height: 50.adaptSize,
                  width: 50.adaptSize,
                  padding: EdgeInsets.all(17.h),
                  decoration: IconButtonStyleHelper.fillOnErrorContainer,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgCloseBlack90002,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
