import '../password_recovery_screen/widgets/smscomponentlist_item_widget.dart';
import 'controller/password_recovery_controller.dart';
import 'models/smscomponentlist_item_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class PasswordRecoveryScreen extends GetWidget<PasswordRecoveryController> {
  const PasswordRecoveryScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildPasswordRecoveryStack(),
              SizedBox(height: 8.v),
              Text(
                "msg_password_recovery".tr,
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 7.v),
              SizedBox(
                width: 248.h,
                child: Text(
                  "msg_how_you_would_like".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyLargeBlack9000219.copyWith(
                    height: 1.42,
                  ),
                ),
              ),
              SizedBox(height: 29.v),
              _buildSmsComponentList(),
              Spacer(),
              CustomElevatedButton(
                height: 61.v,
                text: "lbl_next".tr,
                margin: EdgeInsets.symmetric(horizontal: 20.h),
                buttonStyle: CustomButtonStyles.fillPrimary,
                buttonTextStyle: CustomTextStyles.titleLargeNunitoSansGray10001,
              ),
              SizedBox(height: 26.v),
              Opacity(
                opacity: 0.9,
                child: Text(
                  "lbl_cancel".tr,
                  style: CustomTextStyles.bodyMediumGray90001Light,
                ),
              ),
              SizedBox(height: 69.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordRecoveryStack() {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        width: 354.h,
        margin: EdgeInsets.only(left: 20.h),
        padding: EdgeInsets.symmetric(
          horizontal: 114.h,
          vertical: 7.v,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              ImageConstant.imgGroup26,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 97.v),
            Container(
              height: 105.adaptSize,
              width: 105.adaptSize,
              padding: EdgeInsets.all(7.h),
              decoration: AppDecoration.outlineBlack90002.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder52,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgImage,
                height: 91.adaptSize,
                width: 91.adaptSize,
                alignment: Alignment.center,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSmsComponentList() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 88.h),
      child: Obx(
        () => ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 10.v,
            );
          },
          itemCount: controller.passwordRecoveryModelObj.value
              .smscomponentlistItemList.value.length,
          itemBuilder: (context, index) {
            SmscomponentlistItemModel model = controller
                .passwordRecoveryModelObj
                .value
                .smscomponentlistItemList
                .value[index];
            return SmscomponentlistItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
