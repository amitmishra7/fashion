import '../models/productmaterial_item_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProductmaterialItemWidget extends StatelessWidget {
  ProductmaterialItemWidget(
    this.productmaterialItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProductmaterialItemModel productmaterialItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => RawChip(
        padding: EdgeInsets.symmetric(
          horizontal: 11.h,
          vertical: 4.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          productmaterialItemModelObj.materialOne!.value,
          style: TextStyle(
            color: appTheme.black90002,
            fontSize: 14.fSize,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w500,
          ),
        ),
        selected: (productmaterialItemModelObj.isSelected?.value ?? false),
        backgroundColor: appTheme.red50,
        selectedColor: appTheme.red50,
        shape: (productmaterialItemModelObj.isSelected?.value ?? false)
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
          productmaterialItemModelObj.isSelected!.value = value;
        },
      ),
    );
  }
}
