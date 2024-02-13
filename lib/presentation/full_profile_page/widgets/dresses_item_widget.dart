import '../controller/full_profile_controller.dart';
import '../models/dresses_item_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DressesItemWidget extends StatelessWidget {
  DressesItemWidget(
    this.dressesItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  DressesItemModel dressesItemModelObj;

  var controller = Get.find<FullProfileController>();

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
