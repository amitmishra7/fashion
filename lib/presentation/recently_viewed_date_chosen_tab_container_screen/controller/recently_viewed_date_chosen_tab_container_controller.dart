import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/presentation/recently_viewed_date_chosen_tab_container_screen/models/recently_viewed_date_chosen_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the RecentlyViewedDateChosenTabContainerScreen.
///
/// This class manages the state of the RecentlyViewedDateChosenTabContainerScreen, including the
/// current recentlyViewedDateChosenTabContainerModelObj
class RecentlyViewedDateChosenTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<RecentlyViewedDateChosenTabContainerModel>
      recentlyViewedDateChosenTabContainerModelObj =
      RecentlyViewedDateChosenTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 2));
}
