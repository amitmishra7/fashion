import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/presentation/rewards_progress_page/models/rewards_progress_model.dart';

/// A controller class for the RewardsProgressPage.
///
/// This class manages the state of the RewardsProgressPage, including the
/// current rewardsProgressModelObj
class RewardsProgressController extends GetxController {
  RewardsProgressController(this.rewardsProgressModelObj);

  Rx<RewardsProgressModel> rewardsProgressModelObj;
}
