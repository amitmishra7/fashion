import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/presentation/story_dots_screen/models/story_dots_model.dart';

/// A controller class for the StoryDotsScreen.
///
/// This class manages the state of the StoryDotsScreen, including the
/// current storyDotsModelObj
class StoryDotsController extends GetxController {
  Rx<StoryDotsModel> storyDotsModelObj = StoryDotsModel().obs;
}
