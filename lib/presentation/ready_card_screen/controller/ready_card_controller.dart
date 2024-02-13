import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/presentation/ready_card_screen/models/ready_card_model.dart';

/// A controller class for the ReadyCardScreen.
///
/// This class manages the state of the ReadyCardScreen, including the
/// current readyCardModelObj
class ReadyCardController extends GetxController {
  Rx<ReadyCardModel> readyCardModelObj = ReadyCardModel().obs;
}
