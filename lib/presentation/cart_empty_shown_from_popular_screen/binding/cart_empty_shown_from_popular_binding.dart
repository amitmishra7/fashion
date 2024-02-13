import '../controller/cart_empty_shown_from_popular_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CartEmptyShownFromPopularScreen.
///
/// This class ensures that the CartEmptyShownFromPopularController is created when the
/// CartEmptyShownFromPopularScreen is first loaded.
class CartEmptyShownFromPopularBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CartEmptyShownFromPopularController());
  }
}
