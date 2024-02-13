import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/presentation/chat_starting_question_two_screen/models/chat_starting_question_two_model.dart';

/// A controller class for the ChatStartingQuestionTwoScreen.
///
/// This class manages the state of the ChatStartingQuestionTwoScreen, including the
/// current chatStartingQuestionTwoModelObj
class ChatStartingQuestionTwoController extends GetxController {
  Rx<ChatStartingQuestionTwoModel> chatStartingQuestionTwoModelObj =
      ChatStartingQuestionTwoModel().obs;
}
