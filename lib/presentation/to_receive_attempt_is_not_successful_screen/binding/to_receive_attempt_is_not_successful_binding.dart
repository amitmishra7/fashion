import '../controller/to_receive_attempt_is_not_successful_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ToReceiveAttemptIsNotSuccessfulScreen.
///
/// This class ensures that the ToReceiveAttemptIsNotSuccessfulController is created when the
/// ToReceiveAttemptIsNotSuccessfulScreen is first loaded.
class ToReceiveAttemptIsNotSuccessfulBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ToReceiveAttemptIsNotSuccessfulController());
  }
}
