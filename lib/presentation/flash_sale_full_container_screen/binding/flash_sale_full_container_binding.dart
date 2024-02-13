import '../controller/flash_sale_full_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FlashSaleFullContainerScreen.
///
/// This class ensures that the FlashSaleFullContainerController is created when the
/// FlashSaleFullContainerScreen is first loaded.
class FlashSaleFullContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FlashSaleFullContainerController());
  }
}
