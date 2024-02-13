import '../controller/review_option_controller.dart';
import '../models/orderdetails1_item_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/widgets/custom_elevated_button.dart';
import 'package:amit_s_application2/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Orderdetails1ItemWidget extends StatelessWidget {
  Orderdetails1ItemWidget(
    this.orderdetails1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Orderdetails1ItemModel orderdetails1ItemModelObj;

  var controller = Get.find<ReviewOptionController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Card(
          clipBehavior: Clip.antiAlias,
          elevation: 0,
          margin: EdgeInsets.all(0),
          color: theme.colorScheme.onErrorContainer.withOpacity(1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusStyle.circleBorder11,
          ),
          child: Container(
            height: 109.v,
            width: 129.h,
            padding: EdgeInsets.all(3.h),
            decoration: AppDecoration.outlineBlack900023.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder11,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.img486cee221ce54,
                  height: 101.v,
                  width: 121.h,
                  radius: BorderRadius.circular(
                    5.h,
                  ),
                  alignment: Alignment.center,
                ),
                Obx(
                  () => CustomImageView(
                    imagePath: orderdetails1ItemModelObj.image2!.value,
                    height: 101.v,
                    width: 121.h,
                    radius: BorderRadius.circular(
                      5.h,
                    ),
                    alignment: Alignment.center,
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 10.h,
            top: 2.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 146.h,
                child: Obx(
                  () => Text(
                    orderdetails1ItemModelObj.text1!.value,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodySmall!.copyWith(
                      height: 1.33,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.v),
              Obx(
                () => Text(
                  orderdetails1ItemModelObj.text2!.value,
                  style: theme.textTheme.titleSmall,
                ),
              ),
              SizedBox(height: 15.v),
              SizedBox(
                width: 196.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomElevatedButton(
                      height: 30.v,
                      width: 103.h,
                      text: "lbl_april_06".tr,
                      buttonStyle: CustomButtonStyles.fillGrayTL9,
                      buttonTextStyle: CustomTextStyles.labelLargeBlack90002,
                    ),
                    CustomOutlinedButton(
                      height: 30.v,
                      width: 86.h,
                      text: "lbl_review".tr,
                      buttonTextStyle:
                          CustomTextStyles.titleMediumPrimaryMedium16,
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
