import '../models/s_item_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SItemWidget extends StatelessWidget {
  SItemWidget(
    this.sItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SItemModel sItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => RawChip(
        padding: EdgeInsets.symmetric(
          horizontal: 20.h,
          vertical: 4.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          sItemModelObj.s!.value,
          style: TextStyle(
            color: (sItemModelObj.isSelected?.value ?? false)
                ? appTheme.indigo10001
                : appTheme.black90002,
            fontSize: 14.fSize,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w500,
          ),
        ),
        selected: (sItemModelObj.isSelected?.value ?? false),
        backgroundColor: appTheme.gray5001,
        selectedColor: appTheme.indigo50,
        shape: (sItemModelObj.isSelected?.value ?? false)
            ? RoundedRectangleBorder(
                side: BorderSide.none,
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
          sItemModelObj.isSelected!.value = value;
        },
      ),
    );
  }
}
