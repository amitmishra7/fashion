import '../controller/image_search_results_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ImageSearchResultsScreen.
///
/// This class ensures that the ImageSearchResultsController is created when the
/// ImageSearchResultsScreen is first loaded.
class ImageSearchResultsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ImageSearchResultsController());
  }
}
