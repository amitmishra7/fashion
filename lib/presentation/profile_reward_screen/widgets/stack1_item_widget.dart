import '../controller/profile_reward_controller.dart';
import '../models/stack1_item_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Stack1ItemWidget extends StatelessWidget {
  Stack1ItemWidget(
    this.stack1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Stack1ItemModel stack1ItemModelObj;

  var controller = Get.find<ProfileRewardController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 104.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Card(
          clipBehavior: Clip.antiAlias,
          elevation: 0,
          margin: EdgeInsets.all(0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusStyle.circleBorder11,
          ),
          child: Container(
            height: 175.v,
            width: 104.h,
            decoration: AppDecoration.outlineBlack900022.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder11,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Obx(
                  () => CustomImageView(
                    imagePath: stack1ItemModelObj.liveImage!.value,
                    height: 175.v,
                    width: 104.h,
                    radius: BorderRadius.circular(
                      9.h,
                    ),
                    alignment: Alignment.center,
                  ),
                ),
                Obx(
                  () => CustomIconButton(
                    height: 29.adaptSize,
                    width: 29.adaptSize,
                    padding: EdgeInsets.all(6.h),
                    alignment: Alignment.center,
                    child: CustomImageView(
                      imagePath: stack1ItemModelObj.userIcon!.value,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
