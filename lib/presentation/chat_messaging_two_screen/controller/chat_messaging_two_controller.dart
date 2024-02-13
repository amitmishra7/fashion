import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/presentation/chat_messaging_two_screen/models/chat_messaging_two_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ChatMessagingTwoScreen.
///
/// This class manages the state of the ChatMessagingTwoScreen, including the
/// current chatMessagingTwoModelObj
class ChatMessagingTwoController extends GetxController {
  TextEditingController messageController = TextEditingController();

  Rx<ChatMessagingTwoModel> chatMessagingTwoModelObj =
      ChatMessagingTwoModel().obs;

  @override
  void onClose() {
    super.onClose();
    messageController.dispose();
  }
}
