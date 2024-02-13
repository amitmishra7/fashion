import '../controller/product_full_controller.dart';
import '../models/productlist2_item_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Productlist2ItemWidget extends StatelessWidget {
  Productlist2ItemWidget(
    this.productlist2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Productlist2ItemModel productlist2ItemModelObj;

  var controller = Get.find<ProductFullController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 75.h,
      child: Obx(
        () => CustomImageView(
          imagePath: productlist2ItemModelObj.babac!.value,
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
