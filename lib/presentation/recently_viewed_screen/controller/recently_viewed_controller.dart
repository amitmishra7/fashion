import 'package:amit_s_application2/core/app_export.dart';import 'package:amit_s_application2/presentation/recently_viewed_screen/models/recently_viewed_model.dart';/// A controller class for the RecentlyViewedScreen.
///
/// This class manages the state of the RecentlyViewedScreen, including the
/// current recentlyViewedModelObj
class RecentlyViewedController extends GetxController {Rx<RecentlyViewedModel> recentlyViewedModelObj = RecentlyViewedModel().obs;

 }
