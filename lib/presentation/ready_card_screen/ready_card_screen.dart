import 'controller/ready_card_controller.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class ReadyCardScreen extends GetWidget<ReadyCardController> {
  const ReadyCardScreen({Key? key})
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
                ImageConstant.imgGroup2,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 24.h,
              vertical: 37.v,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 1.h),
                  decoration: AppDecoration.outlineBlack900021.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder30,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgPlaceholder01,
                        height: 338.v,
                        width: 326.h,
                      ),
                      SizedBox(height: 50.v),
                      Text(
                        "lbl_ready".tr,
                        style: theme.textTheme.headlineMedium,
                      ),
                      SizedBox(height: 11.v),
                      Container(
                        width: 230.h,
                        margin: EdgeInsets.only(
                          left: 48.h,
                          right: 47.h,
                        ),
                        child: Text(
                          "msg_lorem_ipsum_dolor3".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style:
                              CustomTextStyles.bodyLargeBlack9000219.copyWith(
                            height: 1.42,
                          ),
                        ),
                      ),
                      SizedBox(height: 32.v),
                      CustomElevatedButton(
                        height: 50.v,
                        width: 201.h,
                        text: "lbl_let_s_start".tr,
                        buttonStyle: CustomButtonStyles.fillPrimary,
                        buttonTextStyle:
                            CustomTextStyles.titleLargeNunitoSansGray10001,
                      ),
                      SizedBox(height: 44.v),
                    ],
                  ),
                ),
                SizedBox(height: 30.v),
                SizedBox(
                  height: 20.v,
                  child: AnimatedSmoothIndicator(
                    activeIndex: 0,
                    count: 4,
                    effect: ScrollingDotsEffect(
                      spacing: 20,
                      activeDotColor: theme.colorScheme.primary,
                      dotColor: appTheme.blue100,
                      dotHeight: 20.v,
                      dotWidth: 20.h,
                    ),
                  ),
                ),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
