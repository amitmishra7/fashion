import 'controller/hello_card_controller.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class HelloCardScreen extends GetWidget<HelloCardController> {
  const HelloCardScreen({Key? key})
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
            alignment: Alignment.bottomCenter,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 24.h,
                    vertical: 37.v,
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        ImageConstant.imgGroup2,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 2.v),
                      Container(
                        margin: EdgeInsets.only(left: 1.h),
                        decoration: AppDecoration.outlineBlack900021.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder30,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgImage338x326,
                              height: 338.v,
                              width: 326.h,
                            ),
                            SizedBox(height: 47.v),
                            Text(
                              "lbl_hello".tr,
                              style: theme.textTheme.headlineMedium,
                            ),
                            SizedBox(height: 14.v),
                            Container(
                              width: 230.h,
                              margin: EdgeInsets.only(
                                left: 48.h,
                                right: 47.h,
                              ),
                              child: Text(
                                "msg_lorem_ipsum_dolor2".tr,
                                maxLines: 4,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: CustomTextStyles.bodyLargeBlack9000219
                                    .copyWith(
                                  height: 1.42,
                                ),
                              ),
                            ),
                            SizedBox(height: 70.v),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 20.v,
                  margin: EdgeInsets.only(bottom: 5.v),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
