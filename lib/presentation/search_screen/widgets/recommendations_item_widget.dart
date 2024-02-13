import '../models/recommendations_item_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:flutter/material.dart' hide SearchController;

// ignore: must_be_immutable
class RecommendationsItemWidget extends StatelessWidget {
  RecommendationsItemWidget(
    this.recommendationsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  RecommendationsItemModel recommendationsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => RawChip(
        padding: EdgeInsets.symmetric(
          horizontal: 13.h,
          vertical: 8.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          recommendationsItemModelObj.one!.value,
          style: TextStyle(
            color: appTheme.black90002,
            fontSize: 17.fSize,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w500,
          ),
        ),
        selected: (recommendationsItemModelObj.isSelected?.value ?? false),
        backgroundColor: appTheme.gray5001,
        selectedColor: appTheme.gray5001,
        shape: (recommendationsItemModelObj.isSelected?.value ?? false)
            ? RoundedRectangleBorder(
                side: BorderSide(
                  color: appTheme.black90002.withOpacity(0.6),
                  width: 1.h,
                ),
                borderRadius: BorderRadius.circular(
                  9.h,
                ),
              )
            : RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(
                  9.h,
                ),
              ),
        onSelected: (value) {
          recommendationsItemModelObj.isSelected!.value = value;
        },
      ),
    );
  }
}
