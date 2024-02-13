import '../controller/delivered_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DeliveredScreen.
///
/// This class ensures that the DeliveredController is created when the
/// DeliveredScreen is first loaded.
class DeliveredBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DeliveredController());
  }
}
