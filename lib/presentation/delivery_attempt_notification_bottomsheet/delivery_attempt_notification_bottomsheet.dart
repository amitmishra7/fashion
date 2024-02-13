import 'controller/delivery_attempt_notification_controller.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class DeliveryAttemptNotificationBottomsheet extends StatelessWidget {
  DeliveryAttemptNotificationBottomsheet(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  DeliveryAttemptNotificationController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: AppDecoration.fillOnErrorContainer.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL9,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 20.h,
              vertical: 23.v,
            ),
            decoration: AppDecoration.fillGray5003.copyWith(
              borderRadius: BorderRadiusStyle.customBorderTL9,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 6.v),
                Text(
                  "msg_delivery_was_not".tr,
                  style: CustomTextStyles.titleLargeBlack9000222,
                ),
              ],
            ),
          ),
          SizedBox(height: 11.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "msg_what_should_i_do".tr,
                style: CustomTextStyles.titleMediumOnPrimary,
              ),
            ),
          ),
          SizedBox(height: 9.v),
          Container(
            width: 327.h,
            margin: EdgeInsets.only(
              left: 20.h,
              right: 27.h,
            ),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "msg_don_t_worry_we2".tr,
                    style:
                        CustomTextStyles.labelLargeNunitoSansff000000.copyWith(
                      height: 1.54,
                    ),
                  ),
                  TextSpan(
                    text: "lbl_00_000_000_000".tr,
                    style: CustomTextStyles.bodyMediumff000000,
                  ),
                  TextSpan(
                    text: "msg_or_chat_with_our".tr,
                    style: CustomTextStyles.labelLargeNunitoSansff000000,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(height: 10.v),
          CustomElevatedButton(
            text: "lbl_chat_now".tr,
            margin: EdgeInsets.symmetric(horizontal: 20.h),
          ),
          SizedBox(height: 21.v),
        ],
      ),
    );
  }
}
