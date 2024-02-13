import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/presentation/create_account_screen/models/create_account_model.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/material.dart';

/// A controller class for the CreateAccountScreen.
///
/// This class manages the state of the CreateAccountScreen, including the
/// current createAccountModelObj
class CreateAccountController extends GetxController {
  TextEditingController emailSectionController = TextEditingController();

  TextEditingController passwordSectionController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  Rx<CreateAccountModel> createAccountModelObj = CreateAccountModel().obs;

  Rx<bool> isShowPassword = true.obs;

  Rx<Country> selectedCountry =
      CountryPickerUtils.getCountryByPhoneCode('91').obs;

  @override
  void onClose() {
    super.onClose();
    emailSectionController.dispose();
    passwordSectionController.dispose();
    phoneNumberController.dispose();
  }
}
