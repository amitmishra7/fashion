import '../controller/recently_viewed_date_chosen_controller.dart';
import '../models/placeholderone1_item_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Placeholderone1ItemWidget extends StatelessWidget {
  Placeholderone1ItemWidget(
    this.placeholderone1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Placeholderone1ItemModel placeholderone1ItemModelObj;

  var controller = Get.find<RecentlyViewedDateChosenController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Card(
          clipBehavior: Clip.antiAlias,
          elevation: 0,
          margin: EdgeInsets.all(0),
          color: theme.colorScheme.onErrorContainer.withOpacity(1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusStyle.circleBorder11,
          ),
          child: Container(
            height: 181.v,
            width: 165.h,
            padding: EdgeInsets.all(5.h),
            decoration: AppDecoration.outlineBlack900023.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder11,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Obx(
                  () => CustomImageView(
                    imagePath: placeholderone1ItemModelObj.image1!.value,
                    height: 171.v,
                    width: 155.h,
                    radius: BorderRadius.circular(
                      5.h,
                    ),
                    alignment: Alignment.center,
                  ),
                ),
                Obx(
                  () => CustomImageView(
                    imagePath: placeholderone1ItemModelObj.image2!.value,
                    height: 171.v,
                    width: 155.h,
                    radius: BorderRadius.circular(
                      5.h,
                    ),
                    alignment: Alignment.center,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 6.v),
        SizedBox(
          width: 116.h,
          child: Obx(
            () => Text(
              placeholderone1ItemModelObj.text1!.value,
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
            placeholderone1ItemModelObj.text2!.value,
            style: theme.textTheme.titleMedium,
          ),
        ),
      ],
    );
  }
}
