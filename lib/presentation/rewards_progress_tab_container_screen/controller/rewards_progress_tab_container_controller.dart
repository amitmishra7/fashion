import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/presentation/rewards_progress_tab_container_screen/models/rewards_progress_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the RewardsProgressTabContainerScreen.
///
/// This class manages the state of the RewardsProgressTabContainerScreen, including the
/// current rewardsProgressTabContainerModelObj
class RewardsProgressTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<RewardsProgressTabContainerModel> rewardsProgressTabContainerModelObj =
      RewardsProgressTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 2));
}
