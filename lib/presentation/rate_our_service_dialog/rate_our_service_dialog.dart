import 'controller/rate_our_service_controller.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/widgets/custom_elevated_button.dart';
import 'package:amit_s_application2/widgets/custom_icon_button.dart';
import 'package:amit_s_application2/widgets/custom_rating_bar.dart';
import 'package:amit_s_application2/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class RateOurServiceDialog extends StatelessWidget {
  RateOurServiceDialog(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  RateOurServiceController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 9.h,
        vertical: 30.v,
      ),
      child: Column(
        children: [
          Spacer(),
          _buildReviewCustomer(),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildReviewCustomer() {
    return Container(
      decoration: AppDecoration.fillOnErrorContainer.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder11,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 356.h,
            padding: EdgeInsets.symmetric(
              horizontal: 20.h,
              vertical: 13.v,
            ),
            decoration: AppDecoration.fillGray5003.copyWith(
              borderRadius: BorderRadiusStyle.customBorderTL9,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 5.v),
                Text(
                  "msg_rate_our_service".tr,
                  style: theme.textTheme.titleLarge,
                ),
              ],
            ),
          ),
          SizedBox(height: 16.v),
          Padding(
            padding: EdgeInsets.only(left: 20.h),
            child: Row(
              children: [
                Container(
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  decoration: AppDecoration.outlineOnErrorContainer1.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder18,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgPlaceholder0140x40,
                    height: 40.adaptSize,
                    width: 40.adaptSize,
                    alignment: Alignment.center,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 13.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_maggy_lee".tr,
                        style: CustomTextStyles.titleLargeBlueA700,
                      ),
                      SizedBox(height: 1.v),
                      Text(
                        "msg_customer_care_service".tr,
                        style: CustomTextStyles.labelLarge12,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 14.v),
          Padding(
            padding: EdgeInsets.only(left: 19.h),
            child: CustomRatingBar(
              initialRating: 0,
              itemSize: 33,
            ),
          ),
          SizedBox(height: 19.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.h),
            child: CustomTextFormField(
              controller: controller.commentController,
              hintText: "lbl_your_comment".tr,
              textInputAction: TextInputAction.done,
              alignment: Alignment.center,
              maxLines: 5,
            ),
          ),
          SizedBox(height: 30.v),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(
                left: 20.h,
                right: 15.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: CustomElevatedButton(
                      text: "lbl_next".tr,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 14.h,
                      top: 7.v,
                      bottom: 7.v,
                    ),
                    child: CustomIconButton(
                      height: 26.adaptSize,
                      width: 26.adaptSize,
                      padding: EdgeInsets.all(7.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgCloseOnerrorcontainer26x26,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10.v),
        ],
      ),
    );
  }
}
