import '../models/color5_item_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Color5ItemWidget extends StatelessWidget {
  Color5ItemWidget(
    this.color5ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Color5ItemModel color5ItemModelObj;

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
          color5ItemModelObj.color!.value,
          style: TextStyle(
            color: appTheme.black90002,
            fontSize: 14.fSize,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w500,
          ),
        ),
        selected: (color5ItemModelObj.isSelected?.value ?? false),
        backgroundColor: appTheme.indigo50,
        selectedColor: appTheme.indigo50,
        shape: (color5ItemModelObj.isSelected?.value ?? false)
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
          color5ItemModelObj.isSelected!.value = value;
        },
      ),
    );
  }
}
