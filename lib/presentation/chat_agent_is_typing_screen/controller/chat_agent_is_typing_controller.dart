import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/presentation/chat_agent_is_typing_screen/models/chat_agent_is_typing_model.dart';

/// A controller class for the ChatAgentIsTypingScreen.
///
/// This class manages the state of the ChatAgentIsTypingScreen, including the
/// current chatAgentIsTypingModelObj
class ChatAgentIsTypingController extends GetxController {
  Rx<ChatAgentIsTypingModel> chatAgentIsTypingModelObj =
      ChatAgentIsTypingModel().obs;
}
