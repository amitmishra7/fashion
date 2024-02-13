import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/presentation/wrong_password_screen/models/wrong_password_model.dart';

/// A controller class for the WrongPasswordScreen.
///
/// This class manages the state of the WrongPasswordScreen, including the
/// current wrongPasswordModelObj
class WrongPasswordController extends GetxController {
  Rx<WrongPasswordModel> wrongPasswordModelObj = WrongPasswordModel().obs;
}
