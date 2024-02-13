import '../controller/chat_connecting_with_an_agent_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ChatConnectingWithAnAgentScreen.
///
/// This class ensures that the ChatConnectingWithAnAgentController is created when the
/// ChatConnectingWithAnAgentScreen is first loaded.
class ChatConnectingWithAnAgentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChatConnectingWithAnAgentController());
  }
}
