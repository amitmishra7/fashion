import '../controller/product_full_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ProductFullScreen.
///
/// This class ensures that the ProductFullController is created when the
/// ProductFullScreen is first loaded.
class ProductFullBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductFullController());
  }
}
