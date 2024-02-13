import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/presentation/payment_in_progress_dialog/models/payment_in_progress_model.dart';

/// A controller class for the PaymentInProgressDialog.
///
/// This class manages the state of the PaymentInProgressDialog, including the
/// current paymentInProgressModelObj
class PaymentInProgressController extends GetxController {
  Rx<PaymentInProgressModel> paymentInProgressModelObj =
      PaymentInProgressModel().obs;
}
