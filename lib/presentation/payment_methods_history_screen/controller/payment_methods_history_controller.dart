import 'package:amit_s_application2/core/app_export.dart';import 'package:amit_s_application2/presentation/payment_methods_history_screen/models/payment_methods_history_model.dart';/// A controller class for the PaymentMethodsHistoryScreen.
///
/// This class manages the state of the PaymentMethodsHistoryScreen, including the
/// current paymentMethodsHistoryModelObj
class PaymentMethodsHistoryController extends GetxController {Rx<PaymentMethodsHistoryModel> paymentMethodsHistoryModelObj = PaymentMethodsHistoryModel().obs;

 }
