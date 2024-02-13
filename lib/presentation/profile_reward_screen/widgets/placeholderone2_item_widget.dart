import '../controller/profile_reward_controller.dart';
import '../models/placeholderone2_item_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Placeholderone2ItemWidget extends StatelessWidget {
  Placeholderone2ItemWidget(
    this.placeholderone2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Placeholderone2ItemModel placeholderone2ItemModelObj;

  var controller = Get.find<ProfileRewardController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60.h,
      child: Align(
        alignment: Alignment.center,
        child: Container(
          height: 60.adaptSize,
          width: 60.adaptSize,
          padding: EdgeInsets.all(5.h),
          decoration: AppDecoration.outlineBlueGray.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder30,
          ),
          child: Obx(
            () => CustomImageView(
              imagePath: placeholderone2ItemModelObj.placeholderOne!.value,
              height: 50.adaptSize,
              width: 50.adaptSize,
              alignment: Alignment.center,
            ),
          ),
        ),
      ),
    );
  }
}
