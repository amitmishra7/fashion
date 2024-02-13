import '../controller/chat_messaging_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ChatMessagingTwoScreen.
///
/// This class ensures that the ChatMessagingTwoController is created when the
/// ChatMessagingTwoScreen is first loaded.
class ChatMessagingTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChatMessagingTwoController());
  }
}
