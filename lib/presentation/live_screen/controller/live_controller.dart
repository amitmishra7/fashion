import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/presentation/live_screen/models/live_model.dart';

/// A controller class for the LiveScreen.
///
/// This class manages the state of the LiveScreen, including the
/// current liveModelObj
class LiveController extends GetxController {
  Rx<LiveModel> liveModelObj = LiveModel().obs;
}
