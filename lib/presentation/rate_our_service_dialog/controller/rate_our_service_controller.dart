import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/presentation/rate_our_service_dialog/models/rate_our_service_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the RateOurServiceDialog.
///
/// This class manages the state of the RateOurServiceDialog, including the
/// current rateOurServiceModelObj
class RateOurServiceController extends GetxController {
  TextEditingController commentController = TextEditingController();

  Rx<RateOurServiceModel> rateOurServiceModelObj = RateOurServiceModel().obs;

  @override
  void onClose() {
    super.onClose();
    commentController.dispose();
  }
}
