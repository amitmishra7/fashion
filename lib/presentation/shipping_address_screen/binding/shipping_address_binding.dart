import '../controller/shipping_address_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ShippingAddressScreen.
///
/// This class ensures that the ShippingAddressController is created when the
/// ShippingAddressScreen is first loaded.
class ShippingAddressBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ShippingAddressController());
  }
}
