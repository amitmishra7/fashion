import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/presentation/maximum_attempts_dialog/models/maximum_attempts_model.dart';

/// A controller class for the MaximumAttemptsDialog.
///
/// This class manages the state of the MaximumAttemptsDialog, including the
/// current maximumAttemptsModelObj
class MaximumAttemptsController extends GetxController {
  Rx<MaximumAttemptsModel> maximumAttemptsModelObj = MaximumAttemptsModel().obs;
}
