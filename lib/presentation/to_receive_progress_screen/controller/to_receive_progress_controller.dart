import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/presentation/to_receive_progress_screen/models/to_receive_progress_model.dart';

/// A controller class for the ToReceiveProgressScreen.
///
/// This class manages the state of the ToReceiveProgressScreen, including the
/// current toReceiveProgressModelObj
class ToReceiveProgressController extends GetxController {
  Rx<ToReceiveProgressModel> toReceiveProgressModelObj =
      ToReceiveProgressModel().obs;
}
