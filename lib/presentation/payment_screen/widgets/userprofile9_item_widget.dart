import '../controller/payment_controller.dart';
import '../models/userprofile9_item_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Userprofile9ItemWidget extends StatelessWidget {
  Userprofile9ItemWidget(
    this.userprofile9ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile9ItemModel userprofile9ItemModelObj;

  var controller = Get.find<PaymentController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 60.v,
          width: 65.h,
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: 60.adaptSize,
                  width: 60.adaptSize,
                  padding: EdgeInsets.all(5.h),
                  decoration: AppDecoration.outlineBlack900024.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder30,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgImage,
                    height: 50.adaptSize,
                    width: 50.adaptSize,
                    alignment: Alignment.center,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 22.adaptSize,
                  margin: EdgeInsets.only(top: 9.v),
                  padding: EdgeInsets.symmetric(
                    horizontal: 7.h,
                    vertical: 2.v,
                  ),
                  decoration: AppDecoration.outlineOnErrorContainer2.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder11,
                  ),
                  child: Obx(
                    () => Text(
                      userprofile9ItemModelObj.userText!.value,
                      style: CustomTextStyles.labelLargeBlack90002Bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 140.h,
          margin: EdgeInsets.only(
            left: 9.h,
            top: 12.v,
            bottom: 15.v,
          ),
          child: Obx(
            () => Text(
              userprofile9ItemModelObj.loremText!.value,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodySmall!.copyWith(
                height: 1.33,
              ),
            ),
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(
            top: 19.v,
            bottom: 18.v,
          ),
          child: Obx(
            () => Text(
              userprofile9ItemModelObj.titleText!.value,
              style: CustomTextStyles.titleMedium18,
            ),
          ),
        ),
      ],
    );
  }
}
