import '../controller/settings_add_card_controller.dart';
import '../models/cardcomponent_item_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CardcomponentItemWidget extends StatelessWidget {
  CardcomponentItemWidget(
    this.cardcomponentItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CardcomponentItemModel cardcomponentItemModelObj;

  var controller = Get.find<SettingsAddCardController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillGray10002.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder11,
      ),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 14.v,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadiusStyle.circleBorder11,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Obx(
                  () => CustomImageView(
                    imagePath: cardcomponentItemModelObj.cardImage!.value,
                    height: 34.v,
                    width: 56.h,
                  ),
                ),
                Obx(
                  () => CustomImageView(
                    imagePath: cardcomponentItemModelObj.closeImage!.value,
                    height: 35.adaptSize,
                    width: 35.adaptSize,
                    margin: EdgeInsets.only(left: 156.h),
                  ),
                ),
              ],
            ),
            SizedBox(height: 33.v),
            Padding(
              padding: EdgeInsets.only(right: 2.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 2.v),
                    child: Obx(
                      () => Text(
                        cardcomponentItemModelObj.cardNumberText!.value,
                        style: CustomTextStyles.labelLargeNunitoSansSemiBold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 47.h),
                    child: Obx(
                      () => Text(
                        cardcomponentItemModelObj.cardExpiryText!.value,
                        style: CustomTextStyles.labelLargeNunitoSans,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.v),
            Padding(
              padding: EdgeInsets.only(right: 2.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Obx(
                    () => Text(
                      cardcomponentItemModelObj.cardHolderNameText!.value,
                      style: CustomTextStyles.labelMediumNunitoSansGray90001,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 102.h),
                    child: Obx(
                      () => Text(
                        cardcomponentItemModelObj.cardHolderDateText!.value,
                        style: CustomTextStyles.labelMediumNunitoSansGray90001,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 19.v),
          ],
        ),
      ),
    );
  }
}
