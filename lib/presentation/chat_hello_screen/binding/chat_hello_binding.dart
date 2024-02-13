import '../controller/chat_hello_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ChatHelloScreen.
///
/// This class ensures that the ChatHelloController is created when the
/// ChatHelloScreen is first loaded.
class ChatHelloBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChatHelloController());
  }
}
