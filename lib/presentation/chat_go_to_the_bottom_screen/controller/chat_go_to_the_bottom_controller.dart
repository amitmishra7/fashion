import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/presentation/chat_go_to_the_bottom_screen/models/chat_go_to_the_bottom_model.dart';

/// A controller class for the ChatGoToTheBottomScreen.
///
/// This class manages the state of the ChatGoToTheBottomScreen, including the
/// current chatGoToTheBottomModelObj
class ChatGoToTheBottomController extends GetxController {
  Rx<ChatGoToTheBottomModel> chatGoToTheBottomModelObj =
      ChatGoToTheBottomModel().obs;
}
