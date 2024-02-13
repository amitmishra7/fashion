import '../controller/choose_your_currency_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ChooseYourCurrencyScreen.
///
/// This class ensures that the ChooseYourCurrencyController is created when the
/// ChooseYourCurrencyScreen is first loaded.
class ChooseYourCurrencyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChooseYourCurrencyController());
  }
}
