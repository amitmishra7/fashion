import '../controller/shop_clothing_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ShopClothingScreen.
///
/// This class ensures that the ShopClothingController is created when the
/// ShopClothingScreen is first loaded.
class ShopClothingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ShopClothingController());
  }
}
