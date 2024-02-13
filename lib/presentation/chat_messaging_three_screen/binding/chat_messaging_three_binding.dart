import '../controller/chat_messaging_three_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ChatMessagingThreeScreen.
///
/// This class ensures that the ChatMessagingThreeController is created when the
/// ChatMessagingThreeScreen is first loaded.
class ChatMessagingThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChatMessagingThreeController());
  }
}
