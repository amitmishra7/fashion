import '../controller/settings_profile_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SettingsProfileScreen.
///
/// This class ensures that the SettingsProfileController is created when the
/// SettingsProfileScreen is first loaded.
class SettingsProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SettingsProfileController());
  }
}
