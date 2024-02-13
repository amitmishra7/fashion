import '../models/color_item_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ColorItemWidget extends StatelessWidget {
  ColorItemWidget(
    this.colorItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ColorItemModel colorItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => RawChip(
        padding: EdgeInsets.symmetric(
          horizontal: 13.h,
          vertical: 4.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          colorItemModelObj.color!.value,
          style: TextStyle(
            color: appTheme.black90002,
            fontSize: 14.fSize,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w500,
          ),
        ),
        selected: (colorItemModelObj.isSelected?.value ?? false),
        backgroundColor: appTheme.indigo50,
        selectedColor: appTheme.indigo50,
        shape: (colorItemModelObj.isSelected?.value ?? false)
            ? RoundedRectangleBorder(
                side: BorderSide(
                  color: appTheme.black90002.withOpacity(0.6),
                  width: 1.h,
                ),
                borderRadius: BorderRadius.circular(
                  4.h,
                ),
              )
            : RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(
                  4.h,
                ),
              ),
        onSelected: (value) {
          colorItemModelObj.isSelected!.value = value;
        },
      ),
    );
  }
}
