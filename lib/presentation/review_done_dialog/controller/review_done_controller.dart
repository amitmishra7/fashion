import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/presentation/review_done_dialog/models/review_done_model.dart';

/// A controller class for the ReviewDoneDialog.
///
/// This class manages the state of the ReviewDoneDialog, including the
/// current reviewDoneModelObj
class ReviewDoneController extends GetxController {
  Rx<ReviewDoneModel> reviewDoneModelObj = ReviewDoneModel().obs;
}
