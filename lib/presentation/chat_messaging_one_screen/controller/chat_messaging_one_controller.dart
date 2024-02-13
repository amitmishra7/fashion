import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/presentation/chat_messaging_one_screen/models/chat_messaging_one_model.dart';

/// A controller class for the ChatMessagingOneScreen.
///
/// This class manages the state of the ChatMessagingOneScreen, including the
/// current chatMessagingOneModelObj
class ChatMessagingOneController extends GetxController {
  Rx<ChatMessagingOneModel> chatMessagingOneModelObj =
      ChatMessagingOneModel().obs;
}
