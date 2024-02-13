import '../controller/chat_voucher_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ChatVoucherScreen.
///
/// This class ensures that the ChatVoucherController is created when the
/// ChatVoucherScreen is first loaded.
class ChatVoucherBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChatVoucherController());
  }
}
