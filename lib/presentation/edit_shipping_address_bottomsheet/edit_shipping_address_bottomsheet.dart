import 'controller/edit_shipping_address_controller.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/widgets/custom_elevated_button.dart';
import 'package:amit_s_application2/widgets/custom_icon_button.dart';
import 'package:amit_s_application2/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class EditShippingAddressBottomsheet extends StatelessWidget {
  EditShippingAddressBottomsheet(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  EditShippingAddressController controller;

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
          _buildHeader(),
          SizedBox(height: 15.v),
          _buildCountry(),
          SizedBox(height: 14.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "lbl_address".tr,
                style: CustomTextStyles.labelLargeNunitoSansBlack90002SemiBold,
              ),
            ),
          ),
          SizedBox(height: 1.v),
          _buildAddress(),
          SizedBox(height: 13.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "lbl_town_city".tr,
                style: CustomTextStyles.labelLargeNunitoSansBlack90002SemiBold,
              ),
            ),
          ),
          _buildCity(),
          SizedBox(height: 12.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "lbl_postcode".tr,
                style: CustomTextStyles.labelLargeNunitoSansBlack90002SemiBold,
              ),
            ),
          ),
          SizedBox(height: 1.v),
          _buildZipcode(),
          SizedBox(height: 16.v),
          _buildSaveChanges(),
          SizedBox(height: 20.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildHeader() {
    return Container(
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
            "msg_shipping_address".tr,
            style: CustomTextStyles.titleLargeBlack9000222,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCountry() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 3.v),
            child: Column(
              children: [
                Text(
                  "lbl_country".tr,
                  style:
                      CustomTextStyles.labelLargeNunitoSansBlack90002SemiBold,
                ),
                SizedBox(height: 2.v),
                Text(
                  "lbl_india".tr,
                  style: CustomTextStyles.titleLargeGray20002,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 17.v),
            child: CustomIconButton(
              height: 30.adaptSize,
              width: 30.adaptSize,
              padding: EdgeInsets.all(7.h),
              decoration: IconButtonStyleHelper.fillGrayTL15,
              child: CustomImageView(
                imagePath: ImageConstant.imgArrowRight,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAddress() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: CustomTextFormField(
        controller: controller.addressController,
        hintText: "msg_magadi_main_rd".tr,
        contentPadding: EdgeInsets.symmetric(vertical: 9.v),
      ),
    );
  }

  /// Section Widget
  Widget _buildCity() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: CustomTextFormField(
        controller: controller.cityController,
        hintText: "msg_bengaluru_karnataka".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildZipcode() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: CustomTextFormField(
        controller: controller.zipcodeController,
        hintText: "lbl_70000".tr,
        textInputAction: TextInputAction.done,
      ),
    );
  }

  /// Section Widget
  Widget _buildSaveChanges() {
    return CustomElevatedButton(
      text: "lbl_save_changes".tr,
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      buttonTextStyle: CustomTextStyles.bodyLargeOnErrorContainer,
    );
  }
}
