import 'controller/edit_card_controller.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/widgets/custom_elevated_button.dart';
import 'package:amit_s_application2/widgets/custom_icon_button.dart';
import 'package:amit_s_application2/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class EditCardBottomsheet extends StatelessWidget {
  EditCardBottomsheet(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  EditCardController controller;

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
              vertical: 22.v,
            ),
            decoration: AppDecoration.fillGray5003.copyWith(
              borderRadius: BorderRadiusStyle.customBorderTL9,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 6.v,
                    bottom: 3.v,
                  ),
                  child: Text(
                    "lbl_edit_card".tr,
                    style: CustomTextStyles.titleLargeBlack9000222,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 1.v),
                  child: CustomIconButton(
                    height: 35.adaptSize,
                    width: 35.adaptSize,
                    padding: EdgeInsets.all(9.h),
                    decoration: IconButtonStyleHelper.fillGray,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgThumbsUp,
                    ),
                  ),
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
              controller: controller.rominavalueController,
              hintText: "lbl_romina".tr,
              hintStyle: CustomTextStyles.bodyLargeRalewayBlack90002,
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
              hintText: "msg_1579".tr,
              hintStyle: CustomTextStyles.titleSmallBlack90002Medium,
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
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 10.h,
            vertical: 7.v,
          ),
          decoration: AppDecoration.fillGray10002.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder11,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 2.v),
                child: Text(
                  "lbl_12_222".tr,
                  style: CustomTextStyles.titleMediumBlack90002Medium_2,
                ),
              ),
            ],
          ),
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
            hintText: "lbl_209".tr,
            hintStyle: CustomTextStyles.titleMediumBlack90002Medium_2,
            textInputAction: TextInputAction.done,
          ),
        ],
      ),
    );
  }
}
