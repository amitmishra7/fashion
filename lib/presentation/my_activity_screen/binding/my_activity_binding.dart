import '../controller/my_activity_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MyActivityScreen.
///
/// This class ensures that the MyActivityController is created when the
/// MyActivityScreen is first loaded.
class MyActivityBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyActivityController());
  }
}
