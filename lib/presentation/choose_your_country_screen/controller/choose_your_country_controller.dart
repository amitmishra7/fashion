import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/presentation/choose_your_country_screen/models/choose_your_country_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ChooseYourCountryScreen.
///
/// This class manages the state of the ChooseYourCountryScreen, including the
/// current chooseYourCountryModelObj
class ChooseYourCountryController extends GetxController {
  TextEditingController countryController = TextEditingController();

  Rx<ChooseYourCountryModel> chooseYourCountryModelObj =
      ChooseYourCountryModel().obs;

  @override
  void onClose() {
    super.onClose();
    countryController.dispose();
  }
}
