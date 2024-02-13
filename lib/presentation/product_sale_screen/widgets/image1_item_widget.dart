import '../controller/product_sale_controller.dart';
import '../models/image1_item_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Image1ItemWidget extends StatelessWidget {
  Image1ItemWidget(
    this.image1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Image1ItemModel image1ItemModelObj;

  var controller = Get.find<ProductSaleController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Obx(
        () => CustomImageView(
          imagePath: image1ItemModelObj.bedfbeb!.value,
          height: 395.v,
          width: 375.h,
        ),
      ),
    );
  }
}
