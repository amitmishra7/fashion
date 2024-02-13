import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/presentation/settings_full_screen/models/settings_full_model.dart';

/// A controller class for the SettingsFullScreen.
///
/// This class manages the state of the SettingsFullScreen, including the
/// current settingsFullModelObj
class SettingsFullController extends GetxController {
  Rx<SettingsFullModel> settingsFullModelObj = SettingsFullModel().obs;
}
