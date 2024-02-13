import '../controller/product_sale_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ProductSaleScreen.
///
/// This class ensures that the ProductSaleController is created when the
/// ProductSaleScreen is first loaded.
class ProductSaleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductSaleController());
  }
}
