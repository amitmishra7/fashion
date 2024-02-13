import '../controller/settings_add_card_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SettingsAddCardScreen.
///
/// This class ensures that the SettingsAddCardController is created when the
/// SettingsAddCardScreen is first loaded.
class SettingsAddCardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SettingsAddCardController());
  }
}
