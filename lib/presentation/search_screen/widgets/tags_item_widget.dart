import '../models/tags_item_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:flutter/material.dart' hide SearchController;

// ignore: must_be_immutable
class TagsItemWidget extends StatelessWidget {
  TagsItemWidget(
    this.tagsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  TagsItemModel tagsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => RawChip(
        padding: EdgeInsets.symmetric(
          horizontal: 30.h,
          vertical: 18.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          tagsItemModelObj.socks!.value,
          style: TextStyle(
            color: appTheme.black90002,
            fontSize: 17.fSize,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w500,
          ),
        ),
        selected: (tagsItemModelObj.isSelected?.value ?? false),
        backgroundColor: theme.colorScheme.primaryContainer,
        selectedColor: theme.colorScheme.primaryContainer,
        shape: (tagsItemModelObj.isSelected?.value ?? false)
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
          tagsItemModelObj.isSelected!.value = value;
        },
      ),
    );
  }
}
