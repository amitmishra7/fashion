import '../controller/to_recieve_controller.dart';
import '../models/orderdetails_item_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class OrderdetailsItemWidget extends StatelessWidget {
  OrderdetailsItemWidget(
    this.orderdetailsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  OrderdetailsItemModel orderdetailsItemModelObj;

  var controller = Get.find<ToRecieveController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.all(4.h),
          decoration: AppDecoration.outlineBlack900023.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder11,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: 80.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 39.adaptSize,
                      width: 39.adaptSize,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Obx(
                            () => CustomImageView(
                              imagePath:
                                  orderdetailsItemModelObj.orderImage1!.value,
                              height: 39.adaptSize,
                              width: 39.adaptSize,
                              radius: BorderRadius.circular(
                                5.h,
                              ),
                              alignment: Alignment.center,
                            ),
                          ),
                          Obx(
                            () => CustomImageView(
                              imagePath:
                                  orderdetailsItemModelObj.orderImage2!.value,
                              height: 39.adaptSize,
                              width: 39.adaptSize,
                              radius: BorderRadius.circular(
                                5.h,
                              ),
                              alignment: Alignment.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 39.adaptSize,
                      width: 39.adaptSize,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Obx(
                            () => CustomImageView(
                              imagePath:
                                  orderdetailsItemModelObj.orderImage3!.value,
                              height: 39.adaptSize,
                              width: 39.adaptSize,
                              radius: BorderRadius.circular(
                                5.h,
                              ),
                              alignment: Alignment.center,
                            ),
                          ),
                          Obx(
                            () => CustomImageView(
                              imagePath:
                                  orderdetailsItemModelObj.orderImage4!.value,
                              height: 39.adaptSize,
                              width: 39.adaptSize,
                              radius: BorderRadius.circular(
                                5.h,
                              ),
                              alignment: Alignment.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 1.v),
              SizedBox(
                height: 39.v,
                width: 80.h,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Obx(
                      () => CustomImageView(
                        imagePath: orderdetailsItemModelObj.orderImage5!.value,
                        height: 39.v,
                        width: 80.h,
                        radius: BorderRadius.circular(
                          5.h,
                        ),
                        alignment: Alignment.center,
                      ),
                    ),
                    Obx(
                      () => CustomImageView(
                        imagePath: orderdetailsItemModelObj.orderImage6!.value,
                        height: 39.v,
                        width: 80.h,
                        radius: BorderRadius.circular(
                          5.h,
                        ),
                        alignment: Alignment.center,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 3.v,
            bottom: 4.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 232.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 4.v),
                      child: Obx(
                        () => Text(
                          orderdetailsItemModelObj.orderTitle!.value,
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                    ),
                    Container(
                      width: 61.h,
                      padding: EdgeInsets.symmetric(
                        horizontal: 8.h,
                        vertical: 1.v,
                      ),
                      decoration: AppDecoration.fillGray.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder4,
                      ),
                      child: Obx(
                        () => Text(
                          orderdetailsItemModelObj.orderItemsLabel!.value,
                          style: CustomTextStyles.labelLargeBlack90002,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 3.v),
              Obx(
                () => Text(
                  orderdetailsItemModelObj.orderDelivery!.value,
                  style: CustomTextStyles.titleSmallMedium,
                ),
              ),
              SizedBox(height: 9.v),
              SizedBox(
                width: 232.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 4.v,
                        bottom: 3.v,
                      ),
                      child: Obx(
                        () => Text(
                          orderdetailsItemModelObj.orderStatus!.value,
                          style: CustomTextStyles.titleMedium18,
                        ),
                      ),
                    ),
                    CustomElevatedButton(
                      height: 30.v,
                      width: 86.h,
                      text: "lbl_track".tr,
                      buttonTextStyle:
                          CustomTextStyles.titleMediumOnErrorContainerMedium,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
