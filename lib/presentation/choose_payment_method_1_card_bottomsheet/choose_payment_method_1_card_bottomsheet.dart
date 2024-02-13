import 'controller/choose_payment_method_1_card_controller.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';

class ChoosePaymentMethod1CardBottomsheet extends StatelessWidget {
  ChoosePaymentMethod1CardBottomsheet(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  ChoosePaymentMethod1CardController controller;

  @override
  Widget build(BuildContext context) {
    return _buildTitle();
  }

  /// Section Widget
  Widget _buildTitle() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.fillIndigo.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder11,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Obx(
            () => Padding(
              padding: EdgeInsets.only(
                top: 2.v,
                bottom: 1.v,
              ),
              child: CustomRadioButton(
                text: "lbl_standard".tr,
                value: "lbl_standard".tr,
                groupValue: controller.radioGroup.value,
                textStyle: CustomTextStyles.titleMediumBlack90002Medium,
                onChange: (value) {
                  controller.radioGroup.value = value;
                },
              ),
            ),
          ),
          Container(
            width: 72.h,
            margin: EdgeInsets.only(left: 7.h),
            padding: EdgeInsets.symmetric(
              horizontal: 11.h,
              vertical: 2.v,
            ),
            decoration: AppDecoration.fillGray5002.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder4,
            ),
            child: Text(
              "lbl_5_7_days".tr,
              style: CustomTextStyles.labelLargePrimary,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(85.h, 5.v, 8.h, 1.v),
            child: Text(
              "lbl_free".tr,
              style: CustomTextStyles.titleMediumBlack90002,
            ),
          ),
        ],
      ),
    );
  }
}
