import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/presentation/story_dots_tap_screen/models/story_dots_tap_model.dart';

/// A controller class for the StoryDotsTapScreen.
///
/// This class manages the state of the StoryDotsTapScreen, including the
/// current storyDotsTapModelObj
class StoryDotsTapController extends GetxController {
  Rx<StoryDotsTapModel> storyDotsTapModelObj = StoryDotsTapModel().obs;
}
