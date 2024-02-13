import '../controller/story_product_style_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the StoryProductStyleOneScreen.
///
/// This class ensures that the StoryProductStyleOneController is created when the
/// StoryProductStyleOneScreen is first loaded.
class StoryProductStyleOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StoryProductStyleOneController());
  }
}
