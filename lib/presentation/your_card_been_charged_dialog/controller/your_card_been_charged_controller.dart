import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/presentation/your_card_been_charged_dialog/models/your_card_been_charged_model.dart';

/// A controller class for the YourCardBeenChargedDialog.
///
/// This class manages the state of the YourCardBeenChargedDialog, including the
/// current yourCardBeenChargedModelObj
class YourCardBeenChargedController extends GetxController {
  Rx<YourCardBeenChargedModel> yourCardBeenChargedModelObj =
      YourCardBeenChargedModel().obs;
}
