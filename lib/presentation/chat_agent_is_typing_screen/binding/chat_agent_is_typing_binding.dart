import '../controller/chat_agent_is_typing_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ChatAgentIsTypingScreen.
///
/// This class ensures that the ChatAgentIsTypingController is created when the
/// ChatAgentIsTypingScreen is first loaded.
class ChatAgentIsTypingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChatAgentIsTypingController());
  }
}
