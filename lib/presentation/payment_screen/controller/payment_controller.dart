import 'package:amit_s_application2/core/app_export.dart';import 'package:amit_s_application2/presentation/payment_screen/models/payment_model.dart';/// A controller class for the PaymentScreen.
///
/// This class manages the state of the PaymentScreen, including the
/// current paymentModelObj
class PaymentController extends GetxController {Rx<PaymentModel> paymentModelObj = PaymentModel().obs;

Rx<String> radioGroup = "".obs;

Rx<String> radioGroup1 = "".obs;

 }
