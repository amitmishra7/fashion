import '../controller/payment_methods_history_2_cards_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PaymentMethodsHistory2CardsScreen.
///
/// This class ensures that the PaymentMethodsHistory2CardsController is created when the
/// PaymentMethodsHistory2CardsScreen is first loaded.
class PaymentMethodsHistory2CardsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PaymentMethodsHistory2CardsController());
  }
}
