import '../controller/shop_clothing_on_scroll_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ShopClothingOnScrollScreen.
///
/// This class ensures that the ShopClothingOnScrollController is created when the
/// ShopClothingOnScrollScreen is first loaded.
class ShopClothingOnScrollBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ShopClothingOnScrollController());
  }
}
