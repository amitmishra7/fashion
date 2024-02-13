import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/presentation/chat_messaging_three_screen/models/chat_messaging_three_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ChatMessagingThreeScreen.
///
/// This class manages the state of the ChatMessagingThreeScreen, including the
/// current chatMessagingThreeModelObj
class ChatMessagingThreeController extends GetxController {
  TextEditingController messageController = TextEditingController();

  Rx<ChatMessagingThreeModel> chatMessagingThreeModelObj =
      ChatMessagingThreeModel().obs;

  @override
  void onClose() {
    super.onClose();
    messageController.dispose();
  }
}
