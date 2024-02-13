import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/presentation/chat_connecting_with_an_agent_screen/models/chat_connecting_with_an_agent_model.dart';

/// A controller class for the ChatConnectingWithAnAgentScreen.
///
/// This class manages the state of the ChatConnectingWithAnAgentScreen, including the
/// current chatConnectingWithAnAgentModelObj
class ChatConnectingWithAnAgentController extends GetxController {
  Rx<ChatConnectingWithAnAgentModel> chatConnectingWithAnAgentModelObj =
      ChatConnectingWithAnAgentModel().obs;
}
