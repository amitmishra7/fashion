import 'controller/your_card_been_charged_controller.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class YourCardBeenChargedDialog extends StatelessWidget {
  YourCardBeenChargedDialog(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  YourCardBeenChargedController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 347.h,
      padding: EdgeInsets.symmetric(
        horizontal: 55.h,
        vertical: 25.v,
      ),
      decoration: AppDecoration.fillOnErrorContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder18,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 33.v),
          Text(
            "lbl_done2".tr,
            style: CustomTextStyles.titleMedium19,
          ),
          SizedBox(height: 8.v),
          Text(
            "msg_you_card_has_been".tr,
            style: CustomTextStyles.labelLargeNunitoSansBlack90002SemiBold,
          ),
          SizedBox(height: 20.v),
          CustomElevatedButton(
            width: 163.h,
            text: "lbl_track_my_order".tr,
            buttonStyle: CustomButtonStyles.fillGrayTL111,
            buttonTextStyle: CustomTextStyles.bodyLargeBlack90002_1,
          ),
        ],
      ),
    );
  }
}
