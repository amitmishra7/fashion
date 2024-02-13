import '../controller/flash_sale_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FlashSaleScreen.
///
/// This class ensures that the FlashSaleController is created when the
/// FlashSaleScreen is first loaded.
class FlashSaleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FlashSaleController());
  }
}
