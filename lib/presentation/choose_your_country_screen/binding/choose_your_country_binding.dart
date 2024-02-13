import '../controller/choose_your_country_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ChooseYourCountryScreen.
///
/// This class ensures that the ChooseYourCountryController is created when the
/// ChooseYourCountryScreen is first loaded.
class ChooseYourCountryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChooseYourCountryController());
  }
}
