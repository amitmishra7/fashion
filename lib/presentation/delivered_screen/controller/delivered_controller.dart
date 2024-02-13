import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/presentation/delivered_screen/models/delivered_model.dart';

/// A controller class for the DeliveredScreen.
///
/// This class manages the state of the DeliveredScreen, including the
/// current deliveredModelObj
class DeliveredController extends GetxController {
  Rx<DeliveredModel> deliveredModelObj = DeliveredModel().obs;
}
