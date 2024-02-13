import '../models/order_item_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class OrderItemWidget extends StatelessWidget {
  OrderItemWidget(
    this.orderItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  OrderItemModel orderItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Theme(
        data: ThemeData(
          canvasColor: Colors.transparent,
        ),
        child: RawChip(
          padding: EdgeInsets.symmetric(
            horizontal: 14.h,
            vertical: 11.v,
          ),
          showCheckmark: false,
          labelPadding: EdgeInsets.zero,
          label: Text(
            orderItemModelObj.order!.value,
            style: TextStyle(
              color: (orderItemModelObj.isSelected?.value ?? false)
                  ? theme.colorScheme.onErrorContainer.withOpacity(1)
                  : theme.colorScheme.primary,
              fontSize: 14.fSize,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.w500,
            ),
          ),
          selected: (orderItemModelObj.isSelected?.value ?? false),
          backgroundColor: Colors.transparent,
          selectedColor: theme.colorScheme.primary,
          shape: (orderItemModelObj.isSelected?.value ?? false)
              ? RoundedRectangleBorder(
                  side: BorderSide.none,
                  borderRadius: BorderRadius.circular(
                    9.h,
                  ),
                )
              : RoundedRectangleBorder(
                  side: BorderSide(
                    color: theme.colorScheme.primary,
                    width: 1.h,
                  ),
                  borderRadius: BorderRadius.circular(
                    9.h,
                  ),
                ),
          onSelected: (value) {
            orderItemModelObj.isSelected!.value = value;
          },
        ),
      ),
    );
  }
}
