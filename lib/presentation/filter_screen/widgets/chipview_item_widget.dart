import '../models/chipview_item_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ChipviewItemWidget extends StatelessWidget {
  ChipviewItemWidget(
    this.chipviewItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ChipviewItemModel chipviewItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => RawChip(
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          chipviewItemModelObj.title!.value,
          style: TextStyle(
            color: (chipviewItemModelObj.isSelected?.value ?? false)
                ? theme.colorScheme.primary
                : appTheme.black90002,
            fontSize: 20.fSize,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w800,
          ),
        ),
        selected: (chipviewItemModelObj.isSelected?.value ?? false),
        backgroundColor: appTheme.red50,
        selectedColor: appTheme.indigo50,
        shape: (chipviewItemModelObj.isSelected?.value ?? false)
            ? RoundedRectangleBorder(
                side: BorderSide(
                  color: theme.colorScheme.primary,
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
          chipviewItemModelObj.isSelected!.value = value;
        },
      ),
    );
  }
}
