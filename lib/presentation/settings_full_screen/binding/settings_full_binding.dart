import '../controller/settings_full_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SettingsFullScreen.
///
/// This class ensures that the SettingsFullController is created when the
/// SettingsFullScreen is first loaded.
class SettingsFullBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SettingsFullController());
  }
}
