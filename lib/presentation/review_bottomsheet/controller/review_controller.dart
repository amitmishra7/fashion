import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/presentation/review_bottomsheet/models/review_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ReviewBottomsheet.
///
/// This class manages the state of the ReviewBottomsheet, including the
/// current reviewModelObj
class ReviewController extends GetxController {
  TextEditingController commentController = TextEditingController();

  Rx<ReviewModel> reviewModelObj = ReviewModel().obs;

  @override
  void onClose() {
    super.onClose();
    commentController.dispose();
  }
}
