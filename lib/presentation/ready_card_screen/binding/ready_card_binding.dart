import '../controller/ready_card_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ReadyCardScreen.
///
/// This class ensures that the ReadyCardController is created when the
/// ReadyCardScreen is first loaded.
class ReadyCardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ReadyCardController());
  }
}
