import '../controller/product_variations_controller.dart';
import '../models/dceaaffiftyfour_item_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DceaaffiftyfourItemWidget extends StatelessWidget {
  DceaaffiftyfourItemWidget(
    this.dceaaffiftyfourItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  DceaaffiftyfourItemModel dceaaffiftyfourItemModelObj;

  var controller = Get.find<ProductVariationsController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 79.adaptSize,
      width: 79.adaptSize,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: dceaaffiftyfourItemModelObj.dCEAAFFiftyFour!.value,
              height: 79.adaptSize,
              width: 79.adaptSize,
              radius: BorderRadius.circular(
                5.h,
              ),
              alignment: Alignment.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              bottom: 7.v,
            ),
            child: Obx(
              () => CustomIconButton(
                height: 22.adaptSize,
                width: 22.adaptSize,
                padding: EdgeInsets.all(6.h),
                decoration: IconButtonStyleHelper.outlineOnErrorContainer,
                alignment: Alignment.bottomLeft,
                child: CustomImageView(
                  imagePath: dceaaffiftyfourItemModelObj.check!.value,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
