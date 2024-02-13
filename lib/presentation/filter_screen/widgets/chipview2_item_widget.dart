import '../models/chipview2_item_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Chipview2ItemWidget extends StatelessWidget {
  Chipview2ItemWidget(
    this.chipview2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Chipview2ItemModel chipview2ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => RawChip(
        padding: EdgeInsets.symmetric(
          horizontal: 30.h,
          vertical: 6.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          chipview2ItemModelObj.popular!.value,
          style: TextStyle(
            color: (chipview2ItemModelObj.isSelected?.value ?? false)
                ? theme.colorScheme.primary
                : appTheme.black90002,
            fontSize: 15.fSize,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w700,
          ),
        ),
        selected: (chipview2ItemModelObj.isSelected?.value ?? false),
        backgroundColor: appTheme.gray5001,
        selectedColor: appTheme.indigo50,
        shape: (chipview2ItemModelObj.isSelected?.value ?? false)
            ? RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(
                  15.h,
                ),
              )
            : RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(
                  15.h,
                ),
              ),
        onSelected: (value) {
          chipview2ItemModelObj.isSelected!.value = value;
        },
      ),
    );
  }
}
