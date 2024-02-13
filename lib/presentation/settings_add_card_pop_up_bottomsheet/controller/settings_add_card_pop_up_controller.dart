import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/presentation/settings_add_card_pop_up_bottomsheet/models/settings_add_card_pop_up_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SettingsAddCardPopUpBottomsheet.
///
/// This class manages the state of the SettingsAddCardPopUpBottomsheet, including the
/// current settingsAddCardPopUpModelObj
class SettingsAddCardPopUpController extends GetxController {
  TextEditingController requiredThreeController = TextEditingController();

  TextEditingController cardNumberController = TextEditingController();

  TextEditingController requiredThreeController1 = TextEditingController();

  TextEditingController cvvController = TextEditingController();

  Rx<SettingsAddCardPopUpModel> settingsAddCardPopUpModelObj =
      SettingsAddCardPopUpModel().obs;

  @override
  void onClose() {
    super.onClose();
    requiredThreeController.dispose();
    cardNumberController.dispose();
    requiredThreeController1.dispose();
    cvvController.dispose();
  }
}
