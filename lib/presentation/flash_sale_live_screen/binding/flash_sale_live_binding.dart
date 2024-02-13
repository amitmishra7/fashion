import '../controller/flash_sale_live_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FlashSaleLiveScreen.
///
/// This class ensures that the FlashSaleLiveController is created when the
/// FlashSaleLiveScreen is first loaded.
class FlashSaleLiveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FlashSaleLiveController());
  }
}
