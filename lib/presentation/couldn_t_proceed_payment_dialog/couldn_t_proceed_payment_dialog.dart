import 'controller/couldn_t_proceed_payment_controller.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class CouldnTProceedPaymentDialog extends StatelessWidget {
  CouldnTProceedPaymentDialog(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  CouldnTProceedPaymentController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 347.h,
      padding: EdgeInsets.symmetric(
        horizontal: 26.h,
        vertical: 24.v,
      ),
      decoration: AppDecoration.fillOnErrorContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder18,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 34.v),
          SizedBox(
            width: 187.h,
            child: Text(
              "msg_we_couldn_t_proceed".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.titleMedium19.copyWith(
                height: 1.42,
              ),
            ),
          ),
          SizedBox(height: 6.v),
          Text(
            "msg_please_change_your".tr,
            style: CustomTextStyles.labelLargeNunitoSansBlack90002SemiBold,
          ),
          SizedBox(height: 23.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 11.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: CustomElevatedButton(
                    text: "lbl_try_again".tr,
                    margin: EdgeInsets.only(right: 8.h),
                    buttonStyle: CustomButtonStyles.fillGrayTL11,
                  ),
                ),
                Expanded(
                  child: CustomElevatedButton(
                    text: "lbl_change".tr,
                    margin: EdgeInsets.only(left: 8.h),
                    buttonStyle: CustomButtonStyles.fillGrayTL111,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
