import '../controller/story_dots_controller.dart';
import 'package:get/get.dart';

/// A binding class for the StoryDotsScreen.
///
/// This class ensures that the StoryDotsController is created when the
/// StoryDotsScreen is first loaded.
class StoryDotsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StoryDotsController());
  }
}
