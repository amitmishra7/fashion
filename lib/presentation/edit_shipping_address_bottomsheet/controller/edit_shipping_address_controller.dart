import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/presentation/edit_shipping_address_bottomsheet/models/edit_shipping_address_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the EditShippingAddressBottomsheet.
///
/// This class manages the state of the EditShippingAddressBottomsheet, including the
/// current editShippingAddressModelObj
class EditShippingAddressController extends GetxController {
  TextEditingController addressController = TextEditingController();

  TextEditingController cityController = TextEditingController();

  TextEditingController zipcodeController = TextEditingController();

  Rx<EditShippingAddressModel> editShippingAddressModelObj =
      EditShippingAddressModel().obs;

  @override
  void onClose() {
    super.onClose();
    addressController.dispose();
    cityController.dispose();
    zipcodeController.dispose();
  }
}
