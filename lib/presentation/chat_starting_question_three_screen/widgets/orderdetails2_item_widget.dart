import '../controller/chat_starting_question_three_controller.dart';
import '../models/orderdetails2_item_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Orderdetails2ItemWidget extends StatelessWidget {
  Orderdetails2ItemWidget(
    this.orderdetails2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Orderdetails2ItemModel orderdetails2ItemModelObj;

  var controller = Get.find<ChatStartingQuestionThreeController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4.v),
      decoration: AppDecoration.outlinePrimary3.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder11,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGroup1000004655,
            height: 89.adaptSize,
            width: 89.adaptSize,
            margin: EdgeInsets.only(bottom: 2.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 4.v,
              bottom: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 218.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 4.v),
                        child: Obx(
                          () => Text(
                            orderdetails2ItemModelObj.orderTitle!.value,
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
                            orderdetails2ItemModelObj.orderItems!.value,
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
                    orderdetails2ItemModelObj.deliveryMethod!.value,
                    style: CustomTextStyles.titleSmallMedium,
                  ),
                ),
                SizedBox(height: 12.v),
                SizedBox(
                  width: 216.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 6.v,
                          bottom: 1.v,
                        ),
                        child: Obx(
                          () => Text(
                            orderdetails2ItemModelObj.shipmentStatus!.value,
                            style: CustomTextStyles.titleMedium18,
                          ),
                        ),
                      ),
                      CustomElevatedButton(
                        height: 30.v,
                        width: 86.h,
                        text: "lbl_selected".tr,
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
      ),
    );
  }
}
