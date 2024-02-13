import '../controller/payment_methods_history_2_cards_controller.dart';
import '../models/card_item_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CardItemWidget extends StatelessWidget {
  CardItemWidget(
    this.cardItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CardItemModel cardItemModelObj;

  var controller = Get.find<PaymentMethodsHistory2CardsController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 14.v,
          ),
          decoration: AppDecoration.fillGray10002.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder11,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Obx(
                    () => CustomImageView(
                      imagePath: cardItemModelObj.cardImage1!.value,
                      height: 34.v,
                      width: 56.h,
                    ),
                  ),
                  Obx(
                    () => CustomImageView(
                      imagePath: cardItemModelObj.cardImage2!.value,
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
                          cardItemModelObj.cardTitle1!.value,
                          style: CustomTextStyles.labelLargeNunitoSansSemiBold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 47.h),
                      child: Obx(
                        () => Text(
                          cardItemModelObj.cardTitle2!.value,
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
                        cardItemModelObj.cardSubtitle1!.value,
                        style: CustomTextStyles.labelMediumNunitoSansGray90001,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 102.h),
                      child: Obx(
                        () => Text(
                          cardItemModelObj.cardSubtitle2!.value,
                          style:
                              CustomTextStyles.labelMediumNunitoSansGray90001,
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
      ),
    );
  }
}
