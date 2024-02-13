import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/presentation/to_receive_attempt_is_not_successful_screen/models/to_receive_attempt_is_not_successful_model.dart';

/// A controller class for the ToReceiveAttemptIsNotSuccessfulScreen.
///
/// This class manages the state of the ToReceiveAttemptIsNotSuccessfulScreen, including the
/// current toReceiveAttemptIsNotSuccessfulModelObj
class ToReceiveAttemptIsNotSuccessfulController extends GetxController {
  Rx<ToReceiveAttemptIsNotSuccessfulModel>
      toReceiveAttemptIsNotSuccessfulModelObj =
      ToReceiveAttemptIsNotSuccessfulModel().obs;
}
