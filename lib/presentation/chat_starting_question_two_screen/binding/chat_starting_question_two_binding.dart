import '../controller/chat_starting_question_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ChatStartingQuestionTwoScreen.
///
/// This class ensures that the ChatStartingQuestionTwoController is created when the
/// ChatStartingQuestionTwoScreen is first loaded.
class ChatStartingQuestionTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChatStartingQuestionTwoController());
  }
}
