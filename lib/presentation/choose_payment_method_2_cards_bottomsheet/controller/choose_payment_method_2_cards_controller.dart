import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/presentation/choose_payment_method_2_cards_bottomsheet/models/choose_payment_method_2_cards_model.dart';

/// A controller class for the ChoosePaymentMethod2CardsBottomsheet.
///
/// This class manages the state of the ChoosePaymentMethod2CardsBottomsheet, including the
/// current choosePaymentMethod2CardsModelObj
class ChoosePaymentMethod2CardsController extends GetxController {
  Rx<ChoosePaymentMethod2CardsModel> choosePaymentMethod2CardsModelObj =
      ChoosePaymentMethod2CardsModel().obs;

  Rx<String> radioGroup = "".obs;
}
