import '../controller/hello_card_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HelloCardScreen.
///
/// This class ensures that the HelloCardController is created when the
/// HelloCardScreen is first loaded.
class HelloCardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HelloCardController());
  }
}
