import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/presentation/deleting_account_dialog/models/deleting_account_model.dart';

/// A controller class for the DeletingAccountDialog.
///
/// This class manages the state of the DeletingAccountDialog, including the
/// current deletingAccountModelObj
class DeletingAccountController extends GetxController {
  Rx<DeletingAccountModel> deletingAccountModelObj = DeletingAccountModel().obs;
}
