import '../controller/choose_your_language_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ChooseYourLanguageScreen.
///
/// This class ensures that the ChooseYourLanguageController is created when the
/// ChooseYourLanguageScreen is first loaded.
class ChooseYourLanguageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChooseYourLanguageController());
  }
}
