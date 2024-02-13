import '../controller/choose_your_currency_controller.dart';
import '../models/currencyselector_item_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CurrencyselectorItemWidget extends StatelessWidget {
  CurrencyselectorItemWidget(
    this.currencyselectorItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CurrencyselectorItemModel currencyselectorItemModelObj;

  var controller = Get.find<ChooseYourCurrencyController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.fillIndigo.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder11,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              bottom: 1.v,
            ),
            child: Obx(
              () => Text(
                currencyselectorItemModelObj.title!.value,
                style: CustomTextStyles.titleMediumNunitoSansBlack90002SemiBold,
              ),
            ),
          ),
          Container(
            height: 22.adaptSize,
            width: 22.adaptSize,
            padding: EdgeInsets.symmetric(
              horizontal: 6.h,
              vertical: 8.v,
            ),
            decoration: AppDecoration.outlineOnErrorContainer.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder11,
            ),
            child: Obx(
              () => CustomImageView(
                imagePath: currencyselectorItemModelObj.image!.value,
                height: 4.v,
                width: 6.h,
                alignment: Alignment.centerRight,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
