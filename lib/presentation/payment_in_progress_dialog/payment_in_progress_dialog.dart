import 'controller/payment_in_progress_controller.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

class PaymentInProgressDialog extends StatelessWidget {
  PaymentInProgressDialog(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  PaymentInProgressController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 347.h,
      padding: EdgeInsets.symmetric(
        horizontal: 67.h,
        vertical: 40.v,
      ),
      decoration: AppDecoration.fillOnErrorContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder18,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 18.v),
          Text(
            "msg_payment_is_in_progress".tr,
            style: CustomTextStyles.titleLargeBlack9000220,
          ),
          SizedBox(height: 9.v),
          Text(
            "msg_please_wait_a_few".tr,
            style: CustomTextStyles.labelLargeNunitoSansBlack90002SemiBold,
          ),
        ],
      ),
    );
  }
}
