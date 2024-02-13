import '../controller/profile_voucher_reminder_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ProfileVoucherReminderScreen.
///
/// This class ensures that the ProfileVoucherReminderController is created when the
/// ProfileVoucherReminderScreen is first loaded.
class ProfileVoucherReminderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileVoucherReminderController());
  }
}
