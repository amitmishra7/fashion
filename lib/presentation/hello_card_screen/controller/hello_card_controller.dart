import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/presentation/hello_card_screen/models/hello_card_model.dart';

/// A controller class for the HelloCardScreen.
///
/// This class manages the state of the HelloCardScreen, including the
/// current helloCardModelObj
class HelloCardController extends GetxController {
  Rx<HelloCardModel> helloCardModelObj = HelloCardModel().obs;
}
