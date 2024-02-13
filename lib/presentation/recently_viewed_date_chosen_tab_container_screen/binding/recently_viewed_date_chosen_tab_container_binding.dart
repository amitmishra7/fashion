import '../controller/recently_viewed_date_chosen_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the RecentlyViewedDateChosenTabContainerScreen.
///
/// This class ensures that the RecentlyViewedDateChosenTabContainerController is created when the
/// RecentlyViewedDateChosenTabContainerScreen is first loaded.
class RecentlyViewedDateChosenTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RecentlyViewedDateChosenTabContainerController());
  }
}
