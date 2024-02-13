import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/presentation/chat_hello_screen/models/chat_hello_model.dart';

/// A controller class for the ChatHelloScreen.
///
/// This class manages the state of the ChatHelloScreen, including the
/// current chatHelloModelObj
class ChatHelloController extends GetxController {
  Rx<ChatHelloModel> chatHelloModelObj = ChatHelloModel().obs;
}
