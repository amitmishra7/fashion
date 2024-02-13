import '../controller/categories_filter_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CategoriesFilterTabContainerScreen.
///
/// This class ensures that the CategoriesFilterTabContainerController is created when the
/// CategoriesFilterTabContainerScreen is first loaded.
class CategoriesFilterTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CategoriesFilterTabContainerController());
  }
}
