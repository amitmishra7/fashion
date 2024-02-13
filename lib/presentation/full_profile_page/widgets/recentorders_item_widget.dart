import '../controller/full_profile_controller.dart';
import '../models/recentorders_item_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RecentordersItemWidget extends StatelessWidget {
  RecentordersItemWidget(
    this.recentordersItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  RecentordersItemModel recentordersItemModelObj;

  var controller = Get.find<FullProfileController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.adaptSize,
      width: 60.adaptSize,
      decoration: BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        borderRadius: BorderRadius.circular(
          30.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray40029,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              5,
            ),
          ),
        ],
      ),
    );
  }
}
