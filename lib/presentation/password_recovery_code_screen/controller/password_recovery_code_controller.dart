import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/presentation/password_recovery_code_screen/models/password_recovery_code_model.dart';

/// A controller class for the PasswordRecoveryCodeScreen.
///
/// This class manages the state of the PasswordRecoveryCodeScreen, including the
/// current passwordRecoveryCodeModelObj
class PasswordRecoveryCodeController extends GetxController {
  Rx<PasswordRecoveryCodeModel> passwordRecoveryCodeModelObj =
      PasswordRecoveryCodeModel().obs;
}
