import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/presentation/story_product_style_one_screen/models/story_product_style_one_model.dart';

/// A controller class for the StoryProductStyleOneScreen.
///
/// This class manages the state of the StoryProductStyleOneScreen, including the
/// current storyProductStyleOneModelObj
class StoryProductStyleOneController extends GetxController {
  Rx<StoryProductStyleOneModel> storyProductStyleOneModelObj =
      StoryProductStyleOneModel().obs;
}
