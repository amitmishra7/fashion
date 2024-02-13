import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/presentation/couldn_t_proceed_payment_dialog/models/couldn_t_proceed_payment_model.dart';

/// A controller class for the CouldnTProceedPaymentDialog.
///
/// This class manages the state of the CouldnTProceedPaymentDialog, including the
/// current couldnTProceedPaymentModelObj
class CouldnTProceedPaymentController extends GetxController {
  Rx<CouldnTProceedPaymentModel> couldnTProceedPaymentModelObj =
      CouldnTProceedPaymentModel().obs;
}
