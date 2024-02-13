import '../controller/rewards_progress_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the RewardsProgressTabContainerScreen.
///
/// This class ensures that the RewardsProgressTabContainerController is created when the
/// RewardsProgressTabContainerScreen is first loaded.
class RewardsProgressTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RewardsProgressTabContainerController());
  }
}
