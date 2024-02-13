import '../controller/full_profile_controller.dart';
import '../models/justforyou_item_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class JustforyouItemWidget extends StatelessWidget {
  JustforyouItemWidget(
    this.justforyouItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  JustforyouItemModel justforyouItemModelObj;

  var controller = Get.find<FullProfileController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 181.v,
          width: 165.h,
          padding: EdgeInsets.all(5.h),
          decoration: AppDecoration.outlineBlack900023.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder11,
          ),
          child: Obx(
            () => CustomImageView(
              imagePath: justforyouItemModelObj.image!.value,
              height: 171.v,
              width: 155.h,
              radius: BorderRadius.circular(
                5.h,
              ),
              alignment: Alignment.center,
            ),
          ),
        ),
        SizedBox(height: 6.v),
        SizedBox(
          width: 116.h,
          child: Obx(
            () => Text(
              justforyouItemModelObj.text1!.value,
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
            justforyouItemModelObj.text2!.value,
            style: theme.textTheme.titleMedium,
          ),
        ),
      ],
    );
  }
}
