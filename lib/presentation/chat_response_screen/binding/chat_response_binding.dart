import '../controller/chat_response_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ChatResponseScreen.
///
/// This class ensures that the ChatResponseController is created when the
/// ChatResponseScreen is first loaded.
class ChatResponseBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChatResponseController());
  }
}
