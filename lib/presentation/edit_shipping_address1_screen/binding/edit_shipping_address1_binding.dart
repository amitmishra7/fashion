import '../controller/edit_shipping_address1_controller.dart';
import 'package:get/get.dart';

/// A binding class for the EditShippingAddress1Screen.
///
/// This class ensures that the EditShippingAddress1Controller is created when the
/// EditShippingAddress1Screen is first loaded.
class EditShippingAddress1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EditShippingAddress1Controller());
  }
}
