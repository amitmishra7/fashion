import '../controller/recently_viewed_date_controller.dart';
import 'package:get/get.dart';

/// A binding class for the RecentlyViewedDateScreen.
///
/// This class ensures that the RecentlyViewedDateController is created when the
/// RecentlyViewedDateScreen is first loaded.
class RecentlyViewedDateBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RecentlyViewedDateController());
  }
}
