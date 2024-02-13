import '../controller/chat_starting_question_three_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ChatStartingQuestionThreeScreen.
///
/// This class ensures that the ChatStartingQuestionThreeController is created when the
/// ChatStartingQuestionThreeScreen is first loaded.
class ChatStartingQuestionThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChatStartingQuestionThreeController());
  }
}
