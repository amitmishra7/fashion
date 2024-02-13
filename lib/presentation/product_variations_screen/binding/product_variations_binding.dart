import '../controller/product_variations_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ProductVariationsScreen.
///
/// This class ensures that the ProductVariationsController is created when the
/// ProductVariationsScreen is first loaded.
class ProductVariationsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductVariationsController());
  }
}
