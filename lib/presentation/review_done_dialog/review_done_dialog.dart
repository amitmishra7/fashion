import 'controller/review_done_controller.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/widgets/custom_rating_bar.dart';
import 'package:flutter/material.dart';

class ReviewDoneDialog extends StatelessWidget {
  ReviewDoneDialog(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  ReviewDoneController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 347.h,
      padding: EdgeInsets.symmetric(
        horizontal: 61.h,
        vertical: 38.v,
      ),
      decoration: AppDecoration.fillOnErrorContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder18,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 20.v),
          Text(
            "lbl_done2".tr,
            style: CustomTextStyles.titleMedium19,
          ),
          SizedBox(height: 8.v),
          Text(
            "msg_thank_you_for_your".tr,
            style: CustomTextStyles.labelLargeNunitoSansBlack90002SemiBold,
          ),
          SizedBox(height: 13.v),
          CustomRatingBar(
            initialRating: 0,
            itemSize: 33,
          ),
        ],
      ),
    );
  }
}
