import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/presentation/choose_payment_method_1_card_bottomsheet/models/choose_payment_method_1_card_model.dart';

/// A controller class for the ChoosePaymentMethod1CardBottomsheet.
///
/// This class manages the state of the ChoosePaymentMethod1CardBottomsheet, including the
/// current choosePaymentMethod1CardModelObj
class ChoosePaymentMethod1CardController extends GetxController {
  Rx<ChoosePaymentMethod1CardModel> choosePaymentMethod1CardModelObj =
      ChoosePaymentMethod1CardModel().obs;

  Rx<String> radioGroup = "".obs;
}
