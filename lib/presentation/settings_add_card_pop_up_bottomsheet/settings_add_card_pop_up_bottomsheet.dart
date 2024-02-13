import 'controller/settings_add_card_pop_up_controller.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/widgets/custom_elevated_button.dart';
import 'package:amit_s_application2/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SettingsAddCardPopUpBottomsheet extends StatelessWidget {
  SettingsAddCardPopUpBottomsheet(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  SettingsAddCardPopUpController controller;

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
              vertical: 25.v,
            ),
            decoration: AppDecoration.fillGray5003.copyWith(
              borderRadius: BorderRadiusStyle.customBorderTL9,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 2.v),
                Text(
                  "lbl_add_card".tr,
                  style: CustomTextStyles.titleLargeBlack9000222,
                ),
              ],
            ),
          ),
          SizedBox(height: 22.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "lbl_card_holder".tr,
                style: CustomTextStyles.labelLargeNunitoSansBlack90002SemiBold,
              ),
            ),
          ),
          SizedBox(height: 1.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.h),
            child: CustomTextFormField(
              controller: controller.requiredThreeController,
              hintText: "lbl_required".tr,
              hintStyle: CustomTextStyles.titleMediumIndigo200,
            ),
          ),
          SizedBox(height: 17.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "lbl_card_number".tr,
                style: CustomTextStyles.labelLargeNunitoSansBlack90002SemiBold,
              ),
            ),
          ),
          SizedBox(height: 1.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.h),
            child: CustomTextFormField(
              controller: controller.cardNumberController,
              hintText: "lbl_required".tr,
              hintStyle: CustomTextStyles.titleMediumIndigo200,
            ),
          ),
          SizedBox(height: 18.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildValid(),
                _buildCVV(),
              ],
            ),
          ),
          SizedBox(height: 17.v),
          CustomElevatedButton(
            text: "lbl_save_changes".tr,
            margin: EdgeInsets.symmetric(horizontal: 20.h),
          ),
          SizedBox(height: 20.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildValid() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_valid".tr,
          style: CustomTextStyles.labelLargeNunitoSansBlack90002SemiBold,
        ),
        SizedBox(height: 1.v),
        CustomTextFormField(
          width: 165.h,
          controller: controller.requiredThreeController1,
          hintText: "lbl_required".tr,
          hintStyle: CustomTextStyles.titleMediumIndigo200,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildCVV() {
    return Padding(
      padding: EdgeInsets.only(left: 5.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_cvv".tr,
            style: CustomTextStyles.labelLargeNunitoSansBlack90002SemiBold,
          ),
          SizedBox(height: 1.v),
          CustomTextFormField(
            width: 165.h,
            controller: controller.cvvController,
            hintText: "lbl_required".tr,
            hintStyle: CustomTextStyles.titleMediumIndigo200,
            textInputAction: TextInputAction.done,
          ),
        ],
      ),
    );
  }
}
