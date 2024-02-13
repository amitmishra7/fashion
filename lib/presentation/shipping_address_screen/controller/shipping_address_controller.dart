import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/presentation/shipping_address_screen/models/shipping_address_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ShippingAddressScreen.
///
/// This class manages the state of the ShippingAddressScreen, including the
/// current shippingAddressModelObj
class ShippingAddressController extends GetxController {
  TextEditingController addressController = TextEditingController();

  TextEditingController cityController = TextEditingController();

  TextEditingController requiredThreeController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  Rx<ShippingAddressModel> shippingAddressModelObj = ShippingAddressModel().obs;

  @override
  void onClose() {
    super.onClose();
    addressController.dispose();
    cityController.dispose();
    requiredThreeController.dispose();
    phoneNumberController.dispose();
  }
}
