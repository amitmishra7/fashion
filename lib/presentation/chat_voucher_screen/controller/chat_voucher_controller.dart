import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/presentation/chat_voucher_screen/models/chat_voucher_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ChatVoucherScreen.
///
/// This class manages the state of the ChatVoucherScreen, including the
/// current chatVoucherModelObj
class ChatVoucherController extends GetxController {
  TextEditingController orderIssuesController = TextEditingController();

  Rx<ChatVoucherModel> chatVoucherModelObj = ChatVoucherModel().obs;

  @override
  void onClose() {
    super.onClose();
    orderIssuesController.dispose();
  }
}
