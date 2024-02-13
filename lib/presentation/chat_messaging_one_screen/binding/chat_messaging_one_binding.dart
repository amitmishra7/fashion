import '../controller/chat_messaging_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ChatMessagingOneScreen.
///
/// This class ensures that the ChatMessagingOneController is created when the
/// ChatMessagingOneScreen is first loaded.
class ChatMessagingOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChatMessagingOneController());
  }
}
