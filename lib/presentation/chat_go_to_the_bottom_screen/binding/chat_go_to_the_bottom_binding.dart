import '../controller/chat_go_to_the_bottom_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ChatGoToTheBottomScreen.
///
/// This class ensures that the ChatGoToTheBottomController is created when the
/// ChatGoToTheBottomScreen is first loaded.
class ChatGoToTheBottomBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChatGoToTheBottomController());
  }
}
