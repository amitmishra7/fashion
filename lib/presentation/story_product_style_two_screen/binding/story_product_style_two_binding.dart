import '../controller/story_product_style_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the StoryProductStyleTwoScreen.
///
/// This class ensures that the StoryProductStyleTwoController is created when the
/// StoryProductStyleTwoScreen is first loaded.
class StoryProductStyleTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StoryProductStyleTwoController());
  }
}
