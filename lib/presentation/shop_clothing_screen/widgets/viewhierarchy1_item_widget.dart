import '../controller/shop_clothing_controller.dart';
import '../models/viewhierarchy1_item_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Viewhierarchy1ItemWidget extends StatelessWidget {
  Viewhierarchy1ItemWidget(
    this.viewhierarchy1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Viewhierarchy1ItemModel viewhierarchy1ItemModelObj;

  var controller = Get.find<ShopClothingController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
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
        SizedBox(height: 9.v),
        Obx(
          () => Text(
            viewhierarchy1ItemModelObj.dynamicText!.value,
            style: theme.textTheme.labelLarge,
          ),
        ),
      ],
    );
  }
}
