import 'controller/categories_filter_tab_container_controller.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/presentation/categories_filter_page/categories_filter_page.dart';
import 'package:amit_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:amit_s_application2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:amit_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class CategoriesFilterTabContainerScreen
    extends GetWidget<CategoriesFilterTabContainerController> {
  const CategoriesFilterTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 20.v),
              _buildTabview(),
              SizedBox(
                height: 661.v,
                child: TabBarView(
                  controller: controller.tabviewController,
                  children: [
                    CategoriesFilterPage(),
                    CategoriesFilterPage(),
                    CategoriesFilterPage(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 51.v,
      title: AppbarTitle(
        text: "lbl_all_categories".tr,
        margin: EdgeInsets.only(left: 20.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgCloseBlack90002,
          margin: EdgeInsets.fromLTRB(20.h, 11.v, 20.h, 27.v),
        ),
      ],
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildTabview() {
    return Container(
      height: 36.v,
      width: 335.h,
      child: TabBar(
        controller: controller.tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: theme.colorScheme.primary,
        labelStyle: TextStyle(
          fontSize: 18.fSize,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w500,
        ),
        unselectedLabelColor: appTheme.black90002,
        unselectedLabelStyle: TextStyle(
          fontSize: 17.fSize,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w500,
        ),
        indicator: BoxDecoration(
          color: appTheme.indigo50,
          borderRadius: BorderRadius.circular(
            9.h,
          ),
          border: Border.all(
            color: theme.colorScheme.primary,
            width: 1.h,
          ),
        ),
        tabs: [
          Tab(
            child: Text(
              "lbl_all".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_female".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_male".tr,
            ),
          ),
        ],
      ),
    );
  }
}
