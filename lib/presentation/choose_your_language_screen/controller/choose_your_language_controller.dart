import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/presentation/choose_your_language_screen/models/choose_your_language_model.dart';

/// A controller class for the ChooseYourLanguageScreen.
///
/// This class manages the state of the ChooseYourLanguageScreen, including the
/// current chooseYourLanguageModelObj
class ChooseYourLanguageController extends GetxController {
  Rx<ChooseYourLanguageModel> chooseYourLanguageModelObj =
      ChooseYourLanguageModel().obs;
}
