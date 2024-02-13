import 'package:amit_s_application2/core/app_export.dart';import 'package:amit_s_application2/presentation/settings_add_card_screen/models/settings_add_card_model.dart';/// A controller class for the SettingsAddCardScreen.
///
/// This class manages the state of the SettingsAddCardScreen, including the
/// current settingsAddCardModelObj
class SettingsAddCardController extends GetxController {Rx<SettingsAddCardModel> settingsAddCardModelObj = SettingsAddCardModel().obs;

Rx<int> sliderIndex = 0.obs;

 }
