import '../controller/product_sale_controller.dart';
import '../models/productlist1_item_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Productlist1ItemWidget extends StatelessWidget {
  Productlist1ItemWidget(
    this.productlist1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Productlist1ItemModel productlist1ItemModelObj;

  var controller = Get.find<ProductSaleController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 75.h,
      child: Obx(
        () => CustomImageView(
          imagePath: productlist1ItemModelObj.cdfe!.value,
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
