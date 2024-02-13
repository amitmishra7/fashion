import '../controller/to_recieve_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ToRecieveScreen.
///
/// This class ensures that the ToRecieveController is created when the
/// ToRecieveScreen is first loaded.
class ToRecieveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ToRecieveController());
  }
}
