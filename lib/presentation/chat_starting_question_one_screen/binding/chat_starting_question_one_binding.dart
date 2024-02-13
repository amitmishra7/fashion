import '../controller/chat_starting_question_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ChatStartingQuestionOneScreen.
///
/// This class ensures that the ChatStartingQuestionOneController is created when the
/// ChatStartingQuestionOneScreen is first loaded.
class ChatStartingQuestionOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChatStartingQuestionOneController());
  }
}
