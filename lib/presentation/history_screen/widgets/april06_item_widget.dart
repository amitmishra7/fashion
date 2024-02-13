import '../controller/history_controller.dart';
import '../models/april06_item_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class April06ItemWidget extends StatelessWidget {
  April06ItemWidget(
    this.april06ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  April06ItemModel april06ItemModelObj;

  var controller = Get.find<HistoryController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 109.v,
        width: 129.h,
        padding: EdgeInsets.symmetric(
          horizontal: 4.h,
          vertical: 3.v,
        ),
        decoration: AppDecoration.outlineBlack900023.copyWith(
          borderRadius: BorderRadiusStyle.circleBorder11,
        ),
        child: Obx(
          () => CustomImageView(
            imagePath: april06ItemModelObj.afb!.value,
            height: 101.v,
            width: 121.h,
            radius: BorderRadius.circular(
              5.h,
            ),
            alignment: Alignment.center,
          ),
        ),
      ),
    );
  }
}
