import '../controller/shop_clothing_on_scroll_controller.dart';
import '../models/dynamictext_item_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DynamictextItemWidget extends StatelessWidget {
  DynamictextItemWidget(
    this.dynamictextItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  DynamictextItemModel dynamictextItemModelObj;

  var controller = Get.find<ShopClothingOnScrollController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 116.h,
          child: Obx(
            () => Text(
              dynamictextItemModelObj.dynamicText!.value,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodySmall!.copyWith(
                height: 1.33,
              ),
            ),
          ),
        ),
        SizedBox(height: 4.v),
        Obx(
          () => Text(
            dynamictextItemModelObj.dynamicText1!.value,
            style: theme.textTheme.titleMedium,
          ),
        ),
      ],
    );
  }
}
