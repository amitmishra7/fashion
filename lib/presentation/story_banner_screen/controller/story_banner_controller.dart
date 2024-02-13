import 'package:amit_s_application2/core/app_export.dart';import 'package:amit_s_application2/presentation/story_banner_screen/models/story_banner_model.dart';/// A controller class for the StoryBannerScreen.
///
/// This class manages the state of the StoryBannerScreen, including the
/// current storyBannerModelObj
class StoryBannerController extends GetxController {Rx<StoryBannerModel> storyBannerModelObj = StoryBannerModel().obs;

Rx<int> sliderIndex = 0.obs;

 }
