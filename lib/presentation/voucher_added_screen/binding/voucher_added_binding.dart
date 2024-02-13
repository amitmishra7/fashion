import '../controller/voucher_added_controller.dart';
import 'package:get/get.dart';

/// A binding class for the VoucherAddedScreen.
///
/// This class ensures that the VoucherAddedController is created when the
/// VoucherAddedScreen is first loaded.
class VoucherAddedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VoucherAddedController());
  }
}
