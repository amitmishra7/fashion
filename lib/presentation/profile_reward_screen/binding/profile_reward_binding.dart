import '../controller/profile_reward_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ProfileRewardScreen.
///
/// This class ensures that the ProfileRewardController is created when the
/// ProfileRewardScreen is first loaded.
class ProfileRewardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileRewardController());
  }
}
