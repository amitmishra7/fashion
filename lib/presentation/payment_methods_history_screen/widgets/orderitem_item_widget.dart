import '../controller/payment_methods_history_controller.dart';
import '../models/orderitem_item_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class OrderitemItemWidget extends StatelessWidget {
  OrderitemItemWidget(
    this.orderitemItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  OrderitemItemModel orderitemItemModelObj;

  var controller = Get.find<PaymentMethodsHistoryController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 18.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.fillGray10002.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: orderitemItemModelObj.imageClass!.value,
              height: 18.adaptSize,
              width: 18.adaptSize,
              margin: EdgeInsets.symmetric(vertical: 8.v),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 13.h,
              top: 3.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    orderitemItemModelObj.titleText!.value,
                    style: CustomTextStyles.labelMediumNunitoSans,
                  ),
                ),
                SizedBox(height: 1.v),
                Obx(
                  () => Text(
                    orderitemItemModelObj.orderNumber!.value,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 8.v,
              right: 2.h,
              bottom: 7.v,
            ),
            child: Obx(
              () => Text(
                orderitemItemModelObj.price!.value,
                style: CustomTextStyles.titleMediumBlack90002_1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
