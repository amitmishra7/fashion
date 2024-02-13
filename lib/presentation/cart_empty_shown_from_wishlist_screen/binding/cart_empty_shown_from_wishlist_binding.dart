import '../controller/cart_empty_shown_from_wishlist_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CartEmptyShownFromWishlistScreen.
///
/// This class ensures that the CartEmptyShownFromWishlistController is created when the
/// CartEmptyShownFromWishlistScreen is first loaded.
class CartEmptyShownFromWishlistBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CartEmptyShownFromWishlistController());
  }
}
