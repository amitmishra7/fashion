import '../controller/to_receive_progress_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ToReceiveProgressScreen.
///
/// This class ensures that the ToReceiveProgressController is created when the
/// ToReceiveProgressScreen is first loaded.
class ToReceiveProgressBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ToReceiveProgressController());
  }
}
