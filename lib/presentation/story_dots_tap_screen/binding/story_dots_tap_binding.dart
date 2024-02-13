import '../controller/story_dots_tap_controller.dart';
import 'package:get/get.dart';

/// A binding class for the StoryDotsTapScreen.
///
/// This class ensures that the StoryDotsTapController is created when the
/// StoryDotsTapScreen is first loaded.
class StoryDotsTapBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StoryDotsTapController());
  }
}
