import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppbarTitleSearchviewOne extends StatelessWidget {
  AppbarTitleSearchviewOne({
    Key? key,
    this.hintText,
    this.controller,
    this.margin,
  }) : super(
          key: key,
        );

  String? hintText;

  TextEditingController? controller;

  EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: CustomSearchView(
        width: 248.h,
        controller: controller,
        hintText: "lbl_clothing".tr,
        borderDecoration: SearchViewStyleHelper.fillIndigo,
        fillColor: appTheme.indigo50,
      ),
    );
  }
}
