import '../controller/product_controller.dart';
import '../models/image_item_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ImageItemWidget extends StatelessWidget {
  ImageItemWidget(
    this.imageItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ImageItemModel imageItemModelObj;

  var controller = Get.find<ProductController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Obx(
        () => CustomImageView(
          imagePath: imageItemModelObj.eb!.value,
          height: 395.v,
          width: 375.h,
        ),
      ),
    );
  }
}
