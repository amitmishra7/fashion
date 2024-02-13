import '../controller/recently_viewed_controller.dart';
import 'package:get/get.dart';

/// A binding class for the RecentlyViewedScreen.
///
/// This class ensures that the RecentlyViewedController is created when the
/// RecentlyViewedScreen is first loaded.
class RecentlyViewedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RecentlyViewedController());
  }
}
