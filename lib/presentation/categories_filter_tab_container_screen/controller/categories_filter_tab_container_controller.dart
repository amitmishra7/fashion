import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/presentation/categories_filter_tab_container_screen/models/categories_filter_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the CategoriesFilterTabContainerScreen.
///
/// This class manages the state of the CategoriesFilterTabContainerScreen, including the
/// current categoriesFilterTabContainerModelObj
class CategoriesFilterTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<CategoriesFilterTabContainerModel> categoriesFilterTabContainerModelObj =
      CategoriesFilterTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 3));
}
