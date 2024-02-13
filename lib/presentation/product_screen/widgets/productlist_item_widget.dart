import '../controller/product_controller.dart';
import '../models/productlist_item_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProductlistItemWidget extends StatelessWidget {
  ProductlistItemWidget(
    this.productlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProductlistItemModel productlistItemModelObj;

  var controller = Get.find<ProductController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 75.h,
      child: Obx(
        () => CustomImageView(
          imagePath: productlistItemModelObj.aeca!.value,
          height: 75.adaptSize,
          width: 75.adaptSize,
          radius: BorderRadius.circular(
            5.h,
          ),
        ),
      ),
    );
  }
}
