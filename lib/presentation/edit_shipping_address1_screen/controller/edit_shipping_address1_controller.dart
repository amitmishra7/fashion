import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/presentation/edit_shipping_address1_screen/models/edit_shipping_address1_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the EditShippingAddress1Screen.
///
/// This class manages the state of the EditShippingAddress1Screen, including the
/// current editShippingAddress1ModelObj
class EditShippingAddress1Controller extends GetxController {
  TextEditingController addressController = TextEditingController();

  TextEditingController cityController = TextEditingController();

  Rx<EditShippingAddress1Model> editShippingAddress1ModelObj =
      EditShippingAddress1Model().obs;

  @override
  void onClose() {
    super.onClose();
    addressController.dispose();
    cityController.dispose();
  }
}
