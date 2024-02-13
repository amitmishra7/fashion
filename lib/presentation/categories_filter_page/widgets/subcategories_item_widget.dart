import '../models/subcategories_item_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SubcategoriesItemWidget extends StatelessWidget {
  SubcategoriesItemWidget(
    this.subcategoriesItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SubcategoriesItemModel subcategoriesItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => RawChip(
        padding: EdgeInsets.symmetric(
          horizontal: 30.h,
          vertical: 11.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          subcategoriesItemModelObj.dresses!.value,
          style: TextStyle(
            color: appTheme.gray90001,
            fontSize: 15.fSize,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w700,
          ),
        ),
        selected: (subcategoriesItemModelObj.isSelected?.value ?? false),
        backgroundColor: theme.colorScheme.onErrorContainer.withOpacity(1),
        selectedColor: theme.colorScheme.onErrorContainer.withOpacity(1),
        shape: (subcategoriesItemModelObj.isSelected?.value ?? false)
            ? RoundedRectangleBorder(
                side: BorderSide(
                  color: theme.colorScheme.onErrorContainer,
                  width: 1.h,
                ),
                borderRadius: BorderRadius.circular(
                  7.h,
                ),
              )
            : RoundedRectangleBorder(
                side: BorderSide(
                  color: appTheme.red50,
                  width: 2.h,
                ),
                borderRadius: BorderRadius.circular(
                  7.h,
                ),
              ),
        onSelected: (value) {
          subcategoriesItemModelObj.isSelected!.value = value;
        },
      ),
    );
  }
}
