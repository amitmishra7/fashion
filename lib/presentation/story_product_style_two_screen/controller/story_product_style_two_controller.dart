import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/presentation/story_product_style_two_screen/models/story_product_style_two_model.dart';

/// A controller class for the StoryProductStyleTwoScreen.
///
/// This class manages the state of the StoryProductStyleTwoScreen, including the
/// current storyProductStyleTwoModelObj
class StoryProductStyleTwoController extends GetxController {
  Rx<StoryProductStyleTwoModel> storyProductStyleTwoModelObj =
      StoryProductStyleTwoModel().obs;
}
