import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/presentation/edit_card_bottomsheet/models/edit_card_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the EditCardBottomsheet.
///
/// This class manages the state of the EditCardBottomsheet, including the
/// current editCardModelObj
class EditCardController extends GetxController {
  TextEditingController rominavalueController = TextEditingController();

  TextEditingController cardNumberController = TextEditingController();

  TextEditingController cvvController = TextEditingController();

  Rx<EditCardModel> editCardModelObj = EditCardModel().obs;

  @override
  void onClose() {
    super.onClose();
    rominavalueController.dispose();
    cardNumberController.dispose();
    cvvController.dispose();
  }
}
