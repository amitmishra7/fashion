import '../controller/story_banner_controller.dart';
import 'package:get/get.dart';

/// A binding class for the StoryBannerScreen.
///
/// This class ensures that the StoryBannerController is created when the
/// StoryBannerScreen is first loaded.
class StoryBannerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StoryBannerController());
  }
}
