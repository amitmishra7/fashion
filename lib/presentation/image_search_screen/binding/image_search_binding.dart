import '../controller/image_search_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ImageSearchScreen.
///
/// This class ensures that the ImageSearchController is created when the
/// ImageSearchScreen is first loaded.
class ImageSearchBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ImageSearchController());
  }
}
