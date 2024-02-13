import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/presentation/chat_response_screen/models/chat_response_model.dart';

/// A controller class for the ChatResponseScreen.
///
/// This class manages the state of the ChatResponseScreen, including the
/// current chatResponseModelObj
class ChatResponseController extends GetxController {
  Rx<ChatResponseModel> chatResponseModelObj = ChatResponseModel().obs;
}
