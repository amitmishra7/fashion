import '../controller/payment_methods_history_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PaymentMethodsHistoryScreen.
///
/// This class ensures that the PaymentMethodsHistoryController is created when the
/// PaymentMethodsHistoryScreen is first loaded.
class PaymentMethodsHistoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PaymentMethodsHistoryController());
  }
}
