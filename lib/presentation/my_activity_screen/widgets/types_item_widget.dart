import '../models/types_item_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TypesItemWidget extends StatelessWidget {
  TypesItemWidget(
    this.typesItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  TypesItemModel typesItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => RawChip(
        padding: EdgeInsets.symmetric(
          horizontal: 12.h,
          vertical: 6.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          typesItemModelObj.clothing!.value,
          style: TextStyle(
            color: theme.colorScheme.onErrorContainer.withOpacity(1),
            fontSize: 15.fSize,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w500,
          ),
        ),
        selected: (typesItemModelObj.isSelected?.value ?? false),
        backgroundColor: appTheme.blue800,
        selectedColor: appTheme.pink400,
        shape: (typesItemModelObj.isSelected?.value ?? false)
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
          typesItemModelObj.isSelected!.value = value;
        },
      ),
    );
  }
}
