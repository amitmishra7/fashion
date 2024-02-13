import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/presentation/settings_profile_screen/models/settings_profile_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SettingsProfileScreen.
///
/// This class manages the state of the SettingsProfileScreen, including the
/// current settingsProfileModelObj
class SettingsProfileController extends GetxController {
  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<SettingsProfileModel> settingsProfileModelObj = SettingsProfileModel().obs;

  @override
  void onClose() {
    super.onClose();
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
  }
}
