import 'package:amit_s_application2/core/app_export.dart';import 'package:amit_s_application2/presentation/voucher_added_screen/models/voucher_added_model.dart';/// A controller class for the VoucherAddedScreen.
///
/// This class manages the state of the VoucherAddedScreen, including the
/// current voucherAddedModelObj
class VoucherAddedController extends GetxController {Rx<VoucherAddedModel> voucherAddedModelObj = VoucherAddedModel().obs;

Rx<String> radioGroup = "".obs;

Rx<String> radioGroup1 = "".obs;

 }
