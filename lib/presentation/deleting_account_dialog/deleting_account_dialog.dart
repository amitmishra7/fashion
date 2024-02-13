import 'controller/deleting_account_controller.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class DeletingAccountDialog extends StatelessWidget {
  DeletingAccountDialog(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  DeletingAccountController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 347.h,
      padding: EdgeInsets.symmetric(
        horizontal: 37.h,
        vertical: 24.v,
      ),
      decoration: AppDecoration.fillOnErrorContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder18,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 34.v),
          Container(
            width: 208.h,
            margin: EdgeInsets.only(
              left: 33.h,
              right: 32.h,
            ),
            child: Text(
              "msg_you_are_going_to".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.titleMedium19.copyWith(
                height: 1.42,
              ),
            ),
          ),
          SizedBox(height: 4.v),
          Text(
            "msg_you_won_t_be_able".tr,
            style: CustomTextStyles.labelLargeNunitoSansBlack90002SemiBold,
          ),
          SizedBox(height: 25.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: CustomElevatedButton(
                    text: "lbl_cancel".tr,
                    margin: EdgeInsets.only(right: 8.h),
                    buttonStyle: CustomButtonStyles.fillGrayTL11,
                  ),
                ),
                Expanded(
                  child: CustomElevatedButton(
                    text: "lbl_delete".tr,
                    margin: EdgeInsets.only(left: 8.h),
                    buttonStyle: CustomButtonStyles.fillRedTL11,
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
